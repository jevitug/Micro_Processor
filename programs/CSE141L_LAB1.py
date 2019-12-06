import binascii
import random


# equivalent of ^num[end:begin]
def xor_reduction(binary, begin, end):
    begin = 16 - begin
    end = 16 - end

    value = binary[end]

    for i in range(end + 1, begin + 1):
        value = value ^ binary[i]
    return value


def convert_encoded_2_decoded(encoded_msg):
    decoded_msg = [0] * 16

    decoded_msg[0] = 0
    decoded_msg[1] = 0
    decoded_msg[2] = 0
    decoded_msg[3] = 0

    decoded_msg[4] = 0
    decoded_msg[5] = encoded_msg[16 - 16]
    decoded_msg[6] = encoded_msg[16 - 15]
    decoded_msg[7] = encoded_msg[16 - 14]

    decoded_msg[8] = encoded_msg[16 - 13]
    decoded_msg[9] = encoded_msg[16 - 12]
    decoded_msg[10] = encoded_msg[16 - 11]
    decoded_msg[11] = encoded_msg[16 - 10]

    decoded_msg[12] = encoded_msg[16 - 8]
    decoded_msg[13] = encoded_msg[16 - 7]
    decoded_msg[14] = encoded_msg[16 - 6]
    decoded_msg[15] = encoded_msg[16 - 4]

    return decoded_msg


def error_location_parity(encoded_orig, re_encoded):
    p16 = 16 * (re_encoded[15] ^ encoded_orig[15])
    p8 = 8 * (re_encoded[7] ^ encoded_orig[7])
    p4 = 4 * (re_encoded[11] ^ encoded_orig[11])
    p2 = 2 * (re_encoded[13] ^ encoded_orig[13])
    p1 = 1 * (re_encoded[14] ^ encoded_orig[14])
    return p16, p8, p4, p2, p1


def generate_data(size=32):
    memory = list()
    for i in range(0, size):
        memory.append([0] * 8)

    for y in range(0, len(memory)):
        for x in range(0, len(memory[0])):
            memory[y][x] = random.randint(0, 1)

    return memory


def program_1(decoded_msg):
    # parity bits
    p1 = decoded_msg[16 - 11] ^ decoded_msg[16 - 9] ^ decoded_msg[16 - 7] ^ decoded_msg[16 - 5] ^ decoded_msg[16 - 4] \
         ^ decoded_msg[16 - 2] ^ decoded_msg[16 - 1]
    p2 = decoded_msg[16 - 11] ^ decoded_msg[16 - 10] ^ decoded_msg[16 - 7] ^ decoded_msg[16 - 6] ^ decoded_msg[16 - 4] \
         ^ decoded_msg[16 - 3] ^ decoded_msg[16 - 1]
    p4 = xor_reduction(decoded_msg, 8, 11) ^ decoded_msg[16 - 4] ^ decoded_msg[16 - 3] ^ decoded_msg[16 - 2]
    p8 = xor_reduction(decoded_msg, 5, 11)
    p16 = xor_reduction(decoded_msg, 1, 11) ^ p8 ^ p4 ^ p2 ^ p1

    encoded_msg = [0] * 16

    encoded_msg[0] = decoded_msg[16 - 11]
    encoded_msg[1] = decoded_msg[16 - 10]
    encoded_msg[2] = decoded_msg[16 - 9]
    encoded_msg[3] = decoded_msg[16 - 8]

    encoded_msg[4] = decoded_msg[16 - 7]
    encoded_msg[5] = decoded_msg[16 - 6]
    encoded_msg[6] = decoded_msg[16 - 5]
    encoded_msg[7] = p8

    encoded_msg[8] = decoded_msg[16 - 4]
    encoded_msg[9] = decoded_msg[16 - 3]
    encoded_msg[10] = decoded_msg[16 - 2]
    encoded_msg[11] = p4

    encoded_msg[12] = decoded_msg[16 - 1]
    encoded_msg[13] = p2
    encoded_msg[14] = p1
    encoded_msg[15] = p16

    return encoded_msg


def program_2(encoded_orig):
    decode_to_data = convert_encoded_2_decoded(encoded_orig)
    print("Step1: convert encoded to decoded")
    print(decode_to_data)

    re_encoded = program_1(decode_to_data)
    print("step2: re-encode decoded data")
    print(re_encoded)

    p16, p8, p4, p2, p1 = error_location_parity(encoded_orig, re_encoded)
    print(p16,p8,p4,p2,p1)

    if (p8 + p4 + p2 + p1) == 0 and p16 == 0:
        return decode_to_data
    if (p8 + p4 + p2 + p1) == 0 and p16 > 0:
        location_error = 0
    else:
        location_error = p8 + p4 + p2 + p1

    print("step3: get error location")
    print("b" + str(location_error))

    encoded_orig_fixed = list(encoded_orig)
    encoded_orig_fixed[15 - location_error] = encoded_orig_fixed[15 - location_error] ^ 1
    print("step4: flip bit from original message at error location")
    print(encoded_orig_fixed)

    decoded_fixed = convert_encoded_2_decoded(encoded_orig_fixed)
    print("step6: decode fixed encoded")
    print(decoded_fixed)
    re_encoded_fixed = program_1(decoded_fixed)
    print("step7: re-encode decoded_fixed")
    print(re_encoded_fixed)

    p16, p8, p4, p2, p1 = error_location_parity(re_encoded_fixed, encoded_orig_fixed)
    print("step 8: check if the error location is 0, else flip far left bit")
    if (p8 + p4 + p2 + p1) == 0 and p16 == 0:
        return decoded_fixed
    else:
        decoded_fixed[0] = 1
        return decoded_fixed


def program_3(memory, pattern):
    counter = 0

    pattern_index = 0
    memory_index = 0

    i = 0

    while i < len(memory) * len(memory[0]):
        y = int(i / len(memory[0]))
        x = i % len(memory[0])

        if memory[y][x] == pattern[pattern_index]:
            if pattern_index == 0:
                memory_index = i
            pattern_index += 1

            if pattern_index == len(pattern):
                counter += 1
                pattern_index = 0
                i = memory_index
        else:
            if pattern_index > 0:
                i = memory_index
            pattern_index = 0

        i = i + 1

    return counter


def program_3b(memory, pattern):
    counter = 0

    for i in range(0, (len(memory) * len(memory[0])) - 4):
        x, y = mem_position(i, memory)

        if memory[y][x] == pattern[0]:
            x_1, y_1 = mem_position((i + 1), memory, 1)
            x_2, y_2 = mem_position((i + 2), memory, 2)
            x_3, y_3 = mem_position((i + 3), memory, 3)
            x_4, y_4 = mem_position((i + 4), memory, 4)

            if memory[y_1][x_1] == pattern[1] and memory[y_2][x_2] == pattern[2] and memory[y_3][x_3] == pattern[3] \
                    and memory[y_4][x_4] == pattern[4]:
                counter = counter + 1

        i = i + 1

    return counter


def mem_position(i, memory, shift=0):
    y = int((i + shift)/ len(memory[0]))
    x = (i+shift) % len(memory[0])
    return x, y


if __name__ == "__main__":
    print("Prog 1:")
    print("Message:")

    message = [0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1]
    print(message)

    print("Encoded:")
    print(program_1(message))

    print("\n\nProg 2:")
    encoded_msg = [0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0]
    print("Message attempted to decode")
    print(encoded_msg)

    print("Decoded Result")
    print(program_2(encoded_msg))

    print("\n\nProg 3:")
    print("Number of Patterns in memory")
    memory = generate_data()
    # memory = [[1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1]]
    pattern = [1, 0, 1, 0, 1]

    # print("".join(["".join([str(y) for y in x]) for x in memory]))

    # print(program_3(memory, pattern))
    print(program_3b(memory, pattern))

    '''
    message = [0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0]
    encoded = program_1(message)

    for i in range(0, len(message)):
        m = list(encoded)
        m[i] = m[i] ^ 1
        #m[i + 1] = m[i + 1] ^ 1

        decoded = program_2(m)

        if decoded == message:
            print("SUCCESS")
        else:
            print("AHH WRONG")
            print(message)
            print(decoded)
    '''
