Orr Toledano and Jared Vitug
//Program 2

//Sets value at R2 and R3 as 64 and 65
Load_func 65
Mov I R2

Load_func 64
Mov I R3

//Gets Memory at R2 and R3 and places in R0 (MSB) and R1 (LSB)

L1:
Load_func R2
Ld R R0

Load_func R3
Ld R R1


//Encoded to decoded in R4 (MSB) and R5 (LSB)

//Zeros R4, R5, R6
Load_func 9, R6
bSL I R4
bSL I R5
bSL I R6

//load b11, b10, b9 into R4
Load_func 5, R0
bSR I R4

//Load b8, b7, b6, b5 into R5
Load_func 3, R0
bSL I R5

//load b4 and set b4
Load_func 7, R1
getBit I R6

Load_func 3, R6
setBit I R5

//load b3 and set b3
Load_func 6, R1
getBit I R6

Load_func 2, R6
setBit I R5

//load b2 and set b2
Load_func 5, R1
getBit I R6

Load_func 1, R6
setBit I R5

//load b1 and set b1
Load_func 3, R1
getBit I R6

Load_func 0, R6
setBit I R5

//Move orig encoded bits into R8 and R9
Load_func R8, R0
Mov R

Load_func R9, R1
Mov R

//Move the decoded bits R0 and R1 to re-encode
Load_func R0, R4
Mov R

Load_func R1, R5
Mov R

//Save the decoded bits in R10 and R11 in case there are no errors
Load_func R10, R4
Mov R

Load_func R11, R5
Mov R

//Run program 1 altered on decoded bits in R0 and R1


Orr Toledano and Jared Vitug

//program 1 altered
//R0 and R1 contain the decoded Message

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

//R0 and R1 contain the encoded Message



//Program 1 altered loaded the re-encoded MSB in R0 and LSB in R1

//XOR value in MSB of encoded_orig and re_encoded and load into R4
Load_func R0, R8
XOR R R4

//XOR value in LSB of encoded_orig and re_encoded and load into R5
Load_func R1, R9
XOR R R5

//Zeros R6 and R7
Load_func 9, R6
bSL I R6
bSL I R7

//get p8 XOR and shift to correct position in place in R6
Load_func 3, R4
setBit I R6

//Copies the XORed Values for LSB from R5 into R4
Load_func R4, R5
Mov R
//Right Shifts to p4 in the 0th position
Load_func 4, R4
bSR I R4
//places p4 in R6 in correct bit position
Load_func 2, R4
setBit I R6

//Copies the XORed Values for LSB from R5 into R4
Load_func R4, R5
Mov R
//Right Shifts to p2 in the 0th position
Load_func 2, R4
bSR I R4
//places p2 in R6 in correct bit position
Load_func 1, R4
setBit I R6

//Copies the XORed Values for LSB from R5 into R4
Load_func R4, R5
Mov R
//Right Shifts to p1 in the 0th position
Load_func 1, R4
bSR I R4
//places p1 in R6 in correct bit position
Load_func 0, R4
setBit I R6

//Branch to L2 if location error is not 0
Load_func L2
setBranch

Load_func 0, R6
BNEQ I

//Branch to L4 if p16 is 0
Load_func L4
setBranch

Load_func 0, R5
getBit I R4

Load_func 0, R4
BEQ I

//set location bit to 0
Load_func 0
Mov I R6

//continue with program
L2:
//subtract 1 (eqivalent to adding 255 in 8 bit addition) to get correct location
Load_func 0
Mov I R7

Load_func R7, R6
Add R R6

//Flip bit location at R6, first see if in MSB or LSB, then flip specified bit
Load_func 8, R6
Div I R7

Load_func L3
SetBranch

Load_func 0, R7
BEQ I

//Flipping bit in MSB
Load_func 8, R6
Mod I R6

//Get bit from MSB
Load_func R6, R8
getBit R R7

//XOR R7 with 1
Load_func 1
Mov I R4

Load_func R4, R7
XOR R R7

//set fixed bit in MSB
Load_func R4, R8
Mov R

Load_func R6, R7
setBit R R4

Load_func R8, R4
Mov R

//Branch to L6
Load_func 0
Mov I R4

Load_func L6
setBranch

Load_func 0, R4
BEQ I


//Get bit from LSB
L3:
Load_func R6, R9
getBit R R7

//XOR R7 with 1
Load_func 1
Mov I R4

Load_func R4, R7
XOR R R7

//set fixed bit in LSB
Load_func R4, R9
Mov R

Load_func R6, R7
setBit R R4

Load_func R9, R4
Mov R

//continue with program
L6:

//Mov Fixed Encoded Message into R0 and R1
Load_func R0, R8
Mov R

Load_func R1, R9
Mov R

//Encoded to decoded in R4 (MSB) and R5 (LSB)

//Zeros R4, R5, R6
Load_func 9, R6
bSL I R4
bSL I R5
bSL I R6

//load b11, b10, b9 into R4
Load_func 5, R0
bSR I R4

//Load b8, b7, b6, b5 into R5
Load_func 3, R0
bSL I R5

//load b4 and set b4
Load_func 7, R1
getBit I R6

Load_func 3, R6
setBit I R5

//load b3 and set b3
Load_func 6, R1
getBit I R6

Load_func 2, R6
setBit I R5

//load b2 and set b1
Load_func 5, R1
getBit I R6

Load_func 1, R6
setBit I R5

//load b2 and set b1
Load_func 3, R1
getBit I R6

Load_func 0, R6
setBit I R5

//Move the decoded bits R0 and R1 to re-encode and store them in R0 & R10 and R1 & R11
Load_func R0, R4
Mov R

Load_func R1, R5
Mov R

Load_func R10, R4
Mov R

Load_func R11, R5
Mov R

//Run program 1 on bits in R0 and R1
Orr Toledano and Jared Vitug

//program 1 altered
//R0 and R1 contain the decoded Message

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

//R0 and R1 contain the encoded Message



//Program 1 loaded the re-encoded MSB in R0 and LSB in R1

//XOR value in MSB of encoded_orig and re_encoded and load into R4
Load_func R0, R8
XOR R R4

//XOR value in LSB of encoded_orig and re_encoded and load into R5
Load_func R1, R9
XOR R R5

//Zeros R6 and R7
Load_func 9, R6
bSL I R6
bSL I R7

//get p8 XOR and shift to correct position in place in R6
Load_func 3, R4
setBit I R6

//Copies the XORed Values for LSB from R5 into R4
Load_func R4, R5
Mov R
//Right Shifts to p4 in the 0th position
Load_func 4, R4
bSR I R4
//places p4 in R6 in correct bit position
Load_func 2, R4
setBit I R6

//Copies the XORed Values for LSB from R5 into R4
Load_func R4, R5
Mov R
//Right Shifts to p2 in the 0th position
Load_func 2, R4
bSR I R4
//places p2 in R6 in correct bit position
Load_func 1, R4
setBit I R6

//Copies the XORed Values for LSB from R5 into R4
Load_func R4, R5
Mov R
//Right Shifts to p1 in the 0th position
Load_func 1, R4
bSR I R4
//places p1 in R6 in correct bit position
Load_func 0, R4
setBit I R6

//Copies the XORed Values for LSB from R5 into R4
Load_func R4, R5
Mov R
//places p16 in R6 in correct bit position
Load_func 4, R4
setBit I R6

//store R10 (Decoded MSB) and R11 (Decoded LSB) in R0 and R1
Load_func R0, R10
Mov R

Load_func R1, R11
Mov R

//Branch to L4 if location error is 0
Load_func L4
setBranch

Load_func 0, R6
BEQ I

//if the 2 bits are wrong set the MSB[7] to 1 in R0 and branch to L5
Load_func 1
Mov I R4

Load_func 7, R4
setBit I R0

Load_func L5
setBranch

Load_func 0
Mov I R6

Load_func 0, R6
BEQ I


//store in memory the message by adding 30 to the position value and storing
L4:

//move decoded bits from R10 and R11 to R0 and R1
Load_func R0, R10
Mov R

Load_func R1, R11
Mov R

L5:

//Adding 30
Load_func 30
Mov I R4

Load_func R4, R3
Add R R5

Load_func R4, R2
Add R R4

//storing in memory decoded message
Load_func R4
Store R R0

Load_func R5
Store R R1

//add 2 to the position in memory and branch
Load_func 2, R2
Add I R2

Load_func 2, R3
Add I R3

Load_func L1
setBranch

Load_func 95
Mov I R7

Load_func R13, R7
Mov R

Load_func R2, R13
BNEQ R
