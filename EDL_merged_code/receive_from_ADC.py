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




to_fpga = "11110000"
byte_literal_to_fpga = convert_to_byte(to_fpga)
ju.write(byte_literal_to_fpga)





x = ['   ','.  ','.. ','...']
i = 0
while(1):
    t = 0.05
    # time.sleep(t)

    both_bits_received = 0
    bit_string = [0,0,0,0,0,0,0,0,0,0]
    while(both_bits_received<3):
        from_fpga = ju.read()
        binary = (bin(int.from_bytes(from_fpga, byteorder='big')))[-8:]
        # print(binary[-8:])
        if binary[0] == '0':
            if both_bits_received != 1:
                both_bits_received += 1
            bit_string[5:] = binary[-5:]
        if binary[0] == '1':
            if both_bits_received != 2:
                both_bits_received += 2
            bit_string[:5] = binary[-5:]
        time.sleep(0.05)
    # print(''.join(bit_string))
    binary_val = ''.join(bit_string)
    decimal_value = 3.3*((int(binary_val, 2))/(2**10))
    decimal_value = "{:.5f}".format(decimal_value)

    print("\r", decimal_value, x[(int(i*t))%4], end='', flush = True)
    # print(f"\rfrom fpga: {binary[-1:]} {x[(int(i*t))%4]}", end='', flush = True)
    i += 1
    # print("\n\n", from_fpga)