import tkinter as tk
from tkinter import ttk

from helper import *
import time
import sys
import intel_jtag_uart
from scipy.interpolate import interp1d

def to_fpga(V, t, r_num, mode):
    """Send the data to the FPGA

    Args:
        V (float): Voltage pulse value
        t (float): Duration of the pulse
        r_num (int): Resistor number
        mode (string): Read or Write mode
    """
    print(f"Voltage: {V}, Time: {t}, Resistor Number: {r_num}, Mode: {mode}")
    pass


# def from_fpga(V, t):
#     """
#     Receives the data from the FPGA.

#     Args:
#         V (list): The voltage data received from the FPGA.
#         t (list): The time data received from the FPGA.

#     Returns:
#         None
#     """
#     pass

import matplotlib.pyplot as plt
import numpy as np  # for data generation
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg, NavigationToolbar2Tk

x = np.linspace(0, 5, 100)
y = np.random.rand(len(x))  # Initial data


class Send_Window(tk.Toplevel):
    def __init__(self, parent, r_window):
        super().__init__(parent)

        self.geometry("300x100")
        self.title("Send Window")
        self.r_window = r_window

        mode = "Read"

        label_V = tk.Label(self, text="Voltage Pulse Value")
        label_V.pack()
        entry_V = tk.Entry(self, fg="black", bg="white", width=50)
        entry_V.pack()

        label_t = tk.Label(self, text="Duration of the Pulse (in microseconds)")
        label_t.pack()
        entry_t = tk.Entry(self, fg="black", bg="white", width=50)
        entry_t.pack()

        label_r = tk.Label(self, text="Resistor Number (1-9)")
        label_r.pack()
        entry_r = tk.Entry(self, fg="black", bg="white", width=50)
        entry_r.pack()

        label_show = tk.Label(self, text=f"")
        label_show.pack()


        def send():
            global entry
            global V, t, r_num
            V = entry_V.get()
            t = entry_t.get()
            r_num = entry_r.get()
            to_fpga(V, t, r_num, mode)

            label_show.config(
                text=f"Parameters sent: Voltage: {V}, Duration: {t}, Resistor tuple: {r_num_to_tuple(r_num)}"
            )
            self.r_window.update_r_num(r_num)







            Vdd = 5

            vol_input = V

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

            to_fpga_jtag = convert_to_byte(binary_representation[8:16])
            ju.write(to_fpga_jtag)
            # time.sleep(5)
            to_fpga_jtag = convert_to_byte(binary_representation[0:8])
            ju.write(to_fpga_jtag)
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
                    to_fpga_jtag = "10000000"
                    byte_literal_to_fpga = convert_to_byte(to_fpga_jtag)
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
                print(decimal_value, len(samples))

            samples = samples[1:]

            x = np.arange(0,len(received_entries),1)
            samples = np.asarray(received_entries)  

            self.r_window.received_adc = samples  
            # print(y)
            # Create interpolation function using cubic spline
            interpolation_function = interp1d(x, y, kind='previous')

            # Interpolate values for a smoother curve
            x_interpolated = np.linspace(x.min(), x.max(), 1000)  # Interpolation points
            y_interpolated = interpolation_function(x_interpolated)  # Interpolated y values













            self.r_window.focus_force()

        ttk.Button(self, text="Send", width=20, command=send).pack(pady=20)

        ttk.Button(self, text="Close", command=self.destroy).pack(expand=True)


class Receive_Window(tk.Toplevel):
    def __init__(self, parent):
        super().__init__(parent)

        self.geometry("300x100")
        self.title("Receive Window")

        self.x = x
        self.y = y

        self.fig, self.ax = plt.subplots()

        (self.lines,) = self.ax.plot(self.x, self.y)

        self.canvas = FigureCanvasTkAgg(self.fig, master=self)
        self.canvas.draw()
        self.canvas.get_tk_widget().pack(side=tk.TOP, fill=tk.BOTH, expand=1)

        # self.toolbar = NavigationToolbar2Tk(self.canvas)
        # self.toolbar.update()
        self.canvas.get_tk_widget().pack(side=tk.TOP, fill=tk.BOTH, expand=True)

        self.update_plot()

        self.control_label = tk.Label(
            self, text="Send a pulse to characterize the RRAM"
        )
        self.control_label.pack()
        ttk.Button(self, text="Close", command=self.destroy).pack(expand=True)

    def update_plot(self):
        """Updates the plot with new data and redraws it."""
        # self.y = self.y[1:]
        # self.y = np.append(self.y, np.random.rand())
        self.y = self.received_adc
        self.lines.set_ydata(self.y)
        self.canvas.draw()
        self.after(1, self.update_plot)

    def update_r_num(self, r_num):
        """Updates the resistor number."""
        self.r_num = r_num
        self.control_label.config(
            text=f"Control Signals: {get_control(r_num_to_tuple(r_num), 'Read')}"
        )


class App(tk.Tk):
    def __init__(self):
        super().__init__()

        self.controls = []
        self.geometry("3000x2000")
        self.title("RRAM Characterization")

        # place a button on the root window
        ttk.Button(self, text="Send Data", command=self.windows).pack(expand=True)

        # ttk.Button(self, text="Receive Data", command=self.receive_window).pack(
        #     expand=True
        # )

    def windows(self):
        r_window = Receive_Window(self)
        s_window = Send_Window(self, r_window)
        s_window.focus_force()


if __name__ == "__main__":



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









    app = App()
    app.mainloop()

