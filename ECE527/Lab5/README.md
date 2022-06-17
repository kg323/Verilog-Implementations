# **CALIFORNIA STATE UNIVERSITY, NORTHRIDGE**

COLLEGE OF ENGINEERING AND COMPUTER SCIENCE

# **ECE 527 Lab #10 Report**

Author: Kenneth Galindo

Instructor: Gary Burke

Spring 2022

![image](https://user-images.githubusercontent.com/98668234/174352608-28c0adcf-a6dc-42e8-b1ac-e4b4233af9ce.png)


# Table of Contents

[**10.1** 3](#_Toc103715456)

[**10.2** 6](#_Toc103715457)

[**10.3** 8](#_Toc103715458)

[**10.4** 19](#_Toc103715459)

[**10.5** 21](#_Toc103715460)

[**Conclusion** 30](#_Toc103715461)


# **10.1**

Write the Verilog code for a module which includes:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp A write pointer 0 – 1023

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp A read pointer 0- 1023

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp A RAM 1024 X 8

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp (Use the RAM library module, in guidance)
  

The circuit will:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp  Allows sequential writes to the RAM and set a pulsed flag &quot;FULL&quot; when it is full

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp  Allow sequential reads from the RAM and set a pulsed flag &quot;EMPTY&quot; when it is empty

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp  The data written should be a repeated decrementing count 255-0
  

Inputs are:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  8-bit data in

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Clock (clk)
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Write/Read enable

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Reset (rst\_n)
  

Outputs are:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  8-bit data out

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Full flag

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Empty Flag
  
\
\

I/O cells

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add input and output pad cells, as shown in guidance
  

Misc

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add a &#39;timescale   1ns / 1ps

![image](https://user-images.githubusercontent.com/98668234/174353022-0f85d2d1-6294-433c-9839-5c5774a88c08.png)

_Figure 10.1: Counter module to read through the 1024 values that are needed for looping through RAM._

\
\

![image](https://user-images.githubusercontent.com/98668234/174353071-337b0682-efdf-42e8-94a1-3f1937941431.png)

_Figure 10.2: RAM systemverilog file, to create RAM. Contains input and output pads for data, and other needed pads. Also instantiate counter references in order to loop through the address_


![image](https://user-images.githubusercontent.com/98668234/174353145-eb59eb59-9dbd-4ede-aa9f-79565a7fd03c.png)

_Figure 10.3: RAM module continued. Demonstrating when the address is being assigned a value, as well the flags being set (empty and full). We also have the 124x8 RAM instantiated and given ports._


# **10.2**

Write a test bench to test this:

  Write 1024 words to the RAM

  Read 1024 words from the RAM
  

Display:

  Full and Empty flags

  Write/read enable

  Data in and data out
  

Timing:

  Read and write cycles take just 1 clock

  Generate a 10Mhz clock

  Add a &#39;timescale 1ns / 1ps

  Add directive to include SDF timing
  

![image](https://user-images.githubusercontent.com/98668234/174353207-5b00a663-94dd-46da-8cea-4436a39b5f04.png)

_Figure 10.4: Testbench for RAM module. Here we are testing all necessary inputs and outputs, as well as setting the flag conditions by given the appropriate clock and values._


# **10.3**

Simulate using VCS

Use/modify the script provided in guidance

Fix all errors and warnings (except `define warnings from the RAM library)

![image](https://user-images.githubusercontent.com/98668234/174353245-b66f4db4-f8e9-4de5-95bd-d225b825d5cc.png)

_Figure 10.5: Forcefile called RAM.f, which will be used for compiling the n necessary files using vcs command._


![image](https://user-images.githubusercontent.com/98668234/174353290-3f28d292-7c42-4ef3-80fa-8fa34fe1d980.png)

_Figure 10.6: Compiling RAM module and testbench using RAM.f force file with the following command: &quot; __**vcs -full64  -v2005  -f RAM.f -v /opt/ECE\_Lib/SAED32\_EDK/lib/stdcell\_rvt/verilog/saed32nm.v -v /opt/ECE\_Lib/SAED32\_EDK/lib/sram/verilog/saed32sram.v  -v iolib.v -debug\_pp**__&quot; _


![image](https://user-images.githubusercontent.com/98668234/174353328-be2e1bb7-b6a2-4ae4-a780-89e5b4594aa9.png)

_Figure 10.7: Results from compilation; warnings but no errors are given. This is due to some instance port connections from the RAM library._


![image](https://user-images.githubusercontent.com/98668234/174353429-42cfb1a4-ecbf-4586-8729-a3be8f383c03.png)

_Figure 10.8: Simulation results for the Ram.v and its tesetbench after compiling. Simulation results acquired by running the command &quot; __**simv**__&quot;. This screenshot demonstrates that no flags set in this simulation snippet. Condition for setting empty flag is re\_wr = 0 and read\_address is 1023._


![image](https://user-images.githubusercontent.com/98668234/174353462-6de43062-d62c-4c64-9312-1a55ecb5cc92.png)

_Figure 10.9: Empty flag set, due to meeting conditions of re\_wr == 0 and read\_address is set to 1023._


![image](https://user-images.githubusercontent.com/98668234/174353503-7781e285-6744-47a3-aac0-8fe7b064d560.png)

_Figure 10.10: Full flag set due to meeting conditions of re\_wr == 1 and write\_address is == 1023._


![image](https://user-images.githubusercontent.com/98668234/174353534-80c2cae6-43d0-4378-ac06-b5d8d1d51a7b.png)

_Figure 10.11: Saving output using &quot;simv -l lab10.log&quot; command, in order to store the simulation results_


![image](https://user-images.githubusercontent.com/98668234/174353567-b540e3a9-852f-4b13-b793-51a9cd12a48e.png)

_Figure 10.12: In this screenshot, we can see the waveforms for the RAM module. This is displaying that all flags are not set, due to the conditions not being met as we expected them to be._


![image](https://user-images.githubusercontent.com/98668234/174353609-c1089623-a2bb-4829-b2e3-7a0ebb80e97b.png)

_Figure 10.13: This screenshot shows that the waveforms are displaying that after there is a data\_out of 0 and re\_wr is not enabled, the empty flag is being set._


![image](https://user-images.githubusercontent.com/98668234/174353656-969193c9-7f80-43e0-9de4-e9e7f63ac6f2.png)

_Figure 10.14: This screenshot demonstrates when the full flag is being set, which is when the re\_wr bit is enabled and the data\_out value is 255._


![image](https://user-images.githubusercontent.com/98668234/174353696-a04e6ea1-b14b-4dac-aabd-8c4ca602f5c6.png)

_Figure 10.15: End of RAM simulation, which demonstrates flags are set but never reset. This was never part of the intended results but may be constructed at a later stage._


# **10.4**

Compile using DC

Use/modify the TCL

Fix any warnings and errors

(Except &#39;define warning from the RAM library)

![image](https://user-images.githubusercontent.com/98668234/174353741-ac39b8c3-72a4-452c-8bc3-ee14cb2fb1bc.png)

_Figure 10.16: RAM.scr file used to read all necessary files to produce netlist file as well as the SDF file._


![image](https://user-images.githubusercontent.com/98668234/174353807-fec9be76-f086-4c1a-b964-5eba4eeb7c32.png)

![image](https://user-images.githubusercontent.com/98668234/174353836-11341e08-668a-449a-b949-d93fadaabb10.png)

_Figure 10.17: Both screenshots demonstrate the results of the RAM.scr compilation using &quot;__ **dc\_shell and the command source RAM.scr&quot;** _


# **10.5**

Re-simulate using VCS

Use the netlist file

Use the SDF file

The VCS command line should include 2 libraries (see guidance)

The results should be the same as

![image](https://user-images.githubusercontent.com/98668234/174353885-9513f841-cb8b-41dd-b69e-9402e5bad2b6.png)

_Figure 10.18: RAM netlist file. This is created after running the script command_


![image](https://user-images.githubusercontent.com/98668234/174353941-669cde3f-a6a8-4d49-9e27-20a0c2bce4fe.png)

_Figure 10.19: Continuation of the RAM netlist file_


![image](https://user-images.githubusercontent.com/98668234/174353982-eb5ec9be-d16e-4204-806b-63809741fe8a.png)

_Figure 10.20: RAM netlist testbench, This is the same as the RAM.v testbench in order to observe that they create the same simulation results_


![image](https://user-images.githubusercontent.com/98668234/174354027-9b56bd8b-5d7a-4a6f-9c7c-894a02b0939c.png)

_Figure 10.21: Netlist.f (force file), use to call all needed files in order to run the vcs compile command_


![image](https://user-images.githubusercontent.com/98668234/174354088-30c68a55-43fd-4f61-ab69-ef55c92795d0.png)

_Figure 10.22: Compiling RAM module and testbench using RAM.f force file with the following command: &quot; __**vcs -full64  -v2005  -f netlist.f -v /opt/ECE\_Lib/SAED32\_EDK/lib/stdcell\_rvt/verilog/saed32nm.v -v /opt/ECE\_Lib/SAED32\_EDK/lib/sram/verilog/saed32sram.v  -v iolib.v -debug\_pp**__&quot; _


![image](https://user-images.githubusercontent.com/98668234/174354118-003de2db-5849-4ce5-bb78-b7fbe5b5272e.png)

_Figure 10.23: Results from netlist after running the vcs command. These results are accomplished from the netlist file and its testbench, by calling the &quot; __**simv**__&quot; command._


![image](https://user-images.githubusercontent.com/98668234/174354149-ef9d3a43-687e-476d-a76b-0e23cd8b0f6c.png)

_Figure 10.24: Waveforms for the netlist simulation, demonstrating that all flags are empty (no conditions met in order to have flags set)._


![image](https://user-images.githubusercontent.com/98668234/174354190-08becbf6-8632-4a97-88f1-9c06fbfc9812.png)

_Figure 10.25: Waveforms for the netlist simulation, demonstrating that the empty flag is being set (wr\_en == 0 and rd\_address == 1023)_


![image](https://user-images.githubusercontent.com/98668234/174354213-6b14abfb-f188-4950-9794-d67155d3dd32.png)

_Figure 10.26: Waveforms for the netlist simulation, demonstrating that the full flag is being set (wr\_en == 1 and wr\_address == 1023)_


![image](https://user-images.githubusercontent.com/98668234/174354246-ed871a68-fc59-402b-8004-7d20d43a6156.png)

_Figure 10.27: End of simulation and demonstrating proper working code_


# **Conclusion**

We can see that based on our results from the simulated outputs, and the waveforms, that the codes are indeed working as expected and meet expectations for the lab. The only noticeable issue stems from the flags, in which they stay on after being set upon meeting the conditions. This may be remedied by simply having them reset after meeting the needed conditions. Aside from this, no further issues can be noted, seeing as how the lab was performed in accordance to what was needed
