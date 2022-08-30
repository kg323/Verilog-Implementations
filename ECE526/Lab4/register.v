/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #4
File Name: register
*/

`timescale 1 ns / 1 ns

module register (CLK, DATA, ENA, RST, R);
	//port declarations
	input CLK, ENA, RST;
	input [7:0] DATA; 
	output [7:0] R;

	//internal wires
	wire [7:0] IN;
	wire [7:0] D;

	//netlist
	dff D0(CLK, IN[0], RST, R[0], D[0]);
	dff D1(CLK, IN[1], RST, R[1], D[1]);
	dff D2(CLK, IN[2], RST, R[2], D[2]);
	dff D3(CLK, IN[3], RST, R[3], D[3]);
	dff D4(CLK, IN[4], RST, R[4], D[4]);
	dff D5(CLK, IN[5], RST, R[5], D[5]);
	dff D6(CLK, IN[6], RST, R[6], D[6]);
	dff D7(CLK, IN[7], RST, R[7], D[7]);

	MUX2_1 M0(R[0], DATA[0], ENA, IN[0]);
	MUX2_1 M1(R[1], DATA[1], ENA, IN[1]);
	MUX2_1 M2(R[2], DATA[2], ENA, IN[2]);
	MUX2_1 M3(R[3], DATA[3], ENA, IN[3]);
	MUX2_1 M4(R[4], DATA[4], ENA, IN[4]);
	MUX2_1 M5(R[5], DATA[5], ENA, IN[5]);
	MUX2_1 M6(R[6], DATA[6], ENA, IN[6]);
	MUX2_1 M7(R[7], DATA[7], ENA, IN[7]);

endmodule
