# EDL2024
Repository for our EDL project in year 2024. RRAM Characterization using FPGA.

This repository contains the PCB design files of all the three modules (Main PCB, Resisitive crossbar array, Power PCB), HDL code, Python code used for GUI, and PCB enclosure design files.

There are 3 files for documentation:
1. Documentation for programming, laptop-FPGA interface & GUI
2. Documentation for PCB
3. Documentation for Testing(mainly Analog)

**HDL files**: EDL_merged_code encapsulates all the HDL code and the .py files for GUI. folder has a readme file that holds detailed information about the directory.

**PCB files**: MiniCircuit contains KiCAD files for a scaled-down version of the PCB intended for testing, FinalCircuit contains design files of the main PCB module, ResistiveCrossbar contains design files for a 3 $\times$ 3 resistive crossbar array and PowerConverter has the design files for the power PCB which was intended to power the entire module from wall supply of 230 V AC. 

**CAD files**: A basic PCB enclosure which can be fabricated via laser cutting can be found in the Enclosure_Fusion360.dxf file. Couldn't add the .stp file for the reference 3D design of the complete circuit due to file size restrictions in GitHub. 

**Operating Procedure**

Since the power PCB module we designed turned out to be faulty, we had to use power banks instead to supply $\pm$ 5 V, which have to connected appropriately to the corresponding pins in the main PCB module. The final design is highly user-friendly and all one needs to do after this step is to provide the parameters under which the characterization is to be executed: amplitude of the input pulse, the location of the resistor in the array, the mode of operation (RD/WR) and the requisite $R_{sense}$ location. The GUI displays both the input and output waveform for a pulse width of 100 $\mu s$, along with the estimated value of the resistance. 
