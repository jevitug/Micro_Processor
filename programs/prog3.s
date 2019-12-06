//load mem[128] into R0
Load_func 8, R0
bSR I R0
bSR I R1
bSR I R2
bSR I R3
bSR I R4
bSR I R5
bSR I R6
bSR I R7
Load_func R8, R0
Mov R
Load_func R9, R0
Mov R
Load_func R10, R0
Mov R
Load_func R11, R0
Mov R
Load_func R12, R0
Mov R
Load_func R13, R0
Mov R

Load_func 128
Mov I R0
Load_func R0
Ld R R0

//place byte counter in r9
Load_func 129
Mov I R7
Load_func R9, R7
Mov R

//place pattern in R10
Load_func 160
Mov I R7
Load_func R7
Ld R R7
Load_func R10, R7
Mov R

//R11: counter for # occurrences in a byte store in mem[192]
//R12: counter for # bytes pattern occurs in, store in mem [193]
//R13: counter for # of occurrences in continuous string,
//     store in mem[194]
Load_func 0
Mov I R7
Load_func R11, R7
Mov R
Load_func R12, R7
Mov R
Load_func R13, R7
Mov R

L17:
//Loop 1 here?

//R7: counter for # of occurrences in a single byte
//Use: Add to R11 after going through all possible positions in
//     single byte AND check if R7 > 0 to see if pattern occurred
//     in byte.
Load_func 0
Mov I R7

//STARTING WITH CODE TO CHECK # OCCURENCES IN SINGLE BYTE

//load mem[R9] into R1
Load_func R9
Ld R R1

//copy R0 into R2 for mem[R0] bits [7:3]
Load_func R2, R0
Mov R

//Case 1a(single byte): shift right 3 times, left 3 times
Load_func 3, R2
bSR I R2
Load_func 3, R2
bSL I R2

//Place pattern(R10) in R3
Load_func R3, R10
Mov R

//R2 XOR R3, store in R6
Load_func R2, R3
XOR R R6

//if R6 == 0, add 1 to R7
Load_func L7
SetBranch

Load_func 0, R6
BNEQ I
Load_func 1, R7
Add I R7

L7:

//ENDCASE 1A

//Copy R0 into R2 for mem[R0] bits [6:2]
Load_func R2, R0
Mov R

//Case 2a(single byte): shift right 2 times, left 3 times
Load_func 2, R2
bSR I R2
Load_func 3, R2
bSL I R2

//R2 XOR R3, store in R6
Load_func R2, R3
XOR R R6

//if R6 == 0, add 1 to R7
Load_func L8
SetBranch

Load_func 0, R6
BNEQ I
Load_func 1, R7
Add I R7

L8:

//END CASE2A

//Copy R0 into R2 for mem[R0] bits [5:1]
Load_func R2, R0
Mov R

//Case 3a(single byte): shift right 1 time, left 3 times
Load_func 1, R2
bSR I R2
Load_func 3, R2
bSL I R2

//R2 XOR R3, store in R6
Load_func R2, R3
XOR R R6

//if R6 == 0, add 1 to R7
Load_func L9
SetBranch

Load_func 0, R6
BNEQ I
Load_func 1, R7
Add I R7

L9:

//END CASE3A

//Copy R0 into R2 for mem[R0] bits [4:0]
Load_func R2, R0
Mov R

//Case 4a(single byte): shift right 0 times, left 3 times
Load_func 3, R2
bSL I R2

//R2 XOR R3, store in R6
Load_func R2, R3
XOR R R6

//if R6 == 0, add 1 to R7
Load_func L10
SetBranch

Load_func 0, R6
BNEQ I
Load_func 1, R7
Add I R7

L10:

//END CASE4A

//END SINGLE BYTE CASES
//Add # of single byte occurrences to relevant counter (R7 + R11)
//First load R11 counter into R6
Load_func R6, R11
Mov R

//add R7 + R6, store in R6
Load_func R7, R6
Add R R6

//Update R11 counter with updated value in R6
Load_func R11, R6
Mov R

//if R7 > 0, add 1 to R12 counter
//else: move on to updating R13

Load_func L11
SetBranch

Load_func 0, R7
BEQ I

//First load R12 counter into R6
Load_func R6, R12
Mov R

//Add 1 to R6
Load_func 1, R6
Add I R6

//Store updated R6 (#bytes) counter in R12
Load_func R12, R6
Mov R

L11:

//Add # of occurrences to continuous string counter (R13)
//First load R13 counter into R6
Load_func R6, R13
Mov R


//Add R7 + R6, store in R6
Load_func R6, R7
Add R R6

//Store updated continuous string counter (R6) in R13
Load_func R13, R6
Mov R

Load_func L16
SetBranch
Load_func 160
Mov I R7
Load_func R7, R9
BEQ R

//BEGIN CODE FOR CHECKING IF PATTERN OCCURS BETWEEN TWO
//CONSECUTIVE BYTES

//R7: counter for # of occurrences in consecutive bytes
//Use: Add to R13 after going through all possible positions in
//     continuous bytes.
Load_func 0
Mov I R7

//R2: Hold the bit(s) from R0 we want to XOR
//R3: Copy of pattern
//R4: bit to get
//R5: Hold the XOR result of R2 XOR R3
//R6:
//R7: counter

//load pattern into R3
Load_func R3, R10
Mov R

//Copy R0 into R2 to get mem[R0] bits [3:0]
Load_func R2, R0
Mov R

//Case 1b(consecutive bytes): R0[3:0] R1[7]

Load_func 4, R2
bSL I R2

//get bit [7] from R1 and store in R4 set as bit [3] of R2
Load_func 7, R1
getBit I R4

//set this bit as bit 3 of R2
Load_func 3, R4
setBit I R2

//R2 XOR R3, store in R5
Load_func R2, R3
XOR R R5

Load_func L12
SetBranch

Load_func 0, R5
BNEQ I

//Add R5 + R7, store in R7
Load_func 1, R7
Add I R7

L12:
//END CASE1B

//Begin case2b: bits R0[2:0] and R1[7:6]

//shift R2 left once to get R0[2:0] and R1[7]
Load_func 1, R2
bSL I R2

//get bit R1[6] and store in R4
Load_func 6, R1
getBit I R4

//set R4 as bit [3] of R2
Load_func 3, R4
setBit I R2

//R2 XOR R3, store in R5
Load_func R2, R3
XOR R R5

//Add R5 + R7, store in R7
Load_func L13
SetBranch

Load_func 0, R5
BNEQ I

//Add R5 + R7, store in R7
Load_func 1, R7
Add I R7

L13:

//END case2b

//case3b: R0[1:0] and R1[7:5]

//shift R2 left once to get R0[1:0] and R1[7:6]
Load_func 1, R2
bSL I R2

//get bit R1[5] and store in R4
Load_func 5, R1
getBit I R4

//set R4 as bit [3] of R2
Load_func 3, R4
setBit I R2

//R2 XOR R3, store in R5
Load_func R2, R3
XOR R R5

//Add R5+R7, store in R7
Load_func L14
SetBranch

Load_func 0, R5
BNEQ I

//Add R5 + R7, store in R7
Load_func 1, R7
Add I R7

L14:

//END case3b

//case4b: R0[0] R1[7:4]

//shift R2 left once to get R0[0] and R1[7:5]
Load_func 1, R2
bSL I R2

//get bit R1[4] and store in R4
Load_func 4, R1
getBit I R4

//set R4 as bit [3] of R2
Load_func 3, R4
setBit I R2

//R2 XOR R3, store in R5
Load_func R2, R3
XOR R R5

//Add R5+R7, store in R7
Load_func L15
SetBranch

Load_func 0, R5
BNEQ I

//Add R5 + R7, store in R7
Load_func 1, R7
Add I R7

L15:

//END case4b

//load continuous string counter R13 into R6
Load_func R6, R13
Mov R

//add R7 + R6, then store back in R13
Load_func R7, R6
Add R R6

Load_func R13, R6
Mov R

//move R1 to R0
Load_func R0, R1
Mov R

//increment counter R9 by 1, check if equals 160.
//if R9 == 160, don't loop and move to checking mem[159].
//then start storing R11-13 in memory. Else,
//loop back to Loop 1 at top.

Load_func 1, R9
Add I R5
Load_func R9, R5
Mov R

Load_func L17
SetBranch
Load_func R0, R0
BEQ R

L16:

//AFTER COMPLETION
//store R11 in mem[192], R12 in mem[193], R13 in mem[194]
//R2: R11 copy
//R3: R12 copy
//R4: R13 copy
//R5: 192
//R6: 193
//R7: 194

Load_func R2, R11
Mov R
Load_func R3, R12
Mov R
Load_func R4, R13
Mov R
Load_func 192
Mov I R5
Load_func 193
Mov I R6
Load_func 194
Mov I R7

//store R2 in mem[R5]
Load_func R5
Store R R2
//store R3 in mem[R6]
Load_func R6
Store R R3
//store R4 in mem[R7]
Load_func R7
Store R R4
