#Deshapande Varad Shailesh
#21d070024
#Jan-April 2024 @ IIT Bombay

#this file in earlier versions was named refined_send_receive_ack.py

import time
import sys
import intel_jtag_uart
import numpy as np
from scipy.interpolate import interp1d
import matplotlib.pyplot as plt
from helper import *

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



# while(1):
Vdd = 5

vol_input = (input(f"Enter voltage between 0 and {Vdd}V: "))
# if(vol_input.lower() == "exit"):
#     break
vol_input = float(vol_input)
def double_to_16_bit_binary(double_value):
    if double_value < 0 or double_value > Vdd:
        raise ValueError(f"Input value must be between 0 and {Vdd}")

    scaled_value = int(double_value * ((2**12) /Vdd))

    if scaled_value > 2**12 - 1:
        scaled_value = 2**12 - 1

    binary_string = format(scaled_value, '012b')
    twelve_bits = binary_string
    # print(twelve_bits)
    final = '11' + twelve_bits[0:6] + '00' + twelve_bits[6:]
    return final
    # return '0000' + twelve_bits


binary_representation = double_to_16_bit_binary(vol_input)
# print("Binary representation (with 4 leading zeroes):", binary_representation)

#values to the DAC
to_fpga = convert_to_byte(binary_representation[8:16])
ju.write(to_fpga)
# time.sleep(5)
to_fpga = convert_to_byte(binary_representation[0:8])
ju.write(to_fpga)

#control signals
#  10 00110101 11111011
#  100011 010111 111011 

#         10  010 011 11 11001000 =  100100 111111  001000

#  1M : 100100 111111 100000
r = input("Enter resistor tuple")
r_tuple = r_tuple = tuple(map(int, r.split(',')))
mode = input("Read or Write?")
r_sense = int(input("R_sense"))
control_dict = get_control(r_tuple, mode, r_sense)


s1 = "10"+ str(control_dict['6']) + str(control_dict['5']) + str(control_dict['4']) + str(control_dict['3']) + str(control_dict['2']) + str(control_dict['1'])
s2 = "01"+ str(control_dict['Vt2A']) + str(control_dict['Vt1A']) + str(control_dict['10A']) + str(control_dict['9A']) + str(control_dict['8']) + str(control_dict['7'])
s3 = "10" + str(control_dict['Read/Write']) + str(control_dict['Reset']) + str(control_dict['Hz3A']) + str(control_dict['Hz2A']) + str(control_dict['Hz1A']) + str(control_dict['Vt3A'])

print(s1)
print(s2)
print(s3)
# print(s4)

ju.write(convert_to_byte(s1))
ju.write(convert_to_byte(s2))
ju.write(convert_to_byte(s3))
ju.write(convert_to_byte("01000011"))


 #working latest
# ju.write(convert_to_byte("10000100"))
# ju.write(convert_to_byte("01111111"))
# ju.write(convert_to_byte("10100100"))
# ju.write(convert_to_byte("01000011"))
#working latest closed




#correct one for 300kohm
# ju.write(convert_to_byte("10001000"))
# ju.write(convert_to_byte("01111111"))
# ju.write(convert_to_byte("10100100"))
# ju.write(convert_to_byte("01000011"))

# ju.write(convert_to_byte("10000100"))
# ju.write(convert_to_byte("01011111"))
# ju.write(convert_to_byte("10101001"))
# ju.write(convert_to_byte("01000011"))

# ju.write(convert_to_byte("10100000"))
# ju.write(convert_to_byte("01111111"))
# ju.write(convert_to_byte("10100100"))
# ju.write(convert_to_byte("01000011"))

# time.sleep(0.1)

# to_fpga = convert_to_byte("11010101")
# ju.write(to_fpga)
# time.sleep(0.1)

# ju.flush()

x = ['   ','.  ','.. ','...']
i = 0

n_received_entries = 0
total_entries = 128
received_entries = np.zeros(total_entries)
x_axis = np.arange(0, total_entries, 1)
all_received = 0

samples = []
i = 0


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
    print(from_fpga)
    start = 0
    samples.append(from_fpga)
    # from_fpga = ju.read()
    # print(from_fpga)
    binary1 = (bin(int.from_bytes(from_fpga, byteorder='big')))[-8:]
    binary2 = (bin(int.from_bytes(from_fpga, byteorder='big')))[-16:-8]
    # print(binary1, binary2, from_fpga)

    if binary1 == '0b0':
        all_received = 1
        break
        
    to_fpga = "10000000"
    byte_literal_to_fpga = convert_to_byte(to_fpga)
    ju.write(byte_literal_to_fpga)



# print(samples)
temp = samples[1]
samples = temp[1:]
# print("d", samples)



formatted_binary_list = [format(byte, '08b') for byte in samples]


samples = []
idx = 0
while(idx<len(formatted_binary_list) - 1):
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
print(received_entries, len(received_entries))
x = 18.75*np.arange(0,len(received_entries),1)
y = np.asarray(received_entries)  

# plt.plot(x, received_entries)
# plt.show()


def split_alternately(main_array):
    array1 = []
    array2 = []
    for i, element in enumerate(main_array):
        if i % 2 == 0:
            array1.append(element)
        else:
            array2.append(element)
    return np.asarray(array1), np.asarray(array2)

# array1, array2 = split_alternately(y)
array1 = (np.asarray(y[::2]))[1:]
array2 = np.asarray(y[1::2])
print(len(array1), len(array2))
R_array = np.zeros(len(array1))
for idx in range(len(array1)):
    if(array1[idx] > 0.1 and array2[idx] > 0.1):
        R_array[idx] = (array1[idx]/((array2[idx] - array1[idx])/300))
    else:
        R_array[idx] = 0
# fig,axes = plt.subplots(1,2)
# axes[0].plot(array1)
# axes[0].plot(array2)
plt.plot(array2)
plt.plot(array1)
# plt.plot(np.arange(1,len(array2)+1)+0.5,array2)
# axes[1].plot(R_array)
plt.legend(['V1','V2'])
plt.show()



x = 18.75*np.arange(0,len(received_entries),1)
y = np.asarray(received_entries)  

V2_avg = 0.00
# count = 0
# for val in y:
#     if(val> 0.7*(vol_input/2.00)):
#         V2_avg += val
#         count += 1
# V2_avg  = V2_avg/count

y2 = np.sort(array1)[-5]
# print("array 2", array2)
V2_avg = np.mean(y2)

V1_avg = vol_input
R_sense = 300e3
R_measured = ( V2_avg/((V1_avg-V2_avg)/R_sense) )/1e3
print(f"Resistor value = {R_measured} k ohm")

# print(y)
# Create interpolation function using cubic spline
interpolation_function = interp1d(x, y, kind='previous')

# Interpolate values for a smoother curve
# x_interpolated = np.linspace(x.min(), x.max(), 1000)  # Interpolation points
# y_interpolated = interpolation_function(x_interpolated)  # Interpolated y values

# # Plot original and interpolated data
# plt.plot(x, y, 'o', label='Original Data')
# plt.plot(x_interpolated, y_interpolated, '-', label='Interpolation')
# # plt.xlim(2, 8)  # Set x-axis limits from 2 to 8
# plt.ylim(0, 5)  # Set y-axis limits from -1 to 1
# plt.xlabel('microseconds')
# plt.ylabel('y')
# plt.title('Interpolation of Data')
# plt.legend()
# plt.grid(True)
# plt.show()






#     V2_avg = 0.00
#     # count = 0
#     # for val in y:
#     #     if(val> 0.7*(vol_input/2.00)):
#     #         V2_avg += val
#     #         count += 1
#     # V2_avg  = V2_avg/count

#     y2 = np.sort(y)[-5]
#     V2_avg = np.mean(y2)

#     V1_avg = vol_input
#     R_sense = 300e3 
#     R_measured = ( V2_avg/((V1_avg-V2_avg)/R_sense) )/1e3
#     print(f"Resistor value = {R_measured} k ohm")

#     # print(y)
#     # Create interpolation function using cubic spline
#     interpolation_function = interp1d(x, y, kind='previous')

#     # Interpolate values for a smoother curve
#     x_interpolated = np.linspace(x.min(), x.max(), 1000)  # Interpolation points
#     y_interpolated = interpolation_function(x_interpolated)  # Interpolated y values

#     # Plot original and interpolated data
#     plt.plot(x, y, 'o', label='Original Data')
#     plt.plot(x_interpolated, y_interpolated, '-', label='Interpolation')
#     # plt.xlim(2, 8)  # Set x-axis limits from 2 to 8
#     plt.ylim(0, 5)  # Set y-axis limits from -1 to 1
#     plt.xlabel('microseconds')
#     plt.ylabel('y')
#     plt.title('Interpolation of Data')
#     plt.legend()
#     plt.grid(True)
# # plt.show()
