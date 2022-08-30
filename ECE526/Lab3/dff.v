/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #3
File Name: dff
*/

`timescale 1 ns / 100 ps

`define FAN_OUT_1 	0.5	//ns (one output fanout)
`define FAN_OUT_2 	0.8	//ns (two output fanout)
`define FAN_OUT_3 	1	//ns (three output fanout)
`define TIME_DELAY_1 	3	//ns (one input gates)

module dff (q, qbar, clock, data, clear);
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

	//SR Latch Implementation
	SR_Latch #(.delay1(4.5), .delay2(6.0)) L1(sbar, s, rbar, 1'b1, clr, clk);
	SR_Latch #(.delay1(5.8), .delay2(5.8)) L2(r, rbar, s, clk, clr, d);
	SR_Latch #(.delay1(6.5), .delay2(7.5)) L3(q, qbar, s, 1'b1, clr, r);

endmodule

