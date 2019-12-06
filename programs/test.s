Load_func 12
Mov I R0

Load_func 11
Mov I R1

Load_func L0
setBranch


Load_func 12, R0
BNEQ I

Load_func R0, R1
BNEQ R



Load_func 255
Mov I R0
