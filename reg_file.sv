// Create Date:    2017.01.25
// Design Name:    CSE141L
// Module Name:    reg_file
//
// Additional Comments: 					  $clog2

module reg_file #(parameter W=8, D=4)(		 // W = data path width; D = pointer width
    input           CLK,
    write_en,
    input  [ D-1:0] 	 raddrA,
							 raddrB,
							 raddrC,
							 waddr,
    input  [ W-1:0] data_in,
    output [ W-1:0] data_outA,
    output logic [W-1:0] data_outB,
    output logic [W-1:0] data_outC,
	 output logic[7:0] data_outBranchTarget,
	 output logic[7:0] data_outLoadFunc
    );

    // W bits wide [W-1:0] and 2**4 registers deep
    logic [W-1:0] registers[2**D];	  // or just registers[16] if we know D=4 always

    // combinational reads w/ blanking of address 0
    assign      data_outA = registers[raddrA];	 					
    always_comb data_outB = registers[raddrB];               
    always_comb data_outC = registers[raddrC];               
	 always_comb data_outBranchTarget = registers[4'b1110];
	 always_comb data_outLoadFunc = registers[4'b1111];

    // sequential (clocked) writes
    always_ff @ (posedge CLK)
    if (write_en)	                             // && waddr requires nonzero pointer address
    // if (write_en) if want to be able to write to address 0, as well
    registers[waddr] <= data_in;

endmodule
