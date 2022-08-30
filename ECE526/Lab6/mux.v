/*************************************************************************
*** Name: Kenneth Galindo
*** Class: ECE 526 Lab
*** Lab Report: #6
*** File Name: mux
**************************************************************************
*** This file is intended for the use of creating the scalable multiplixer
*** for this lab. We have an A,B and SEL input and OUT output. This mux
*** is scalable by defining its size when needed by SIZE parameter
**************************************************************************/

`timescale 1 ns / 1 ns
module mux (A, B, SEL, OUT);
	parameter SIZE = 1;
	input [SIZE-1:0] A,B;
	input SEL;
	output [SIZE-1:0] OUT;
	reg [SIZE-1:0] OUT;
	integer i;

	always@(A or B or SEL) 
	begin
	if (SEL == 1'b0)
	 OUT = A;
	else if (SEL == 1'b1)
	 OUT = B;
	else begin
	 for (i=0; i<SIZE; i = i+1)
	   if (A[i] === B[i])
		OUT [i] = A[i];
	   else
		OUT[i] = 1'bx;
		end
	end
endmodule
