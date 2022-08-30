/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #4
File Name: MUX 2_1
*/

`timescale 1 ns / 1 ns

`define PRIMARY_OUT   2     // ns (primary outputs)
`define FAN_OUT_1     0.5   // ns (one output fanout)
`define FAN_OUT_2     0.8   // ns (two output fanout)
`define FAN_OUT_3     1     // ns (three output fanout)
`define TIME_DELAY_1  3     // ns (one input gates)
`define TIME_DELAY_2  4     // ns (two input gates)
`define TIME_DELAY_3  5     // ns (three input gates)

module MUX2_1 (A, B, SEL, OUT);

 parameter delay1 = `TIME_DELAY_1 + `FAN_OUT_1, delay2 = `TIME_DELAY_2 + `FAN_OUT_1;
//port declarations
	output OUT;
	input A, B, SEL;

//Internal variable declarations
	wire A1, B1, SEL_N;

//netlist
	not #(delay1)(SEL_N, SEL);
	and #(delay2)(A1, A, SEL_N);
	and #(delay2)(B1, B, SEL);
	or #(delay2)(OUT, A1, B1);
endmodule
