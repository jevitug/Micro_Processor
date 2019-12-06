Orr Toledano and Jared Vitug

//program 1

//Sets value at R2 and R3 as 0 and 1
Load_func 1
Mov I R2

Load_func 0
Mov I R3

//Gets Memory at R2 and R3 and places in R0 (MSB) and R1 (LSB)

L0:
Load_func R2
Ld R R0

Load_func R3
Ld R R1

//Calculating p1 in R4

//gets b11 and places in R4
Load_func 2, R0
getBit I R4
//gets b9 and places in R5
Load_func 0, R0
getBit I R5

//do XOR for P1 in R4
Load_func R4, R5
XOR R R4

//gets b7 and places in R5
Load_func 6, R1
getBit I R5
//do XOR for P1 in R4
Load_func R4, R5
XOR R R4

//gets b5 and places in R5
Load_func 4, R1
getBit I R5
//do XOR for P1 in R4
Load_func R4, R5
XOR R R4

//gets b4 and places in R5
Load_func 3, R1
getBit I R5
//do XOR for P1 in R4
Load_func R4, R5
XOR R R4

//gets b2 and places in R5
Load_func 1, R1
getBit I R5
//do XOR for P1 in R4
Load_func R4, R5
XOR R R4

//gets b1 and places in R5
Load_func 0, R1
getBit I R5
//do XOR for P1 in R4
Load_func R4, R5
XOR R R4

//sets p2 in R5

//gets b3 and places in R6, XOR with R5
Load_func 2, R1
getBit I R6
//do XOR for P2 in R5
Load_func R5, R6
XOR R R5

//gets b4 and places in R6, XOR with R5
Load_func 3, R1
getBit I R6
//do XOR for P2 in R5
Load_func R5, R6
XOR R R5

//gets b6 and places in R6, XOR with R5
Load_func 5, R1
getBit I R6
//do XOR for P2 in R5
Load_func R5, R6
XOR R R5

//gets b7 and places in R6, XOR with R5
Load_func 6, R1
getBit I R6
//do XOR for P2 in R5
Load_func R5, R6
XOR R R5

//gets b10 and places in R6, XOR with R5
Load_func 1, R0
getBit I R6
//do XOR for P2 in R5
Load_func R5, R6
XOR R R5

//gets b11 and places in R6, XOR with R5
Load_func 2, R0
getBit I R6
//do XOR for P2 in R5
Load_func R5, R6
XOR R R5


//Stores p4 in R6

Load_func R0, 2, 0
// 00 010 000
XOR I R6

Load_func R1, 3, 1
//01 011, 001
XOR I R7

Load_func R6, R7
XOR R R6

//XOR b8
Load_func 7, R1
getBit I R7
Load_func R6, R7
XOR R R6

//Move p4 from R6 to R13
Load_func R13, R6
Mov R


//Calculating p8 in R6
Load_func R0, 2, 0
// 00 010 000
XOR I R6
Load_func R1, 7, 4
// 01 111 100
XOR I R7

Load_func R6, R7
XOR R R6

//Move p8 into R12
Load_func R12, R6
Mov R


//Calculating p16 in R6,
Load_func R1, 3, 0
// 01 011 000
XOR I R7

Load_func R6, R7
XOR R R6

//XOR P8
Load_func R6, R12
XOR R R6

//XOR P4
Load_func R6, R13
XOR R R6

//XOR P2
Load_func R6, R5
XOR R R6

//XOR P1
Load_func R6, R4
XOR R R6

//Encoded msg MSB in R7
Load_func 5, R0
bSL I R7
//
//b8
Load_func 7, R1
getBit I R0

Load_func 4, R0
setBit I R7

//b7
Load_func 6, R1
getBit I R0

Load_func 3, R0
setBit I R7

//b6
Load_func 5, R1
getBit I R0

Load_func 2, R0
setBit I R7

//b5
Load_func 4, R1
getBit I R0

Load_func 1, R0
setBit I R7

//p8
Load_func 0, R12
setBit I R7

//Move encoded MSB to R0
Load_func R0, R7
Mov R

//Save most sig to R2 + 30
Load_func 30
Mov I R7

Load_func R7, R2
Add R R7

Load_func R7
Store R R0

//Encoded LSB in R1
Load_func 4, R1
bSL I R1

//b1
Load_func 4, R1
getBit I R7

Load_func 3, R7
setBit I R1

//p4
Load_func 4, R13
setBit I R1

//p2
Load_func 2, R5
setBit I R1

//p1
Load_func 1, R4
setBit I R1

//p16
Load_func 0, R6
setBit I R1


//Save least sig to R3 + 30
Load_func 30
Mov I R7

Load_func R7, R3
Add R R7

Load_func R7
Store R R1

//Add 2 to R2 and R3
Load_func 2, R2
Add I R2

Load_func 2, R3
Add I R3

//Set Branch
Load_func L0
setBranch

Load_func 31
Mov I R7

Load_func R13, R7
Mov R

Load_func R2, R13
BNEQ R
