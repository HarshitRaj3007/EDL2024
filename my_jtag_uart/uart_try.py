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

# to_fpga = input("Enter 8 bits: ")
to_fpga = "11110000"
byte_literal_to_fpga = convert_to_byte(to_fpga)
ju.write(byte_literal_to_fpga)

x = ['   ','.  ','.. ','...']
i = 0
while(1):
    t = 0.05
    time.sleep(t)
    from_fpga = ju.read()
    binary = bin(int.from_bytes(from_fpga, byteorder='big'))
    print(f"\rfrom fpga: {binary[-1:]} {x[(int(i*t))%4]}", end='', flush = True)
    i += 1
    # print("\n\n", from_fpga)