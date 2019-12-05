// CSE141L
// program counter
// accepts branch and jump instructions
// default = increment by 1
// issues halt when PC reaches 63
module PC(
	input 					init,
								branch_en,				
								CLK,
	input [11:0] 			target,
	output logic 			halt,
	output logic[ 11:0] 	PC);

	always @(posedge CLK)
	if (init && halt) begin
		halt <= 0;
	end
	else if(init) begin
		PC <= 0;
		halt <= 0;
	end
	else begin
		if(PC == 150 || PC == 622) begin
			halt <= 1;		 // just a randomly chosen numbe
			PC <= PC + 1;
		end
		else if (PC > 2000)
			halt <= 1;
		else if(branch_en)
			PC <= target;
		else
			PC <= PC + 1;	     // default == increment by 1
	end
endmodule
