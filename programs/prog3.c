010000000 //Load_func 8, R0
101000000 //bSR I R0
101000001 //bSR I R1
101000010 //bSR I R2
101000011 //bSR I R3
101000100 //bSR I R4
101000101 //bSR I R5
101000110 //bSR I R6
101000111 //bSR I R7
010000000 //Load_func R8, R0
100001000 //Mov R
010010000 //Load_func R9, R0
100001000 //Mov R
010100000 //Load_func R10, R0
100001000 //Mov R
010110000 //Load_func R11, R0
100001000 //Mov R
011000000 //Load_func R12, R0
100001000 //Mov R
011010000 //Load_func R13, R0
100001000 //Mov R
010000000 //Load_func 128
100000000 //Mov I R0
000000000 //Load_func R0
100011000 //Ld R R0
010000001 //Load_func 129
100000111 //Mov I R7
010010111 //Load_func R9, R7
100001000 //Mov R
010100000 //Load_func 160
100000111 //Mov I R7
001110000 //Load_func R7
100011111 //Ld R R7
010100111 //Load_func R10, R7
100001000 //Mov R
000000000 //Load_func 0
100000111 //Mov I R7
010110111 //Load_func R11, R7
100001000 //Mov R
011000111 //Load_func R12, R7
100001000 //Mov R
011010111 //Load_func R13, R7
100001000 //Mov R
//l17:_BADBAD //L17:
000000000 //Load_func 0
100000111 //Mov I R7
010010000 //Load_func R9
100011001 //Ld R R1
000100000 //Load_func R2, R0
100001000 //Mov R
000110010 //Load_func 3, R2
101000010 //bSR I R2
000110010 //Load_func 3, R2
101010010 //bSL I R2
000111010 //Load_func R3, R10
100001000 //Mov R
000100011 //Load_func R2, R3
100111110 //XOR R R6
000000111 //Load_func L7
111100000 //SetBranch
000000110 //Load_func 0, R6
110110000 //BNEQ I
000010111 //Load_func 1, R7
101100111 //Add I R7
//l7:_BADBAD //L7:
000100000 //Load_func R2, R0
100001000 //Mov R
000100010 //Load_func 2, R2
101000010 //bSR I R2
000110010 //Load_func 3, R2
101010010 //bSL I R2
000100011 //Load_func R2, R3
100111110 //XOR R R6
000001000 //Load_func L8
111100000 //SetBranch
000000110 //Load_func 0, R6
110110000 //BNEQ I
000010111 //Load_func 1, R7
101100111 //Add I R7
//l8:_BADBAD //L8:
000100000 //Load_func R2, R0
100001000 //Mov R
000010010 //Load_func 1, R2
101000010 //bSR I R2
000110010 //Load_func 3, R2
101010010 //bSL I R2
000100011 //Load_func R2, R3
100111110 //XOR R R6
000001001 //Load_func L9
111100000 //SetBranch
000000110 //Load_func 0, R6
110110000 //BNEQ I
000010111 //Load_func 1, R7
101100111 //Add I R7
//l9:_BADBAD //L9:
000100000 //Load_func R2, R0
100001000 //Mov R
000110010 //Load_func 3, R2
101010010 //bSL I R2
000100011 //Load_func R2, R3
100111110 //XOR R R6
000001010 //Load_func L10
111100000 //SetBranch
000000110 //Load_func 0, R6
110110000 //BNEQ I
000010111 //Load_func 1, R7
101100111 //Add I R7
//l10:_BADBAD //L10:
001101011 //Load_func R6, R11
100001000 //Mov R
001110110 //Load_func R7, R6
101101110 //Add R R6
010110110 //Load_func R11, R6
100001000 //Mov R
000001011 //Load_func L11
111100000 //SetBranch
000000111 //Load_func 0, R7
110100000 //BEQ I
001101100 //Load_func R6, R12
100001000 //Mov R
000010110 //Load_func 1, R6
101100110 //Add I R6
011000110 //Load_func R12, R6
100001000 //Mov R
//l11:_BADBAD //L11:
001101101 //Load_func R6, R13
100001000 //Mov R
001100111 //Load_func R6, R7
101101110 //Add R R6
011010110 //Load_func R13, R6
100001000 //Mov R
000010000 //Load_func L16
111100000 //SetBranch
010100000 //Load_func 160
100000111 //Mov I R7
001111001 //Load_func R7, R9
110101000 //BEQ R
000000000 //Load_func 0
100000111 //Mov I R7
000111010 //Load_func R3, R10
100001000 //Mov R
000100000 //Load_func R2, R0
100001000 //Mov R
001000010 //Load_func 4, R2
101010010 //bSL I R2
001110001 //Load_func 7, R1
111000100 //getBit I R4
000110100 //Load_func 3, R4
111010010 //setBit I R2
000100011 //Load_func R2, R3
100111101 //XOR R R5
000001100 //Load_func L12
111100000 //SetBranch
000000101 //Load_func 0, R5
110110000 //BNEQ I
000010111 //Load_func 1, R7
101100111 //Add I R7
//l12:_BADBAD //L12:
000010010 //Load_func 1, R2
101010010 //bSL I R2
001100001 //Load_func 6, R1
111000100 //getBit I R4
000110100 //Load_func 3, R4
111010010 //setBit I R2
000100011 //Load_func R2, R3
100111101 //XOR R R5
000001101 //Load_func L13
111100000 //SetBranch
000000101 //Load_func 0, R5
110110000 //BNEQ I
000010111 //Load_func 1, R7
101100111 //Add I R7
//l13:_BADBAD //L13:
000010010 //Load_func 1, R2
101010010 //bSL I R2
001010001 //Load_func 5, R1
111000100 //getBit I R4
000110100 //Load_func 3, R4
111010010 //setBit I R2
000100011 //Load_func R2, R3
100111101 //XOR R R5
000001110 //Load_func L14
111100000 //SetBranch
000000101 //Load_func 0, R5
110110000 //BNEQ I
000010111 //Load_func 1, R7
101100111 //Add I R7
//l14:_BADBAD //L14:
000010010 //Load_func 1, R2
101010010 //bSL I R2
001000001 //Load_func 4, R1
111000100 //getBit I R4
000110100 //Load_func 3, R4
111010010 //setBit I R2
000100011 //Load_func R2, R3
100111101 //XOR R R5
000001111 //Load_func L15
111100000 //SetBranch
000000101 //Load_func 0, R5
110110000 //BNEQ I
000010111 //Load_func 1, R7
101100111 //Add I R7
//l15:_BADBAD //L15:
001101101 //Load_func R6, R13
100001000 //Mov R
001110110 //Load_func R7, R6
101101110 //Add R R6
011010110 //Load_func R13, R6
100001000 //Mov R
000000001 //Load_func R0, R1
100001000 //Mov R
000011001 //Load_func 1, R9
101100101 //Add I R5
010010101 //Load_func R9, R5
100001000 //Mov R
000010001 //Load_func L17
111100000 //SetBranch
000000000 //Load_func R0, R0
110101000 //BEQ R
//l16:_BADBAD //L16:
000101011 //Load_func R2, R11
100001000 //Mov R
000111100 //Load_func R3, R12
100001000 //Mov R
001001101 //Load_func R4, R13
100001000 //Mov R
011000000 //Load_func 192
100000101 //Mov I R5
011000001 //Load_func 193
100000110 //Mov I R6
011000010 //Load_func 194
100000111 //Mov I R7
001010000 //Load_func R5
100101010 //Store R R2
001100000 //Load_func R6
100101011 //Store R R3
001110000 //Load_func R7
100101100 //Store R R4