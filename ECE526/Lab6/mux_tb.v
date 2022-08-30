/*************************************************************************
*** Name: Kenneth Galindo
*** Class: ECE 526 Lab
*** Lab Report: #6
*** File Name: mux_tb
**************************************************************************
*** This file is intended for the implementation of the scalable multiplixer
*** for this lab. We have an A,B and SEL input and OUT output. This mux
*** is scalable by defining its size when needed by SIZE parameter
**************************************************************************/

`timescale 1 ns / 1 ns
`define MONITOR_STR "%d: A = %b, B = %b, SEL = %b| OUT1 = %b, OUT4= %b, OUT5 = %b, OUT6 = %b"

module mux_tb();
	wire OUT1;
	wire [3:0] OUT4;
	wire [4:0] OUT5;
	wire [5:0] OUT6;
	reg [5:0] A, B;
	reg SEL;

	mux M1 (A[0], B[0], SEL, OUT1);
	mux #(4) M2 (A[3:0], B[3:0], SEL, OUT4);
	mux #(.SIZE(5)) M3 (A[4:0], B[4:0], SEL, OUT5);
	defparam M4.SIZE = 6;
	mux M4 (A, B, SEL, OUT6);

	initial 
	begin
	  $monitor (`MONITOR_STR, $time, A, B, SEL, OUT1, OUT4, OUT5, OUT6);
	end

	initial begin
		$vcdpluson;
	#0 $display ("SEL = 0, A = 011100 and B = 100011 (case to show when SEl = 0, A = input)");
		A = 6'b011100;//A initially set to 011100
		B = 6'b100011;//B initially set to 100011
		SEL = 1'b0;//SEL initially set to 0
	#20 $display ("SEL = 1, A and B remain same (case to show when SEL = 1, B = input)");
		SEL = 1'b1;
	#20 $display ("SEL = unknown, must show all 3 cases for individual bits of A and B");
		#20 SEL = 1'bx; //SEL set to x and compare 3 cases
		#20 A = 6'b111010; B = 6'b000101; //A!=B
		#20 B = 6'b110100; //A!=B (some bits)
		#20 B = 6'b111010; //A==B
		#40 $finish;
	end
endmodule
	
