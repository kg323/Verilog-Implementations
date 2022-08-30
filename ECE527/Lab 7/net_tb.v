/*
Name: Kenneth Galindo
Class: ECE 527 Lab
Lab Report: #7
File Name: fsm_tb.v
*/

`timescale 1 ns / 1 ps


module net_tb();
	reg clk, reset, b1, b2, b3;
	wire signal;

	netlist f0(.clk(clk), .reset(reset), .b1(b1), .b2(b2), .b3(b3), .signal(signal));


	always #50 clk = ~clk;

	
	initial begin
	clk=0;
	$vcdpluson;
	reset = 1;
	b1 = 0; b2 = 0; b3 = 0; //all are off (no butons pressed)
  #250 reset =0;
	#2000 
  @(negedge clk) b1 = 1; b2 = 0; b3 =0; //b1 is on
	#1500 
  @(negedge clk)
  b1 = 1; b2 = 0; b3 = 1;//b1 and b3 on
	#1500 
  @(negedge clk)
  b1 = 0; b2 = 1; b3 = 0;//b2 is on
	#2000 
  @(negedge clk)
  b1 = 0; b2 = 1; b3 = 1;//b2 and b3 is on
	#120 $finish; //stop after 120s
	end

	always @(negedge clk)
	$display(
	"%d clk = %d reset= %d b1= %d b2= %d b3= %d signal=", $time, clk, reset, b1, b2, b3, signal);



endmodule 
