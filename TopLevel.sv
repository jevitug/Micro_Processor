// Create Date:    2018.04.05
// Design Name:    BasicProcessor
// Module Name:    TopLevel
// CSE141L
// partial only
module TopLevel(		   // you will have the same 3 ports
    input     start,	   // init/reset, active high
    input     CLK,		   // clock -- posedge used inside design
    output    halt		   // done flag from DUT
    );

    wire [ 11:0] 	PC_1;            // program count
    wire [ 8:0] 	Instruction;   // our 9-bit opcodev#15ns ack = 1'b1;
    wire [ 7:0] 	ReadA, ReadB, ReadC;  // reg_file outputs
    wire [ 7:0] 	InA, InB, InC; 	   // ALU operand inputs
	 wire [ 7:0] 	ALU_out;       // ALU result
    wire [ 7:0] 	regWriteValue, // data in to reg file
						memWriteValue, // data in to data_memory
						Mem_Out;	   // data out from data_memory
    //wire        	MEM_READ,	   // data_memory read enable
	 wire				MEM_WRITE,	   // data_memory write enable
						reg_wr_en,	   // reg_file write enable
						branch_en;	   // to program counter: branch enable
    logic[15:0] 	cycle_ct;	   // standalone; NOT PC!
	 logic [11:0]	branch_target;
	 logic [7:0]	func;

	 logic[7:0]		branch_lookup_val;
    // Fetch = Program Counter + Instruction ROM
    // Program Counter
    
	 
	 LUT LUT1(
		.addr(branch_lookup_val[7:4]),
		.Target(branch_target)
    );
	 
	 PC PC1 (
    .init       	(start)	,
    .halt              		,  // SystemVerilg shorthand for .halt(halt),
    .branch_en	       		,  // branch enable
	 .target			(branch_target),
    .CLK        	(CLK) 	,  // (CLK) is required in Verilog, optional in SystemVerilog
    .PC				(PC_1)      // program count = index to instruction memory
    );

    // Control decoder
    Ctrl Ctrl1 (
    .Instruction(Instruction),    // from instr_ROM
    .branch_en(branch_en),	 // to PC
	 .OUT_ALU(ALU_out[0])
    );
    // instruction ROM
    InstROM instr_ROM1(
    .InstAddress   (PC_1),
    .InstOut       (Instruction)
    );

	
    wire load_inst = Instruction[8:4]==5'b10001;  // calls out load specially
	 assign reg_wr_en = (Instruction[8:4] == 5'b10010
							|| Instruction[8:4] == 5'b11010 
							|| Instruction[8:4] == 5'b11011) ? 0 : 1; //write to register for all operations except store, and branches
	 
	 wire [3:0] waddr;
	 assign waddr = 	(Instruction[8] == 1'b0) 			? 4'b1111	: 										//load_func writes to func reg
							(Instruction[8:4] == 5'b11110)	? 4'b1110 	: 										//set branch writes to branch reg
							(Instruction[8:3] == 6'b100001)	? func[7:4] :										//mov R writes to the register in the first 4 bits
							{1'b0,Instruction[2:0]};																	//Else use the output value
							
	 assign regWriteValue = (load_inst == 1)						? Mem_Out 							: 		//If Loading, writes Mem_Out
									(Instruction[8] == 0) 				? Instruction[7:0] 				: 		//load_func writes value stored in remaining 8 bits
									(Instruction[8:4] == 5'b11110 || 
									 Instruction[8:3] == 6'b100000) 	? func 								:		//set branch/mov I writes value stored in func
									(Instruction[8:3] == 6'b100001)	? ReadB								:		//Mov R
									ALU_out	;  // 2:1 switch into reg_file
	 wire [3:0] raddrA = (Instruction[8:3] == 6'b100110) ? {2'b00,func[7:6]} : func[7:4]; 			//if xor reduction provide proper inputs
 

    // reg file
    reg_file #(.W(8),.D(4)) reg_file1 (
    .CLK    				  ,
    .write_en  (reg_wr_en)    ,
    .raddrA    (raddrA),         //concatenate with 0 to give us 4 bits
    .raddrB    (func[3:0]),
	 .raddrC    ({1'b0,Instruction[2:0]}),
    .waddr     (waddr), 	  // mux above
    .data_in   (regWriteValue) ,
    .data_outA (ReadA),
    .data_outB (ReadB),
	 .data_outC (ReadC),
	 .data_outBranchTarget(branch_lookup_val),
	 .data_outLoadFunc(func)
    );
    // one pointer, two adjacent read accesses: (optional approach)
    //	.raddrA ({Instruction[5:3],1'b0});
    //	.raddrB ({Instruction[5:3],1'b1});

    assign InA = 	(Instruction[8] == 1 && Instruction[3] == 0) ? func : ReadA;		 //if immediate operation, InA will be the immediate stored in func, else it will be the reg from ReadB				          // connect RF out to ALU in
    assign InB = ReadB;
	 assign InC = ReadC;
    assign MEM_WRITE = (Instruction[8:4] == 5'b10010);       // mem_store command
	 
    
	 ALU ALU1  (
    .INPUTA  (InA),
    .INPUTB  ((Instruction[8:3] == 6'b100110) ? ReadA : InB),
	 .INPUTC  (InC),
	 .immediate_reg(Instruction[3]),
    .OP      (Instruction[7:4]),
    .OUT     (ALU_out)//regWriteValue),
    );
	 
	 assign memWriteValue = ReadC;			//Store at immediate loc vs store by reg loc
	 
    data_mem data_mem1(
    .DataAddress  ((Instruction[3] == 1) ? ReadA : func)    ,
    .ReadMem      (load_inst),          //(MEM_READ) ,   always enabled
    .WriteMem     (MEM_WRITE),
    .DataIn       (memWriteValue),
    .DataOut      (Mem_Out)  ,
    .CLK 		  		     ,
    .reset		  (1'b0)
    );

    // count number of instructions executed
    always_ff @(posedge CLK)
		if (start == 1)	   // if(start)
		cycle_ct <= 0;
    else if(halt == 0)   // if(!halt)
		cycle_ct <= cycle_ct+16'b1;

		/*
    always_ff @(posedge CLK)    // carry/shift in/out register
		if(sc_clr)				// tie sc_clr low if this function not needed
			SC_IN <= 0;             // clear/reset the carry (optional)
    else if(sc_en)			// tie sc_en high if carry always updates on every clock cycle (no holdovers)
		SC_IN <= SC_OUT;        // update the carry
		*/

endmodule
