# **CALIFORNIA STATE UNIVERSITY, NORTHRIDGE**

COLLEGE OF ENGINEERING AND COMPUTER SCIENCE

# ECE 527 Lab #5 Report

Author: Kenneth Galindo

Instructor: Gary Burke

Spring 2022

![image](https://user-images.githubusercontent.com/98668234/174352608-28c0adcf-a6dc-42e8-b1ac-e4b4233af9ce.png)



# Table of Contents

[**5.1:** 2](#_Toc100072038)

[**5.2:** 4](#_Toc100072039)

[**5.3:** 5](#_Toc100072040)

[**5.4** 8](#_Toc100072041)

[**5.5:** 17](#_Toc100072042)

[**Conclusion:** 24](#_Toc100072043)

<br>

## **5.1:**

Write the code for a signal generator. using a state machine

The signal generator works as follows

The signal output is a single output, which serially outputs a string of 0s and 1s,

This changes on every leading edge of the clock

The following signal outputs are listed with time going from left to right

| Button             | signal &rarr; |
| ------------------ | --------------|
| No buttons pressed |0000 0000 0000 etc.|
| B1                 | 0001 0001 0001 etc.|
| B3 and B1          | 0011 0011 0011 etc.|
| B2                 | 0000 0001 0000 0001 etc.|
| B3 and B2          | 0000 0011 0000 0011 etc.|

(The gaps are just for readability, they are not in the output)

There is a 10 MHz clock and a reset input

See waveform graphic below for how the signal output is supposed to look

Submit code

![image](https://user-images.githubusercontent.com/98668234/174393801-f27031f9-f993-4192-a20a-90d03f9682ec.png)

_Figure 5.1: Verilog code snippet of fsm. Included are parameters for states, sequential logic, output logic, and state logic._

<br>

## **5.2:**

Write a test bench to test this signal generator

It should test all conditions

Output all top-level signals plus the state

Submit test bench code

![image](https://user-images.githubusercontent.com/98668234/174393867-df7c3783-375d-4165-a7d0-2824f8b128e3.png)

_Figure 5.2: Verilog code of the test bench. Here we are including each case (b1 on, b1&amp;b3 on, b2 no, and b2&amp;b3 on) as well as reset on and off._

<br>

## **5.3:**

Simulate this using VCS

Fix any errors

Record outputs

Submit transcript and output file

Run the GUI and get waveforms of all top-level signals


![image](https://user-images.githubusercontent.com/98668234/174393926-dc6fbb8a-f7b6-4152-a585-05eb7663dd7e.png)

_Figure 5.3: Here we are compiling the 2 files in vcs (vcs -debug -full64 fsm.v fsm\_tb.v)_

<br>

![image](https://user-images.githubusercontent.com/98668234/174393966-5aa9c29b-7e5c-4631-ac90-6a348a4e7cfd.png)

_Figure 5.4: This demonstrates the simulation (using simv command) and its respective results._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394008-878b794a-1e52-45ab-838f-8027e33712cb.png)

_Figure 5.5: Log file output of the simulation. Depicts the different cases needed to demonstrate proper implementation._

<br>

## **5.4**

Run the GUI and get waveforms of all top-level signals

Submit waveform

![image](https://user-images.githubusercontent.com/98668234/174394058-414e6660-ff07-438f-8e69-983e02dad451.png)

_Figure 5.6: Using the command dve -full 64, in order to start up the waveform GUI and show the waveforms_

<br>

![image](https://user-images.githubusercontent.com/98668234/174394085-017a72a9-6080-4bb3-b9c2-4549d70a92ce.png)

_Figure 5.7: Time 0s which shows no buttons pressed and reset is off_

<br>

![image](https://user-images.githubusercontent.com/98668234/174394121-da15ab24-71ea-4e5c-8e7b-27fb0306fc1a.png)

_Figure 5.8: Time 200s which shows b1 on, and the signal goes high soon after it is clocked_

<br>

![image](https://user-images.githubusercontent.com/98668234/174394149-4d912893-5a90-4a67-a8ff-2a8bc77210dd.png)

_Figure 5.9: Time 350s where b1 and b3 are on, which is then clocked soon after and gives a bigger pulse to signal since both buttons are pressed._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394175-03208257-05a2-4053-b945-fe2917cbb3c5.png)

_Figure 5.10: Time 500s, in which b1 and b3 are off, then only b2 is on and is clocked later since b1 and b3 are clocked at a falling edge but interferes with the time in which b2 is active._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394235-42271b08-20ad-4bcf-8059-1d6cbf61a08c.png)

_Figure 5.11: After clocking b2 at time 500s, we then have b3 on along with b2 and is then clocked soon after in the output signal._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394276-dc543a4b-0b33-4892-b282-626656e590a5.png)

_Figure 5.12: Here are time 750s, we set reset to active meanwhile b2 and b3 are still on which then causes no output for the signal. This demonstrates that reset is working as intended._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394328-a64e3b1e-9b95-40d4-9615-bb82f72b5a86.png)

_Figure 5.13: Here at time 800s, we turn off reset and still have b2 and b3 which is clocked later and shown in e output signal._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394367-e552b947-de92-498f-a100-90dd3f57714c.png)

_Figure 5.14: Time 865 demonstrates that after turning off reset and having b2 and b3 active, we get a double width for the output signal since both button are on._

<br>

## **5.5:**

Write a TCL script for Design Compiler

Synthesize with Design compiler.

Use worse case

Use 10Mhz clock

Use uncertainty of 1ns

Fix any errors or warnings,

Write out area and timing reports, and netlist

Submit TCL script, area and timing reports and netlist

![image](https://user-images.githubusercontent.com/98668234/174394406-c452d6c4-bb99-4b3e-892d-a241b8988669.png)

_Figure 5.15: scr file that has all script commands to read files, compile, etc. in order to run the synthesis._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394447-a4918c05-3f83-4b6a-b022-716923efafd7.png)

_Figure 5.16: This shows the dc\_shell window in which after running the scr file with the **source fsm.scr command** , we see that the Verilog files throw 3 warnings which are then fixed._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394479-0301f076-69ac-420b-8e4f-fe26cf887013.png)

_Figure 5.17: Demonstrating the dc\_shell window once more after running the scr file. This time warnings are fixed and gone._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394507-a62b4327-7ea4-40b0-b829-86a780748cb7.png)

_Figure 5.18: Window demonstrating the output file for the compile command. This shows the delays for the build, as well as slack, setup cost, etc._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394556-fec88087-f9d6-4c08-ae16-9061ee86f11d.png)

_Figure 5.19: Output file for the area report of the build. We see that the total cell area is 52.00 with 6 ports and 23 nets._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394600-460ede9f-f2c4-4ba5-8c84-de0c786a82af.png)

_Figure 5.20: Window displaying the timing report of the build, which shows a slack of 4.14. **This was acquired using 10MHz clock, uncertainty of 1ns and worse case.** _

<br>

![image](https://user-images.githubusercontent.com/98668234/174394647-14419762-fc1b-477b-9b50-adbf94df1d25.png)

_Figure 5.21: Output Verilog file for the netlist of the fsm._

<br>

![image](https://user-images.githubusercontent.com/98668234/174394680-0c8eefb3-9c64-48a3-ac7a-3155040fca54.png)

_Figure 5.22:Outpit file of the command **report\_net** which shows port fanouts/fanins and such details of the design_

<br>

## **Conclusion:**

Based on the results and waveform outputs, we can determine that the lab was performed successfully and is running according to specifications. Since our resulting waveforms are in accordance to the provided results, we can safely confirm that the output is as expected. Regarding synthesis, some warnings were simply ignored due to being ignored in synthesis since these warnings were regarding delay controls and initial blocks which are not synthesizable. Though there may have been workarounds for the code, these were simply ignored since the code was a simple fsm which when run through the **check\_design** command returned a simple 1, demonstrating that everything was fine with no errors present. In the event that the code could be updated rather than having warnings ignored within the .scr file, then the design would vary but still have the same functionality but .scr would probably have changes within the reports when synthesis is run.

![image](https://user-images.githubusercontent.com/98668234/174394714-6e1493f3-8a1f-47c0-a656-0c1cf951bd3c.png)

_Figure 5.23: Lab 5 supplied output waveform for comparison to our own results_
