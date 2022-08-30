/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #3
File Name: Lab3_DFF
*/

`timescale 1 ns / 1 ns

`define FAN_OUT_1 	0.5	//ns (one output fanout)
`define FAN_OUT_2 	0.8	//ns (two output fanout)
`define FAN_OUT_3 	1.0	//ns (three output fanout)
`define TIME_DELAY_1 	3	//ns (one input gates)

module Lab3_DFF (q, qbar, clock, data, clear);
	input clock, data, clear;
	output q, qbar;

	wire s, sbar, r, rbar, cbar, clkbar, clk, clr, d, dbar;

	//First NOT gates
	not #(`TIME_DELAY_1 + `FAN_OUT_1)  NOT1 (cbar,clear);
	not #(`TIME_DELAY_1 + `FAN_OUT_1) NOT2(clkbar, clock);
	not #(`TIME_DELAY_1 + `FAN_OUT_1) NOT3(dbar, data);

	//Second NOT gates
	not #(`TIME_DELAY_1 + `FAN_OUT_3) NOT4(clr, cbar);
	not #(`TIME_DELAY_1 + `FAN_OUT_2) NOT5(clk, clkbar);
	not #(`TIME_DELAY_1 + `FAN_OUT_1) NOT6(d, dbar);

	//SR Latch Implementation
	Lab3_SR #(.delay1(4.5), .delay2(6.0)) L1(sbar, s, rbar, 1'b1, clr, clk);
	Lab3_SR #(.delay1(5.0), .delay2(5.8)) L2(r, rbar, s, clr, clk, d);
	Lab3_SR #(.delay1(6.5), .delay2(7.5)) L3(q, qbar, s, 1'b1, clr, r);

endmodule

