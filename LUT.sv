// CSE141L
// possible lookup table for PC target
// leverage a few-bit pointer to a wider number
module LUT(
    input[4:0] addr,
    output logic[11:0] Target
    );
	 int lines_in_p1 = 150;
	 int lines_in_p1p2 = 622+21;
    always_comb
	
    case(addr)		   //-16'd30;
        5'b00000:   	Target = 4; 									//L0
        5'b00001:	 	Target = 4 +lines_in_p1;					//L1
        5'b00010:	 	Target = 201 +lines_in_p1;					//L2
        5'b00011:	 	Target = 231 +lines_in_p1;					//L3
        5'b00100:   	Target = 446 +lines_in_p1; 				//L4
        5'b00101:	 	Target = 450 +lines_in_p1;					//L5
        5'b00110:	 	Target = 243 +lines_in_p1;					//L6
        5'b00111:	 	Target = 42 +lines_in_p1p2;				//L7
        5'b01000:   	Target = 56 +lines_in_p1p2; 				//L8
        5'b01001:	 	Target = 70 +lines_in_p1p2;				//L9
        5'b01010:	 	Target = 82 +lines_in_p1p2;				//L10
        5'b01011:	 	Target = 98 +lines_in_p1p2;				//L11
        5'b01100:   	Target = 130 +lines_in_p1p2;				//L12
        5'b01101:	 	Target = 144 +lines_in_p1p2;				//L13
        5'b01110:	 	Target = 158 +lines_in_p1p2;				//L14
        5'b01111:	 	Target = 172 +lines_in_p1p2;				//L15
		  5'b10000:	 	Target = 188 +lines_in_p1p2;				//L16
		  5'b10001:	 	Target = 22 +lines_in_p1p2;				//L17
        default: 	Target = 0;							//Default
    endcase

endmodule
