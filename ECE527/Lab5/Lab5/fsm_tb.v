/*
Name: Kenneth Galindo
Class: ECE 527 Lab
Lab Report: #5
File Name: fsm_tb.v
*/
module fsm_tb();
	reg clk, reset, b1, b2, b3;
	wire signal;

	fsm f0(.clk(clk), .reset(reset), .b1(b1), .b2(b2), .b3(b3), .signal(signal));


	always #5 clk = ~clk;

	
	initial begin
	clk=0;
	$vcdpluson;
	reset = 0;
	b1 = 0; b2 = 0; b3 = 0; //all are off (no butons pressed)
	#200 b1 = 1; b2 = 0; b3 =0; //b1 is on
	#150 b1 = 1; b2 = 0; b3 = 1;//b1 and b3 on
	#150 b1 = 0; b2 = 1; b3 = 0;//b2 is on
	#200 b1 = 0; b2 = 1; b3 = 1;//b2 and b3 is on
	#50 reset = 1;
	#50 reset = 0;
	#120 $finish; //stop after 120s
	end

	initial
	$monitor(
	"%d clk = %d reset= %d b1= %d b2= %d b3= %d signal=", $time, clk, reset, b1, b2, b3, signal);



endmodule 
