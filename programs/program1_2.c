//BAD_OPERATION_BADBAD //Orr Toledano and Jared Vitug
000000001 //Load_func 1
100000010 //Mov I R2
000000000 //Load_func 0
100000011 //Mov I R3
//l0:_BADBAD //L0:
000100000 //Load_func R2
100011000 //Ld R R0
000110000 //Load_func R3
100011001 //Ld R R1
000100000 //Load_func 2, R0
111000100 //getBit I R4
000000000 //Load_func 0, R0
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
001100001 //Load_func 6, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
001000001 //Load_func 4, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000110001 //Load_func 3, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000010001 //Load_func 1, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000000001 //Load_func 0, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000100001 //Load_func 2, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000110001 //Load_func 3, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
001010001 //Load_func 5, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
001100001 //Load_func 6, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000010000 //Load_func 1, R0
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000100000 //Load_func 2, R0
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000010000 //Load_func R0, 2, 0
100110110 //XOR I R6
001011001 //Load_func R1, 3, 1
100110111 //XOR I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
001110001 //Load_func 7, R1
111000111 //getBit I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
011010110 //Load_func R13, R6
100001000 //Mov R
000010000 //Load_func R0, 2, 0
100110110 //XOR I R6
001111100 //Load_func R1, 7, 4
100110111 //XOR I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
011000110 //Load_func R12, R6
100001000 //Mov R
001011000 //Load_func R1, 3, 0
100110111 //XOR I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
001101100 //Load_func R6, R12
100111110 //XOR R R6
001101101 //Load_func R6, R13
100111110 //XOR R R6
001100101 //Load_func R6, R5
100111110 //XOR R R6
001100100 //Load_func R6, R4
100111110 //XOR R R6
001010000 //Load_func 5, R0
101010111 //bSL I R7
001110001 //Load_func 7, R1
111000000 //getBit I R0
001000000 //Load_func 4, R0
111010111 //setBit I R7
001100001 //Load_func 6, R1
111000000 //getBit I R0
000110000 //Load_func 3, R0
111010111 //setBit I R7
001010001 //Load_func 5, R1
111000000 //getBit I R0
000100000 //Load_func 2, R0
111010111 //setBit I R7
001000001 //Load_func 4, R1
111000000 //getBit I R0
000010000 //Load_func 1, R0
111010111 //setBit I R7
000001100 //Load_func 0, R12
111010111 //setBit I R7
000000111 //Load_func R0, R7
100001000 //Mov R
000011110 //Load_func 30
100000111 //Mov I R7
001110010 //Load_func R7, R2
101101111 //Add R R7
001110000 //Load_func R7
100101000 //Store R R0
001000001 //Load_func 4, R1
101010001 //bSL I R1
001000001 //Load_func 4, R1
111000111 //getBit I R7
000110111 //Load_func 3, R7
111010001 //setBit I R1
001001101 //Load_func 4, R13
111010001 //setBit I R1
000100101 //Load_func 2, R5
111010001 //setBit I R1
000010100 //Load_func 1, R4
111010001 //setBit I R1
000000110 //Load_func 0, R6
111010001 //setBit I R1
000011110 //Load_func 30
100000111 //Mov I R7
001110011 //Load_func R7, R3
101101111 //Add R R7
001110000 //Load_func R7
100101001 //Store R R1
000100010 //Load_func 2, R2
101100010 //Add I R2
000100011 //Load_func 2, R3
101100011 //Add I R3
000000000 //Load_func L0
111100000 //setBranch
000011111 //Load_func 31
100000111 //Mov I R7
011010111 //Load_func R13, R7
100001000 //Mov R
000101101 //Load_func R2, R13
110111000 //BNEQ R
//BAD_OPERATION_BADBAD //Orr Toledano and Jared Vitug
001000001 //Load_func 65
100000010 //Mov I R2
001000000 //Load_func 64
100000011 //Mov I R3
//l1:_BADBAD //L1:
000100000 //Load_func R2
100011000 //Ld R R0
000110000 //Load_func R3
100011001 //Ld R R1
010010110 //Load_func 9, R6
101010100 //bSL I R4
101010101 //bSL I R5
101010110 //bSL I R6
001010000 //Load_func 5, R0
101000100 //bSR I R4
000110000 //Load_func 3, R0
101010101 //bSL I R5
001110001 //Load_func 7, R1
111000110 //getBit I R6
000110110 //Load_func 3, R6
111010101 //setBit I R5
001100001 //Load_func 6, R1
111000110 //getBit I R6
000100110 //Load_func 2, R6
111010101 //setBit I R5
001010001 //Load_func 5, R1
111000110 //getBit I R6
000010110 //Load_func 1, R6
111010101 //setBit I R5
000110001 //Load_func 3, R1
111000110 //getBit I R6
000000110 //Load_func 0, R6
111010101 //setBit I R5
010000000 //Load_func R8, R0
100001000 //Mov R
010010001 //Load_func R9, R1
100001000 //Mov R
000000100 //Load_func R0, R4
100001000 //Mov R
000010101 //Load_func R1, R5
100001000 //Mov R
010100100 //Load_func R10, R4
100001000 //Mov R
010110101 //Load_func R11, R5
100001000 //Mov R
//BAD_OPERATION_BADBAD //Orr Toledano and Jared Vitug
000100000 //Load_func 2, R0
111000100 //getBit I R4
000000000 //Load_func 0, R0
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
001100001 //Load_func 6, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
001000001 //Load_func 4, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000110001 //Load_func 3, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000010001 //Load_func 1, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000000001 //Load_func 0, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000100001 //Load_func 2, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000110001 //Load_func 3, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
001010001 //Load_func 5, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
001100001 //Load_func 6, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000010000 //Load_func 1, R0
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000100000 //Load_func 2, R0
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000010000 //Load_func R0, 2, 0
100110110 //XOR I R6
001011001 //Load_func R1, 3, 1
100110111 //XOR I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
001110001 //Load_func 7, R1
111000111 //getBit I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
011010110 //Load_func R13, R6
100001000 //Mov R
000010000 //Load_func R0, 2, 0
100110110 //XOR I R6
001111100 //Load_func R1, 7, 4
100110111 //XOR I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
011000110 //Load_func R12, R6
100001000 //Mov R
001011000 //Load_func R1, 3, 0
100110111 //XOR I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
001101100 //Load_func R6, R12
100111110 //XOR R R6
001101101 //Load_func R6, R13
100111110 //XOR R R6
001100101 //Load_func R6, R5
100111110 //XOR R R6
001100100 //Load_func R6, R4
100111110 //XOR R R6
001010000 //Load_func 5, R0
101010111 //bSL I R7
001110001 //Load_func 7, R1
111000000 //getBit I R0
001000000 //Load_func 4, R0
111010111 //setBit I R7
001100001 //Load_func 6, R1
111000000 //getBit I R0
000110000 //Load_func 3, R0
111010111 //setBit I R7
001010001 //Load_func 5, R1
111000000 //getBit I R0
000100000 //Load_func 2, R0
111010111 //setBit I R7
001000001 //Load_func 4, R1
111000000 //getBit I R0
000010000 //Load_func 1, R0
111010111 //setBit I R7
000001100 //Load_func 0, R12
111010111 //setBit I R7
000000111 //Load_func R0, R7
100001000 //Mov R
001000001 //Load_func 4, R1
101010001 //bSL I R1
001000001 //Load_func 4, R1
111000111 //getBit I R7
000110111 //Load_func 3, R7
111010001 //setBit I R1
001001101 //Load_func 4, R13
111010001 //setBit I R1
000100101 //Load_func 2, R5
111010001 //setBit I R1
000010100 //Load_func 1, R4
111010001 //setBit I R1
000000110 //Load_func 0, R6
111010001 //setBit I R1
000001000 //Load_func R0, R8
100111100 //XOR R R4
000011001 //Load_func R1, R9
100111101 //XOR R R5
010010110 //Load_func 9, R6
101010110 //bSL I R6
101010111 //bSL I R7
000110100 //Load_func 3, R4
111010110 //setBit I R6
001000101 //Load_func R4, R5
100001000 //Mov R
001000100 //Load_func 4, R4
101000100 //bSR I R4
000100100 //Load_func 2, R4
111010110 //setBit I R6
001000101 //Load_func R4, R5
100001000 //Mov R
000100100 //Load_func 2, R4
101000100 //bSR I R4
000010100 //Load_func 1, R4
111010110 //setBit I R6
001000101 //Load_func R4, R5
100001000 //Mov R
000010100 //Load_func 1, R4
101000100 //bSR I R4
000000100 //Load_func 0, R4
111010110 //setBit I R6
000100000 //Load_func L2
111100000 //setBranch
000000110 //Load_func 0, R6
110110000 //BNEQ I
001000000 //Load_func L4
111100000 //setBranch
000000101 //Load_func 0, R5
111000100 //getBit I R4
000000100 //Load_func 0, R4
110100000 //BEQ I
000000000 //Load_func 0
100000110 //Mov I R6
//l2:_BADBAD //L2:
000000000 //Load_func 0
100000111 //Mov I R7
001110110 //Load_func R7, R6
101101110 //Add R R6
010000110 //Load_func 8, R6
110000111 //Div I R7
000110000 //Load_func L3
111100000 //SetBranch
000000111 //Load_func 0, R7
110100000 //BEQ I
010000110 //Load_func 8, R6
110010110 //Mod I R6
001101000 //Load_func R6, R8
111001111 //getBit R R7
000000001 //Load_func 1
100000100 //Mov I R4
001000111 //Load_func R4, R7
100111111 //XOR R R7
001001000 //Load_func R4, R8
100001000 //Mov R
001100111 //Load_func R6, R7
111011100 //setBit R R4
010000100 //Load_func R8, R4
100001000 //Mov R
000000000 //Load_func 0
100000100 //Mov I R4
001100000 //Load_func L6
111100000 //setBranch
000000100 //Load_func 0, R4
110100000 //BEQ I
//l3:_BADBAD //L3:
001101001 //Load_func R6, R9
111001111 //getBit R R7
000000001 //Load_func 1
100000100 //Mov I R4
001000111 //Load_func R4, R7
100111111 //XOR R R7
001001001 //Load_func R4, R9
100001000 //Mov R
001100111 //Load_func R6, R7
111011100 //setBit R R4
010010100 //Load_func R9, R4
100001000 //Mov R
//l6:_BADBAD //L6:
000001000 //Load_func R0, R8
100001000 //Mov R
000011001 //Load_func R1, R9
100001000 //Mov R
010010110 //Load_func 9, R6
101010100 //bSL I R4
101010101 //bSL I R5
101010110 //bSL I R6
001010000 //Load_func 5, R0
101000100 //bSR I R4
000110000 //Load_func 3, R0
101010101 //bSL I R5
001110001 //Load_func 7, R1
111000110 //getBit I R6
000110110 //Load_func 3, R6
111010101 //setBit I R5
001100001 //Load_func 6, R1
111000110 //getBit I R6
000100110 //Load_func 2, R6
111010101 //setBit I R5
001010001 //Load_func 5, R1
111000110 //getBit I R6
000010110 //Load_func 1, R6
111010101 //setBit I R5
000110001 //Load_func 3, R1
111000110 //getBit I R6
000000110 //Load_func 0, R6
111010101 //setBit I R5
000000100 //Load_func R0, R4
100001000 //Mov R
000010101 //Load_func R1, R5
100001000 //Mov R
010100100 //Load_func R10, R4
100001000 //Mov R
010110101 //Load_func R11, R5
100001000 //Mov R
//BAD_OPERATION_BADBAD //Orr Toledano and Jared Vitug
000100000 //Load_func 2, R0
111000100 //getBit I R4
000000000 //Load_func 0, R0
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
001100001 //Load_func 6, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
001000001 //Load_func 4, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000110001 //Load_func 3, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000010001 //Load_func 1, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000000001 //Load_func 0, R1
111000101 //getBit I R5
001000101 //Load_func R4, R5
100111100 //XOR R R4
000100001 //Load_func 2, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000110001 //Load_func 3, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
001010001 //Load_func 5, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
001100001 //Load_func 6, R1
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000010000 //Load_func 1, R0
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000100000 //Load_func 2, R0
111000110 //getBit I R6
001010110 //Load_func R5, R6
100111101 //XOR R R5
000010000 //Load_func R0, 2, 0
100110110 //XOR I R6
001011001 //Load_func R1, 3, 1
100110111 //XOR I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
001110001 //Load_func 7, R1
111000111 //getBit I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
011010110 //Load_func R13, R6
100001000 //Mov R
000010000 //Load_func R0, 2, 0
100110110 //XOR I R6
001111100 //Load_func R1, 7, 4
100110111 //XOR I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
011000110 //Load_func R12, R6
100001000 //Mov R
001011000 //Load_func R1, 3, 0
100110111 //XOR I R7
001100111 //Load_func R6, R7
100111110 //XOR R R6
001101100 //Load_func R6, R12
100111110 //XOR R R6
001101101 //Load_func R6, R13
100111110 //XOR R R6
001100101 //Load_func R6, R5
100111110 //XOR R R6
001100100 //Load_func R6, R4
100111110 //XOR R R6
001010000 //Load_func 5, R0
101010111 //bSL I R7
001110001 //Load_func 7, R1
111000000 //getBit I R0
001000000 //Load_func 4, R0
111010111 //setBit I R7
001100001 //Load_func 6, R1
111000000 //getBit I R0
000110000 //Load_func 3, R0
111010111 //setBit I R7
001010001 //Load_func 5, R1
111000000 //getBit I R0
000100000 //Load_func 2, R0
111010111 //setBit I R7
001000001 //Load_func 4, R1
111000000 //getBit I R0
000010000 //Load_func 1, R0
111010111 //setBit I R7
000001100 //Load_func 0, R12
111010111 //setBit I R7
000000111 //Load_func R0, R7
100001000 //Mov R
001000001 //Load_func 4, R1
101010001 //bSL I R1
001000001 //Load_func 4, R1
111000111 //getBit I R7
000110111 //Load_func 3, R7
111010001 //setBit I R1
001001101 //Load_func 4, R13
111010001 //setBit I R1
000100101 //Load_func 2, R5
111010001 //setBit I R1
000010100 //Load_func 1, R4
111010001 //setBit I R1
000000110 //Load_func 0, R6
111010001 //setBit I R1
000001000 //Load_func R0, R8
100111100 //XOR R R4
000011001 //Load_func R1, R9
100111101 //XOR R R5
010010110 //Load_func 9, R6
101010110 //bSL I R6
101010111 //bSL I R7
000110100 //Load_func 3, R4
111010110 //setBit I R6
001000101 //Load_func R4, R5
100001000 //Mov R
001000100 //Load_func 4, R4
101000100 //bSR I R4
000100100 //Load_func 2, R4
111010110 //setBit I R6
001000101 //Load_func R4, R5
100001000 //Mov R
000100100 //Load_func 2, R4
101000100 //bSR I R4
000010100 //Load_func 1, R4
111010110 //setBit I R6
001000101 //Load_func R4, R5
100001000 //Mov R
000010100 //Load_func 1, R4
101000100 //bSR I R4
000000100 //Load_func 0, R4
111010110 //setBit I R6
001000101 //Load_func R4, R5
100001000 //Mov R
001000100 //Load_func 4, R4
111010110 //setBit I R6
000001010 //Load_func R0, R10
100001000 //Mov R
000011011 //Load_func R1, R11
100001000 //Mov R
001000000 //Load_func L4
111100000 //setBranch
000000110 //Load_func 0, R6
110100000 //BEQ I
000000001 //Load_func 1
100000100 //Mov I R4
001110100 //Load_func 7, R4
111010000 //setBit I R0
001010000 //Load_func L5
111100000 //setBranch
000000000 //Load_func 0
100000110 //Mov I R6
000000110 //Load_func 0, R6
110100000 //BEQ I
//l4:_BADBAD //L4:
000001010 //Load_func R0, R10
100001000 //Mov R
000011011 //Load_func R1, R11
100001000 //Mov R
//l5:_BADBAD //L5:
000011110 //Load_func 30
100000100 //Mov I R4
001000011 //Load_func R4, R3
101101101 //Add R R5
001000010 //Load_func R4, R2
101101100 //Add R R4
001000000 //Load_func R4
100101000 //Store R R0
001010000 //Load_func R5
100101001 //Store R R1
000100010 //Load_func 2, R2
101100010 //Add I R2
000100011 //Load_func 2, R3
101100011 //Add I R3
000010000 //Load_func L1
111100000 //setBranch
001011111 //Load_func 95
100000111 //Mov I R7
011010111 //Load_func R13, R7
100001000 //Mov R
000101101 //Load_func R2, R13
110111000 //BNEQ R
