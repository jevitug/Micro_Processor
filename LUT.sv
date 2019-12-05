// CSE141L
// possible lookup table for PC target
// leverage a few-bit pointer to a wider number
module LUT(
    input[3:0] addr,
    output logic[11:0] Target
    );
	 int lines_in_p1 = 150;
	 int lines_in_p1p2 = 620;
    always_comb
	
    case(addr)		   //-16'd30;
        4'b0000:   	Target = 4; 					//L0
        4'b0001:	 	Target = 4 +lines_in_p1;		//L1
        4'b0010:	 	Target = 201 +lines_in_p1;					//L2
        4'b0011:	 	Target = 231 +lines_in_p1;					//L3
        4'b0100:   	Target = 446 +lines_in_p1; 				//L4
        4'b0101:	 	Target = 450 +lines_in_p1;					//L5
        4'b0110:	 	Target = 243 +lines_in_p1;					//L6
        4'b0111:	 	Target = 239 +lines_in_p1;					//L7
        4'b1000:   	Target = 7 +lines_in_p1p2; 				//L8
        4'b1001:	 	Target = 20 +lines_in_p1p2;				//L9
        4'b1010:	 	Target = 240 +lines_in_p1p2;				//L10
        4'b1011:	 	Target = 240 +lines_in_p1p2;				//L11
        4'b1100:   	Target = 7 +lines_in_p1p2;					//L12
        4'b1101:	 	Target = 20 +lines_in_p1p2;				//L13
        4'b1110:	 	Target = 240 +lines_in_p1p2;				//L14
        4'b1111:	 	Target = 240 +lines_in_p1p2;				//L15
        default: 	Target = 0;							//Default
    endcase

endmodule
