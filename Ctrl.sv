// CSE141L
import definitions::*;
// control decoder (combinational, not clocked)
// inputs from instrROM, ALU flags
// outputs to program_counter (fetch unit)
module Ctrl (
    input[ 8:0] 		Instruction,	   // machine code
	 input 				OUT_ALU,				//comparison 1 if Equal and BEQ, 1 if Not Equal and BNEQ
    output 	logic	branch_en
    );
    // jump on right shift that generates a zero
	always_comb begin
		if (Instruction[8] == 1 && OUT_ALU == 1 &&(Instruction[7:4] ==  kBEQ || Instruction[7:4] == kBNEQ)) begin
				branch_en = 1;
		end
		else
			branch_en = 0;
	end

    // branch every time ALU result LSB = 0 (even)
endmodule

// ARM instructions sequence
//				cmp r5, r4
//				beq jump_label
