# EDL2024
Repository for our EDL project in year 2024. RRAM Characterization using FPGA.

This repository contains the PCB design files of all the three modules (Main PCB, Resisitive crossbar array, Power PCB), VHDL code, Python code used for GUI, and PCB enclosure design files.

*Operating Procedure*

Since the power PCB module we designed turned out to be faulty, we had to use power banks instead to supply $\pm$ 5 V, which have to connected appropriately to the corresponding pins in the main PCB module. The final design is highly user-friendly and all one needs to do after this step is to provide the parameters under which the characterization is to be executed: amplitude of the input pulse, the location of the resistor in the array, the mode of operation (RD/WR) and the requisite $R_{sense}$ location. The GUI displays both the input and output waveform for a pulse width of 100 $\mu s$, along with the estimated value of the resistance. 
