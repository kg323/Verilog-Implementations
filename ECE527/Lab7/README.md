# **CALIFORNIA STATE UNIVERSITY, NORTHRIDGE**

COLLEGE OF ENGINEERING AND COMPUTER SCIENCE

# ECE 527 Lab #7 Report

Author: Kenneth Galindo

Instructor: Gary Burke

Spring 2022

![image](https://user-images.githubusercontent.com/98668234/174352608-28c0adcf-a6dc-42e8-b1ac-e4b4233af9ce.png)

<br>

# Table of Contents

[**7.2:** 3](#_Toc101716695)

[**7.3:** 5](#_Toc101716696)

[**7.4:** 7](#_Toc101716697)

[**7.5:** 8](#_Toc101716698)

[**7.6:** 9](#_Toc101716699)

[**7.7:** 10](#_Toc101716700)

[**7.8:** 16](#_Toc101716701)

[**Conclusion:** 17](#_Toc101716702)

<br>

# **7.2:**

Check the testbench from LAB 5 and check:

- The inputs change only on the negedge of the clock
- The outputs are only displayed just before the posedge of the clock

![image](https://user-images.githubusercontent.com/98668234/174395889-e7291786-0b41-489e-be49-b529ce8bfe29.png)

_Figure 7.1: Code for the original fsm code used within Lab 5. This code remains unchanged and still implements same concept as Lab 5 requirements._

<br>

![image](https://user-images.githubusercontent.com/98668234/174395921-60646cff-6ae1-42b2-8d19-848d7fff7f66.png)

_Figure 7.2: Fsm.v testbench code which demonstrates having the inputs change only on negedge of clock and outputs display right before posedge of clock_

<br>

# **7.3:**

Use the code from lab 5

Run code and testbench using VCS as before in lab5

Record the outputs and the waveform ( **using dve -full64 &amp;** )

![image](https://user-images.githubusercontent.com/98668234/174396005-0925d93e-761b-4659-9942-97b513927112.png)

_Figure 7.3: Compiling both the fsm.v and fsm\_tb.v codes in order to demonstrate their simulation results. These were compiled using the command &quot; **vcs -debug -full64 fsm.v fsm\_tb.v**&quot;._

<br>

![image](https://user-images.githubusercontent.com/98668234/174396057-301d1add-f8c1-492a-b717-2123f64f4afd.png)

_Figure 7.4: Simulating the results of the the fsm codes, which were simulated and saved into log file using command &quot; **simv -l lab7\_1.log**&quot;_

<br>

![image](https://user-images.githubusercontent.com/98668234/174396140-fe613875-266b-4ee0-aa82-8c5453da203a.png)

_Figure 7.5: Waveform results of the codes. These waveforms show the original concept of Lab 5, with the changes of inputs on negedge of clock and outputs just before posedge of clock. This will be used for later comparison when compiling the synthesized design._

<br>

# **7.4:**

Update the library by replacing the &quot;.synopsys\_dc.setup&quot; file in your user directory (~) with the new one

Check the new setup file references the SAED32 library

![image](https://user-images.githubusercontent.com/98668234/174396212-3eb27e68-5b16-431a-bac0-b676e48dd770.png)

_Figure 7.6: Screenshot of the new setup file which will be sued for this lab. This new setup file is placed within the working directory of Lab 7, and will be used when compiling the synthesized design_

<br>

# **7.5:**

Update your tcl file to output an .sdf file

Eg write\_sdf &quot;fsm.sdf&quot;

(As well as netlist and reports)

![image](https://user-images.githubusercontent.com/98668234/174396244-81f3eddd-e517-4583-8a8c-030ad392dbac.png)

_Figure 7.7: Screenshot for the fsm.scr file which contains all commands for synthesis. Within the second to last line, we have the **write\_sdf command which creates our fsm.sdf file.** _

<br>

# **7.6:**

Synthesize fsm.v using design compiler and the updated tcl file

![image](https://user-images.githubusercontent.com/98668234/174396287-0b58e37f-4b2a-4703-8fa4-3ff48556c973.png)

_Figure 7.8: Using the command &quot; **source fsm.scr**&quot; in order to run our script file which will run all synthesis commands to create all needed reports, netlists, files, etc. from synthesis._

<br>

# **7.7:**

Run VCS using the netlist file output in step 5. Use command below to compile

vcs -full64 -sverilog -f fsm\_net.f -v /opt/ECE\_Lib/SAED32\_EDK/lib/stdcell\_rvt/verilog/saed32nm.v -debug\_pp

Run simv as normal

Record the outputs and the waveform (using

Run the GUI (dve), and record the waveform

![image](https://user-images.githubusercontent.com/98668234/174396327-2dc7c975-6878-4179-8b8b-92c5e1b15c93.png)

_Figure 7.9: Creating the force file called &quot;fsm\_net.f&quot; which will be used to compile our netlist file_

<br>

![image](https://user-images.githubusercontent.com/98668234/174396360-b783d8a0-40a6-4865-bc7f-aab6d0159446.png)

_Figure 7.10: Screenshot of netlist file created from our synthesis design commands. This will be used within our compile command, which is called from the force file mentioned above._

<br>

![image](https://user-images.githubusercontent.com/98668234/174396402-c59c8c02-d119-4d3b-8ee7-395d0d03b3b4.png)

_Figure 7.11: Testbench file for the synthesized netlist file. This will be compiled using our force file and adequate command._

<br>

![image](https://user-images.githubusercontent.com/98668234/174396426-cd2a692f-e8d0-430a-8a25-39b423890d12.png)

_Figure 7.12: Compiling our netlist file as well as its corresponding testbench file, using the command &quot; **vcs -full64 -sverilog -f fsm\_net.f -v /opt/ECE\_Lib/SAED32\_EDK/lib/stdcell\_rvt/verilog/saed32nm.v -debug\_pp**&quot;._

<br>

![image](https://user-images.githubusercontent.com/98668234/174396449-bcef9a38-8f26-494c-9a99-fe2b489d5e52.png)

_Figure 7.13: Output from the vcs command which compiled files successfully, which will allow simulation to occur._

<br>

![image](https://user-images.githubusercontent.com/98668234/174396474-860a8153-edd4-4125-9aaf-8e40bbc31683.png)

![image](https://user-images.githubusercontent.com/98668234/174396498-2fc03ce9-a4ef-4b6a-a7b9-f544211f3960.png)

_Figure 7.14: Simulation output of the netlist.v and net\_tb.v code. The simulation output was created and saved into a log file for using the command &quot; **simv -l lab7\_2.log**&quot;_

<br>

![image](https://user-images.githubusercontent.com/98668234/174396538-965f5ab8-3bdd-416f-a226-49be62f40336.png)

_Figure 7.15: Screenshot of the waveform output for the synthesized design. This depicts the waveforms for the netlist.v and netlist testbench code, which was created by using the command &quot; **dve -full64 &amp;&quot;.** _

<br>

# **7.8:**

Check output matches the output in step 2, and the waveforms match

Submit transcripts, netlists, outputs, and waveforms

![image](https://user-images.githubusercontent.com/98668234/174396607-3ccc7fd9-0f10-45d3-b87c-1d3c64475beb.png)

_Figure 7.16: Waveform outputs from initial simulation. This was from original Lab 5 code, with the only change being from having input change at negedge of clock, and outputs appear just before posedge of clock._

<br>

![image](https://user-images.githubusercontent.com/98668234/174396658-47af0fb1-e59c-46cf-a59b-aa9717436ebd.png)

_Figure 7.17: Output waveforms for the synthesized design. Upon inspection of the initial waveform outputs and the synthesized design waveforms, we can see that they both are identical which indicates that the waveforms match and therefore the experiment on this lab was performed successfully._

<br>

# **Conclusion:**

The purpose of this lab was to create a synthesized design for our previously implemented code for Lab 5. Since the previous lab was corresponding to a particular state machine code, we were able to implement within lab 7 with no issues. The synthesized design would be utilized within this lab in order to compare original state machine code waveform outputs (with a slight modification), and the synthesized design&#39;s waveform outputs. Within our implementation, we were able to successfully compile using vcs, and found that these two waveforms were matching when compared. This indicates that the two designs can produce the same output since a synthesized design since synthesis converts any high-level description language (in our case Verilog), into an optimized gate-level representation. In this lab, we had to create a separate testbench for the synthesized design which was implemented in the same manner for our original Lab 5 fsm.v code. Doing so only produced the same simulated results, therefore directly identifying that these two designs apply the same instruction. Hence, we can confirm this lab was performed successfully and works to expectations.
