import time
import sys
import intel_jtag_uart

def convert_to_byte(input_bits):
    # Convert input_bits to an integer
    if isinstance(input_bits, str):
        input_bits = int(input_bits, 2)  # Assuming input_bits is a binary string
    elif isinstance(input_bits, int):
        pass  # No conversion needed
    else:
        raise ValueError("Input must be a binary string or an integer")

    # Convert integer to byte literal
    byte_literal = input_bits.to_bytes(1, byteorder='big')

    return byte_literal


try:
    ju = intel_jtag_uart.intel_jtag_uart()

except Exception as e:
    print(e)
    sys.exit(0)




vol_input = float(input("Enter voltage between 0 and 3.3V: "))

def double_to_16_bit_binary(double_value):
    if double_value < 0 or double_value > 3.3:
        raise ValueError("Input value must be between 0 and 3.3")

    scaled_value = int(double_value * ((2**12) / 3.3))

    if scaled_value > 2**12 - 1:
        scaled_value = 2**12 - 1

    binary_string = format(scaled_value, '012b')
    twelve_bits = binary_string
    final = '11' + twelve_bits[0:6] + '00' + twelve_bits[6:]
    return final
    # return '0000' + twelve_bits


binary_representation = double_to_16_bit_binary(vol_input)
# print("Binary representation (with 4 leading zeroes):", binary_representation)

to_fpga = convert_to_byte(binary_representation[8:16])
ju.write(to_fpga)
# time.sleep(5)
to_fpga = convert_to_byte(binary_representation[0:8])
ju.write(to_fpga)

# x = ['   ','.  ','.. ','...']
# i = 0
# while(1):
#     t = 0.05
#     time.sleep(t)
#     from_fpga = ju.read()
#     binary = bin(int.from_bytes(from_fpga, byteorder='big'))
#     print(f"\rfrom fpga: {binary[-1:]} {x[(int(i*t))%4]}", end='', flush = True)
#     i += 1
#     # print("\n\n", from_fpga)