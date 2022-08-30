/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #4
File Name: MUX 2_1
*/

`timescale 1 ns / 1 ns
module MUX2_1 (OUT, A, B, SEL);
//port declarations
	output OUT;
	input A, B, SEL;

//Internal variable declarations
	wire A1, B1, SEL_N;

//netlist
	not (SEL_N, SEL);
	and (A1, A, SEL_N);
	and (B1, B, SEL);
	or (OUT, A1, B1);
endmodule
