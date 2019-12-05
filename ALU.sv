// Create Date:    2016.10.15
// Module Name:    ALU
// Project Name:   CSE141L
//
// Revision 2018.01.27
// Additional Comments:
//   combinational (unclocked) ALU
import definitions::*;			  // includes package "definitions"
module ALU(
	input [ 7:0] 			INPUTA,      	  // data inputs
								INPUTB,
								INPUTC,
	
	input						immediate_reg	,	//immediate(0) or register (1)
	input [ 3:0] 			OP,				  // ALU opcode, part of microcode
	output logic [7:0] 	OUT		  // or:  output reg [7:0] OUT,
   );

    op_mne op_mnemonic;			  // type enum: used for convenient waveform viewing

	 reg val;
	 integer signed i;
	 reg [7:0] inputA_fixed;

    always_comb begin
        OUT = 0;            // default -- result out
		  val = 0;
		  i = 0;
		  inputA_fixed = ((~immediate_reg) ? {4'b0000,INPUTA[7:4]} : INPUTA);
        case(OP)
            kXOR : begin                                           
					if (immediate_reg == 0) begin //XOR REDUCTION LOGIC
						
						for (i = 7; i >= 0; i = i - 1) begin
							if (i <= INPUTA[5:3] && i >= INPUTA[2:0]) begin
								val = val ^ INPUTB[i];
							end
						end
						
						OUT = {7'b0000000,val};
					end 
					else
						OUT = INPUTB ^ INPUTA;
            end
				kbSR 	: OUT = INPUTB >> inputA_fixed;
				kBEQ	: OUT = (inputA_fixed == INPUTB) ? 8'b00000001 : 8'b00000000;
				kBNEQ	: OUT = (inputA_fixed != INPUTB) ? 8'b00000001 : 8'b00000000;
				kbSL 	: OUT = INPUTB << inputA_fixed;
				ADD	: OUT = INPUTB + inputA_fixed;
				MULT	: OUT = INPUTB * inputA_fixed;
				DIV	: OUT = INPUTB / inputA_fixed;
				MOD 	: OUT = INPUTB % inputA_fixed;
				getBit: OUT = {7'b0000000,INPUTB[inputA_fixed]};
				setBit: begin
							OUT = INPUTC;
							OUT[inputA_fixed] = INPUTB[0];
						  end
            default: OUT = 0;						       // no-op, zero out
        endcase

//$display("ALU Out %d \n",OUT);
op_mnemonic = op_mne'(OP);					  // displays operation name in waveform viewer
end
endmodule 