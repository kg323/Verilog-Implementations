/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #4
File Name: dff
*/

`timescale 1 ns / 1 ns

`define PRIMARY_OUT   2     // ns (primary outputs)
`define FAN_OUT_1     0.5   // ns (one output fanout)
`define FAN_OUT_2     0.8   // ns (two output fanout)
`define FAN_OUT_3     1     // ns (three output fanout)
`define TIME_DELAY_1  3     // ns (one input gates)
`define TIME_DELAY_2  4     // ns (two input gates)
`define TIME_DELAY_3  5     // ns (three input gates)

module dff (clock, data, clear, q, qbar);
	input clock, data, clear;
	output q, qbar;

	wire s, sbar, r, rbar, cbar, clkbar, clk, clr, d, dbar;

	//First NOT gates
	not #(`TIME_DELAY_1 + `FAN_OUT_1)  NOT1(cbar,clear);
	not #(`TIME_DELAY_1 + `FAN_OUT_1) NOT2(clkbar, clock);
	not #(`TIME_DELAY_1 + `FAN_OUT_1) NOT3(dbar, data);

	//Second NOT gates
	not #(`TIME_DELAY_1 + `FAN_OUT_3) NOT4(clr, cbar);
	not #(`TIME_DELAY_1 + `FAN_OUT_2) NOT5(clk, clkbar);
	not #(`TIME_DELAY_1 + `FAN_OUT_1) NOT6(d, dbar);

	//SR Latch 1

	SR_Latch L1(.Q(sbar), .Qnot(s), .s0(rbar), .s1(1'b1), .r0(clk), .r1(clr));
	defparam L1.delay1 = `TIME_DELAY_3 + `FAN_OUT_1;
	defparam L1.delay2 = `TIME_DELAY_3 + `FAN_OUT_3;
	//SR Lact 2
	SR_Latch L2(.Q(r), .Qnot(rbar), .s0(s), .s1(clk), .r0(d), .r1(clr));
	defparam L2.delay1 = `TIME_DELAY_3 + `FAN_OUT_2;
	defparam L2.delay2 = `TIME_DELAY_3 + `FAN_OUT_2;
	//SR Latch 3
	SR_Latch L3(.Q(q), .Qnot(qbar), .s0(s), .s1(1'b1), .r0(r), .r1(clr));
	defparam L3.delay1 = `TIME_DELAY_3 + `FAN_OUT_1 + `PRIMARY_OUT;
	defparam L3.delay2 = `TIME_DELAY_3 + `FAN_OUT_1 + `PRIMARY_OUT;
endmodule

