//This file defines the parameters used in the alu
// CSE141L
package definitions;

    // Instruction map
	 const logic [3:0]kMov  = 4'b0000;
    const logic [3:0]kLD  = 4'b0001;
    const logic [3:0]kSTORE  = 4'b0010;
    const logic [3:0]kXOR  = 4'b0011;
    const logic [3:0]kbSR  = 4'b0100;
    const logic [3:0]kbSL  = 4'b0101;
    const logic [3:0]kADD  = 4'b0110;
	 const logic [3:0]kMULT  = 4'b0111;
	 const logic [3:0]kDIV  = 4'b1000;
    const logic [3:0]kMOD  = 4'b1001;
    const logic [3:0]kBEQ  = 4'b1010;
    const logic [3:0]kBNEQ  = 4'b1011;
    const logic [3:0]kgetBit  = 4'b1100;
    const logic [3:0]ksetBit  = 4'b1101;
    const logic [3:0]ksetBranch  = 4'b1110;
    // enum names will appear in timing diagram
    typedef enum logic[3:0] {
	 Mov, 	LD, 		STORE, 	XOR,
    bSR, 	bSL,		ADD,		MULT,
	 DIV,		MOD,		BEQ, 		BNEQ,
    getBit,	setBit, 	setBranch} op_mne;
    // note: kADD is of type logic[3:0] (3-bit binary)
    //   ADD is of type enum -- equiv., but watch casting
    //   see ALU.sv for how to handle this
endpackage // definitions
