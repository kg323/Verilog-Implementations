# **CALIFORNIA STATE UNIVERSITY, NORTHRIDGE**

COLLEGE OF ENGINEERING AND COMPUTER SCIENCE

# **ECE 527 Lab #3 Report**

Author: Kenneth Galindo

Instructor: Gary Burke

Spring 2022

![image](https://user-images.githubusercontent.com/98668234/174352608-28c0adcf-a6dc-42e8-b1ac-e4b4233af9ce.png)

<br>

# Table of Contents

[**3.1:** 2](#_Toc98100273)

[**3.2:** 7](#_Toc98100274)

[**3.3:** 9](#_Toc98100275)

[**3.4:** 13](#_Toc98100276)

[**Summary/Conclusion:** 14](#_Toc98100277)

<br>

# **3.1:**

prepare to synthesize the clock.v and associated Verilog files using Design Compiler

Write a Tcl script to

Read in the files, using analyze and elaborate

Link the files

Set constraints

Synthesize (compile)

Create reports

Create netlists (give unique name to netlist)

Submit copy of the Tcl script

<br>

![image](https://user-images.githubusercontent.com/98668234/174461676-ca10364c-a4d0-4d7e-bec8-e58a0dfe0684.png)

_Figure 3.1: Text file after elaborate command. Some errors appear_

<br>

![image](https://user-images.githubusercontent.com/98668234/174461698-38e32dab-6d90-422b-9ad1-4dd00c133d2f.png)

_Figure 3.2: Text file output after design command executed. A good amount of warnings present._

<br>

![image](https://user-images.githubusercontent.com/98668234/174462855-e1eed383-e12c-4e30-a514-d16ccb17fa17.png)

_Figure 3.3: Text file depicting the design timing report. Current slack is 0.01 with a frequency of 100MHz._


<br>


![image](https://user-images.githubusercontent.com/98668234/174462906-a634d56b-f61e-4eec-b28e-f2e151d22215.png)

_Figure 3.4: Text file demonstrating the area report after command is input into dc\_shell. Can see that total cell area is 1132_

<br>


![image](https://user-images.githubusercontent.com/98668234/174462917-583fd52d-7601-4c99-8fea-b6834368f805.png)

_Figure 3.5: Netlist file showing the output after analyzing and elaborating files_

<br>

# **3.2:**

Use constraints of

to 50Mhz with uncertainty of 2ns

area 500

Run your Tcl script and fix any errors or warnings

Submit copies of the transcript and timing and area reports

<br>

![image](https://user-images.githubusercontent.com/98668234/174462935-5b714a87-5e1c-4033-87fc-0b296193bbf1.png)

_Figure 3.6: Script file which is changing constraints of the clock frequency to 50MHz, as well as the clock uncertainty to 2ns, and the max area to 500._

<br>


![image](https://user-images.githubusercontent.com/98668234/174462937-62ad6773-5ee8-4fe4-97aa-ecabb2849a30.png)

_Figure 3.7: We can see that the area has increased after changing the constraints. Files can be found with submissions_

<br>

![image](https://user-images.githubusercontent.com/98668234/174462941-337c9af8-66bf-4a05-98b3-cb3404f79ca3.png)

_Figure 3.8: We can also see that after changing the constraints, the slack has decreased into a negative value -6.25_

<br>

# **3.3:**

Try increasing the clock frequency setting and find maximum frequency before slack becomes negative

Note if the area has increased

Submit timing and area reports

<br>

![image](https://user-images.githubusercontent.com/98668234/174462947-8739b45b-257f-4858-89b5-fada42316fb7.png)

_Figure 3.9: Here we increase the frequency from 100MHz to 111MHz (which is 9ns). This gives us a 0 slack value._

<br>

![image](https://user-images.githubusercontent.com/98668234/174462954-21fe12a4-2a44-4816-b7e8-cc4dba3c29e5.png)

_Figure 3.10: Demonstrating that there is a 0 value for slack after changing the clock frequency. This is the frequency right before the slack goes into negative value range._

<br>

![image](https://user-images.githubusercontent.com/98668234/174462960-0a48fbdb-ab6d-4bde-a55d-ee5cc0effd8a.png)

_Figure 3.11: Showing the area as well after changing the frequency, which shows that the area lowered from previous value._

<br>

# **3.4:**

Examine netlist and find fanout of clock clk1, and input btn[1]

Submit netlist and results

<br>

![image](https://user-images.githubusercontent.com/98668234/174462971-d7f0e466-22b5-4442-85d3-1e9144fc9d54.png)

_Figure 3.12: Demonstrating the netlist to find the fanout values for clk1 (which is 54) and btn[1] (which is 2)_

<br>

# **Summary/Conclusion:**

After obtaining the results for this lab, we can see that the script file was working as intended and got the expected results. Though some fixes can be made, such as getting rid of some warnings (which may be done by either suppressing or fixing the issues at hand) In order to get no warnings/errors for the results. Aside from these simple warnings/errors, we can see that the results gave us what we wanted to learn from the lab and no further implementation are needed in order to successfully run the lab script file in the dc\_shell command window.
