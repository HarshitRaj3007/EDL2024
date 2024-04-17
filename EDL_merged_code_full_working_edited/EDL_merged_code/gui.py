import tkinter as tk
from tkinter import ttk

from helper import *


def to_fpga(V, t, r_num, mode):
    """Send the data to the FPGA
    
    Args:
        V (float): Voltage pulse value
        t (float): Duration of the pulse
        r_num (int): Resistor number
        mode (string): Read or Write mode
    """
    control_signals = r_num_to_tuple(r_num)
    print(control_signals)
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
        self.y = self.y[1:]
        self.y = np.append(self.y, np.random.rand())
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
    app = App()
    app.mainloop()
