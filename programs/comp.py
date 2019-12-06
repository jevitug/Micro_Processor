#compiler
import re
import sys
get_bin = lambda x, n: format(int(x), 'b').zfill(n)

def extract_int(test_string):
    temp = re.findall(r'\d+', test_string)
    res = list(map(int, temp))
    return res[0]

def switch_command(argument):
    switcher = {
        "mov"       : "0000",
        "ld"        : "0001",
        "store"     : "0010",
        "xor"       : "0011",
        "bsr"       : "0100",
        "bsl"       : "0101",
        "add"       : "0110",
        "mult"      : "0111",
        "div"       : "1000",
        "mod"       : "1001",
        "beq"       : "1010",
        "bneq"      : "1011",
        "getbit"    : "1100",
        "setbit"    : "1101",
        "setbranch" : "1110"
    }

    return switcher.get(argument, "//BAD_SWITCHER")

def main():
    if len(sys.argv) > 1:
        file = sys.argv[1]
    else:
        print("Please Enter File name as arg")
        return
    f= open(file + ".s","r")

    contents = None

    if f.mode == 'r':
        contents = f.readlines()
        s = ""
        for x in contents:
            if x[0] == "/" and x[1] == "/":
                s = s# + x
            elif x == "\n":
                l = "do nothing"
            else:
                y = x
                x = x.lower()
                x = [x.strip().rstrip(',') for x in x.split(' ')]

                command = ""
                if len(x) == 0 or x[0] == "\n" or x[0] == "":
                    l = "do nothing"

                elif x[0] == "load_func":
                    command = "0"
                    if len(x) == 2:
                        if x[1].isdigit():
                            command = command + get_bin(extract_int(x[1]), 8)
                        else if x[1][0] == "l":
                            command = command + get_bin(extract_int(x[1][1:]), 8)
                        else:
                            command = command + get_bin(extract_int(x[1]), 4) + get_bin(0, 4)
                    elif len(x) == 3:
                        if x[1].isdigit():
                            int_num = get_bin(x[1], 4)
                            command = command + int_num
                        else:
                            reg_number_1 = get_bin(extract_int(x[1]), 4)
                            command = command + reg_number_1
                        reg_number_2 = get_bin(extract_int(x[2]), 4)
                        command = command + reg_number_2
                    elif len(x) == 4:
                        reg_number_1 = get_bin(extract_int(x[1]), 2)
                        int_num_2 = get_bin(x[2], 3)
                        int_num_3 = get_bin(x[3], 3)
                        command = command + reg_number_1 + int_num_2 + int_num_3
                    else:
                        command = "//BAD"

                elif x[0][0] == "l" and x[0] != "ld":
                    command = "//"+"".join(x)
                else:
                    command = "1"
                    command = command + switch_command(x[0])

                    if len(x) == 1:
                        command = command + "0"

                    elif x[1] == "i":
                        command = command + "0"
                    elif x[1] == "r":
                        command = command + "1"

                    if len(x) == 3:
                        command = command + get_bin(extract_int(x[2]), 3)
                    elif len(x) == 2 or len(x) == 1:
                        command = command + "000"
                    else:
                        command = "//BAD_OPERATION"
                if len(command) != 9:
                    command = command + "_BADBAD"
                s = s + command + " //" + y.strip() + "\n"
        file2 = open(file + ".c","w+")
        file2.write(s)

if __name__ == "__main__":
    main()
