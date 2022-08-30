/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #4
File Name: SR_latch
*/

`timescale 1 ns / 1 ns


`define PRIMARY_OUT   2     // ns (primary outputs)
`define FAN_OUT_1     0.5   // ns (one output fanout)
`define FAN_OUT_2     0.8   // ns (two output fanout)
`define FAN_OUT_3     1     // ns (three output fanout)
`define TIME_DELAY_1  3     // ns (one input gates)
`define TIME_DELAY_2  4     // ns (two input gates)
`define TIME_DELAY_3  5     // ns (three input gates)


module SR_Latch (Q, Qnot, s0, s1, r0, r1);

 parameter delay1 = `TIME_DELAY_3 + `FAN_OUT_2, delay2 = `TIME_DELAY_3 + `FAN_OUT_2;

	
	//ports
	input s0, s1, r0, r1;
	output Q, Qnot;

	//netlist
	nand #(delay1) NAND1(Q, s0, s1, Qnot);
	nand #(delay2) NAND2(Qnot, r0, r1, Q);
	
endmodule
