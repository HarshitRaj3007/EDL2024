import time
import sys
import intel_jtag_uart
import numpy as np
from scipy.interpolate import interp1d
import matplotlib.pyplot as plt

Vdd = 5.0

samples = [b'\x03\xe0\x00\xe0\x00\xe0\x01\xe0\x0f\xe0\x05\xe0\x0b\xe0\x06\xe0\n\xe0\x04\xe0\x0c\xe0\x05\xe0\x0e\xe0\x05\xe0\x0f\xe0\x05\xe0\x0b\xe0\x06\xe0\n\xe0\x04\xe0\x0c\xe0\x05\xe0\r\xe0\x06\xe0\x0f\xe0\x05\xe0\x0b\xe0\x06\xe0\n\xe0\x04\xe0\x0c\xe0\x01\xe0\x00\xe0\x00\xe0\x03\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x03\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x03\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x01\xe0\x0c\xe0\x05\xe0\r\xe0\x05\xe0\x0f\xe0\x05\xe0\x0b\xe0\x06\xe0\n\xe0\x04\xe0\x0c\xe0\x05\xe0\r\xe0\x05\xe0\x0f\xe0\x05\xe0\x0b\xe0\x06\xe0\n\xe0\x04\xe0\x0c\xe0\x05\xe0\r\xe0\x06\xe0\x0f\xe0\x06\xe0\x0b\xe0\x01\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x03\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x03\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x00\xe0\x03\xe0\x03\xe0\x0b\xe0\x06\xe0\n\xe0\x04\xe0\x0c\xe0\x05\xe0\r\xe0\x06\xe0\x0f\xe0\x05\xe0\x0b\xe0']
temp = samples[0]
samples = temp[0:]
print("d", samples)



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
fig,axes = plt.subplots(1,2)
axes[0].plot(array1)
axes[0].plot(array2)
# plt.plot(np.arange(1,len(array2)+1)+0.5,array2)
axes[1].plot(R_array)
plt.legend(['d','d','a'])
plt.show()