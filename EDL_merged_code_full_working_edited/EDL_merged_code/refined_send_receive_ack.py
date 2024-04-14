import time
import sys
import intel_jtag_uart
import numpy as np
from scipy.interpolate import interp1d
import matplotlib.pyplot as plt

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




Vdd = 5

vol_input = float(input(f"Enter voltage between 0 and {Vdd}V: "))

def double_to_16_bit_binary(double_value):
    if double_value < 0 or double_value > Vdd:
        raise ValueError(f"Input value must be between 0 and {Vdd}")

    scaled_value = int(double_value * ((2**12) /Vdd))

    if scaled_value > 2**12 - 1:
        scaled_value = 2**12 - 1

    binary_string = format(scaled_value, '012b')
    twelve_bits = binary_string
    print(twelve_bits)
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
# ju.flush()

# time.sleep(0.1)

# to_fpga = convert_to_byte("11010101")
# ju.write(to_fpga)
# time.sleep(0.1)

# ju.flush()

x = ['   ','.  ','.. ','...']
i = 0

n_received_entries = 0
total_entries = 32
received_entries = np.zeros(total_entries)
x_axis = np.arange(0, total_entries, 1)
all_received = 0

samples = []
i = 0
# while(ju.read() == b'')
    # print(bin(int.from_bytes(b"\xa0", byteorder='big')))
    # print(ju.read())
    # i+=1

from_fpga = b''
start = 1
for sample_index in range(total_entries):
    decimal_value = 0.00
    both_bits_received = 0
    bit_string = ['0','0','0','0','0','0','0','0','0','0']

    while(from_fpga == b'' and start == 1):
        from_fpga = ju.read()
        # print(from_fpga)
    if(start == 0):
        from_fpga = ju.read()
    # print(from_fpga)
    start = 0
    # from_fpga = ju.read()
    # print(from_fpga)
    binary1 = (bin(int.from_bytes(from_fpga, byteorder='big')))[-8:]
    binary2 = (bin(int.from_bytes(from_fpga, byteorder='big')))[-16:-8]
    # print(binary1, binary2, from_fpga)

    if binary1 == '0b0' and len(samples) > 1:
        all_received = 1
        break

    if not(all_received):
        if binary1[0] == '0':
            if both_bits_received != 1:
                both_bits_received += 1
            bit_string[5:] = binary1[-5:]
        if binary1[0] == '1':
            if both_bits_received != 2:
                both_bits_received += 2
            bit_string[:5] = binary1[-5:]
        if binary2[0] == '0':
            if both_bits_received != 1:
                both_bits_received += 1
            bit_string[5:] = binary2[-5:]
        if binary2[0] == '1':
            if both_bits_received != 2:
                both_bits_received += 2
            bit_string[:5] = binary2[-5:]

        binary_val = ''.join(bit_string)
        decimal_value = Vdd*((int(binary_val, 2))/(2**10))
        decimal_value = "{:.2f}".format(decimal_value)

        decimal_value = 0.0

        
        received_entries[n_received_entries] = decimal_value
        n_received_entries += 1
        samples.append(from_fpga)
        to_fpga = "10000000"
        byte_literal_to_fpga = convert_to_byte(to_fpga)
        ju.write(byte_literal_to_fpga)



# print(samples)
temp = samples[0][-2:]+samples[1]
samples = temp
# print(samples)



formatted_binary_list = [format(byte, '08b') for byte in samples]


samples = []
idx = 0
while(idx<len(formatted_binary_list)):
    sample = formatted_binary_list[idx][3:] + formatted_binary_list[idx+1][3:]
    idx += 2
    samples.append(sample)
reversed_samples = samples[::-1]
# print(len(samples))
# for i in reversed_samples:
    # print(i, end="")
print("\n\n")
received_entries = []
for sample in samples:
    decimal_value = Vdd*((int(sample, 2))/(2**10))
    # decimal_value = "{:.2f}".format(decimal_value)
    received_entries.append(decimal_value)
    # print(decimal_value, len(samples))

received_entries = np.asarray(received_entries)[1:]

x = 18.75*np.arange(0,len(received_entries),1)
y = np.asarray(received_entries)  

V2_avg = 0.00
# count = 0
# for val in y:
#     if(val> 0.7*(vol_input/2.00)):
#         V2_avg += val
#         count += 1
# V2_avg  = V2_avg/count

y2 = np.sort(y)[-5]
V2_avg = np.mean(y2)

V1_avg = vol_input
R_sense = 300e3 
R_measured = ( V2_avg/((V1_avg-V2_avg)/R_sense) )/1e3
print(f"Resistor value = {R_measured}")

# print(y)
# Create interpolation function using cubic spline
interpolation_function = interp1d(x, y, kind='previous')

# Interpolate values for a smoother curve
x_interpolated = np.linspace(x.min(), x.max(), 1000)  # Interpolation points
y_interpolated = interpolation_function(x_interpolated)  # Interpolated y values

# Plot original and interpolated data
plt.plot(x, y, 'o', label='Original Data')
plt.plot(x_interpolated, y_interpolated, '-', label='Interpolation')
# plt.xlim(2, 8)  # Set x-axis limits from 2 to 8
plt.ylim(0, 5)  # Set y-axis limits from -1 to 1
plt.xlabel('microseconds')
plt.ylabel('y')
plt.title('Interpolation of Data')
plt.legend()
plt.grid(True)
plt.show()
