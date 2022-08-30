/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #3
File Name: Lab3_SR
*/

`timescale 1 ns/ 1 ns



module Lab3_SR #(delay1 = 7.8, delay2 = 7.8) (Q, Qnot, s0, s1, r0, r1);

	
	//ports
	input s0, s1, r0, r1;
	output Q, Qnot;

	//netlist
	nand #(delay1) NAND1 (N1, s0, s1, Qnot);
	nand #(delay2) NAND2 (N2, r0, r1, Q);
	
endmodule
