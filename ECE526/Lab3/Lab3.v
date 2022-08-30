/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #3
File Name: Lab3_SR
*/

`timescale 1 ns/ 1ns



module SR_Latch (Q, Qnot, s0, s1, r0, r1);

	parameter delay1 = 7.0;
	parameter delay2 = 7.0;
	input s0, s1, r0, r1;
	output Q, Qnot;


	nand #(delay1) NAND1 (N1, s0, s1, Qnot);
	nand #(delay2) NAND2 (N2, r0, r1, Q);
	
endmodule
