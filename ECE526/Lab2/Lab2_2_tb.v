/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #2
File Name: Lab2_2_tb
*/

`timescale 1 ns/ 1 ns

`define MONITOR_STR_1 "%d: in1 = %b, in2 = %b, UUT.A1 = %b, UUT.A2 = %b, UUT.NT = %b , UUT.O1 | out = %b"


module Lab2_1_tb();
	reg in1, in2;
	wire out;
	Lab2_1 UUT(in1, in2, out);

	initial begin
		$monitor (`MONITOR_STR_1, $time, in1, in2, UUT.A1, UUT.A2, UUT.NT, UUT.O1, out);
	end

	initial begin
	$vcdpluson; //For graphical viewer (waveforms)
	#15 in1 = 1'b0;
	    in2 = 1'b0;
	#15 in1 = 1'b0;
	    in2 = 1'b1;
	#15 in1 = 1'b1;
	    in2 = 1'b0;
	#15 in1 = 1'b1;
	    in2 = 1'b1;
	#15 $finish;
	end
endmodule
