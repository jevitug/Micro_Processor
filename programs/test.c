000001100 //Load_func 12
100000000 //Mov I R0
000001011 //Load_func 11
100000001 //Mov I R1
000000000 //Load_func L0
111100000 //setBranch
011000000 //Load_func 12, R0
110110000 //BNEQ I
000000001 //Load_func R0, R1
110111000 //BNEQ R
011111111 //Load_func 255
100000000 //Mov I R0