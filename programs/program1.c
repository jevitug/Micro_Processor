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
