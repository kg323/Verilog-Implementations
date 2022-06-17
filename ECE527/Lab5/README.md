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

A write pointer 0 – 1023

A read pointer 0- 1023

A RAM 1024 X 8

(Use the RAM library module, in guidance)

The circuit will:

Allows sequential writes to the RAM and set a pulsed flag &quot;FULL&quot; when it is full

Allow sequential reads from the RAM and set a pulsed flag &quot;EMPTY&quot; when it is empty

The data written should be a repeated decrementing count 255-0

Inputs are:

8-bit data in

Clock (clk)

Write/Read enable

Reset (rst\_n)

Outputs are:

8-bit data out

Full flag

Empty Flag

I/O cells

Add input and output pad cells, as shown in guidance

Misc

Add a &#39;timescale   1ns / 1ps

![](RackMultipart20220617-1-fjeom_html_32ba2e359243bde3.png)

_Figure 10.1: Counter module to read through the 1024 values that are needed for looping through RAM._

![](RackMultipart20220617-1-fjeom_html_8317d8fc44bd8387.png)

_Figure 10.2: RAM systemverilog file, to create RAM. Contains input and output pads for data, and other needed pads. Also instantiate counter references in order to loop through the address_

![](RackMultipart20220617-1-fjeom_html_d2b9656de5c201f2.png)

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

![](RackMultipart20220617-1-fjeom_html_54bcd46d233485a3.png)

_Figure 10.4: Testbench for RAM module. Here we are testing all necessary inputs and outputs, as well as setting the flag conditions by given the appropriate clock and values._

# **10.3**

Simulate using VCS

Use/modify the script provided in guidance

Fix all errors and warnings (except `define warnings from the RAM library)

![](RackMultipart20220617-1-fjeom_html_6f1de0486d67fca2.png)

_Figure 10.5: Forcefile called RAM.f, which will be used for compiling the n necessary files using vcs command._

![](RackMultipart20220617-1-fjeom_html_42044404f22d2c55.png)

_Figure 10.6: Compiling RAM module and testbench using RAM.f force file with the following command: &quot; __**vcs -full64  -v2005  -f RAM.f -v /opt/ECE\_Lib/SAED32\_EDK/lib/stdcell\_rvt/verilog/saed32nm.v -v /opt/ECE\_Lib/SAED32\_EDK/lib/sram/verilog/saed32sram.v  -v iolib.v -debug\_pp**__&quot; _

![](RackMultipart20220617-1-fjeom_html_155da037ba92eb57.png)

_Figure 10.7: Results from compilation; warnings but no errors are given. This is due to some instance port connections from the RAM library._

![](RackMultipart20220617-1-fjeom_html_1a035eba05f9827.png)

_Figure 10.8: Simulation results for the Ram.v and its tesetbench after compiling. Simulation results acquired by running the command &quot; __**simv**__&quot;. This screenshot demonstrates that no flags set in this simulation snippet. Condition for setting empty flag is re\_wr = 0 and read\_address is 1023._

![](RackMultipart20220617-1-fjeom_html_50e119479e0f2bbf.png)

_Figure 10.9: Empty flag set, due to meeting conditions of re\_wr == 0 and read\_address is set to 1023._

![](RackMultipart20220617-1-fjeom_html_7ffe204cdca9e379.png)

_Figure 10.10: Full flag set due to meeting conditions of re\_wr == 1 and write\_address is == 1023._

![](RackMultipart20220617-1-fjeom_html_62a6a28ae6e7a102.png)

_Figure 10.11: Saving output using &quot;simv -l lab10.log&quot; command, in order to store the simulation results_

![](RackMultipart20220617-1-fjeom_html_54409bebda80b1ff.png)

_Figure 10.12: In this screenshot, we can see the waveforms for the RAM module. This is displaying that all flags are not set, due to the conditions not being met as we expected them to be._

![](RackMultipart20220617-1-fjeom_html_fb89e08dcb8f11ce.png)

_Figure 10.13: This screenshot shows that the waveforms are displaying that after there is a data\_out of 0 and re\_wr is not enabled, the empty flag is being set._

![](RackMultipart20220617-1-fjeom_html_e56e4a64ce8c913a.png)

_Figure 10.14: This screenshot demonstrates when the full flag is being set, which is when the re\_wr bit is enabled and the data\_out value is 255._

![](RackMultipart20220617-1-fjeom_html_300cb202a0fdc876.png)

_Figure 10.15: End of RAM simulation, which demonstrates flags are set but never reset. This was never part of the intended results but may be constructed at a later stage._

# **10.4**

Compile using DC

Use/modify the TCL

Fix any warnings and errors

(Except &#39;define warning from the RAM library)

![](RackMultipart20220617-1-fjeom_html_c47a0b9846d34acc.png)

_Figure 10.16: RAM.scr file used to read all necessary files to produce netlist file as well as the SDF file._

![](RackMultipart20220617-1-fjeom_html_743160ebf7892d5b.png)

![](RackMultipart20220617-1-fjeom_html_ca7538271a8291da.png)

_Figure 10.17: Both screenshots demonstrate the results of the RAM.scr compilation using &quot;__ **dc\_shell and the command source RAM.scr&quot;** _

# **10.5**

Re-simulate using VCS

Use the netlist file

Use the SDF file

The VCS command line should include 2 libraries (see guidance)

The results should be the same as

![](RackMultipart20220617-1-fjeom_html_defb321d2ddcecda.png)

_Figure 10.18: RAM netlist file. This is created after running the script command_

![](RackMultipart20220617-1-fjeom_html_ddb98b452404dec9.png)

_Figure 10.19: Continuation of the RAM netlist file_

![](RackMultipart20220617-1-fjeom_html_f913908d7a01705d.png)

_Figure 10.20: RAM netlist testbench, This is the same as the RAM.v testbench in order to observe that they create the same simulation results_

![](RackMultipart20220617-1-fjeom_html_8679a0183ce16e7a.png)

_Figure 10.21: Netlist.f (force file), use to call all needed files in order to run the vcs compile command_

![](RackMultipart20220617-1-fjeom_html_9b5054d3c2cd3ece.png)

_Figure 10.22: Compiling RAM module and testbench using RAM.f force file with the following command: &quot; __**vcs -full64  -v2005  -f netlist.f -v /opt/ECE\_Lib/SAED32\_EDK/lib/stdcell\_rvt/verilog/saed32nm.v -v /opt/ECE\_Lib/SAED32\_EDK/lib/sram/verilog/saed32sram.v  -v iolib.v -debug\_pp**__&quot; _

![](RackMultipart20220617-1-fjeom_html_35367454b0a84f2b.png)

_Figure 10.23: Results from netlist after running the vcs command. These results are accomplished from the netlist file and its testbench, by calling the &quot; __**simv**__&quot; command._

![](RackMultipart20220617-1-fjeom_html_3825f9b2223f4173.png)

_Figure 10.24: Waveforms for the netlist simulation, demonstrating that all flags are empty (no conditions met in order to have flags set)._

![](RackMultipart20220617-1-fjeom_html_9242f3c6bab002bb.png)

_Figure 10.25: Waveforms for the netlist simulation, demonstrating that the empty flag is being set (wr\_en == 0 and rd\_address == 1023)_

![](RackMultipart20220617-1-fjeom_html_36b803c84a93e23f.png)

_Figure 10.26: Waveforms for the netlist simulation, demonstrating that the full flag is being set (wr\_en == 1 and wr\_address == 1023)_

![](RackMultipart20220617-1-fjeom_html_c986633c3b039a72.png)

_Figure 10.27: End of simulation and demonstrating proper working code_

# **Conclusion**

We can see that based on our results from the simulated outputs, and the waveforms, that the codes are indeed working as expected and meet expectations for the lab. The only noticeable issue stems from the flags, in which they stay on after being set upon meeting the conditions. This may be remedied by simply having them reset after meeting the needed conditions. Aside from this, no further issues can be noted, seeing as how the lab was performed in accordance to what was needed
