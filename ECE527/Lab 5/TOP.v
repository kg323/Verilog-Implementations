/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #5
File Name: TOP
*/

`timescale 1 ns / 1 ns

module TOP (COUNT, CLK, RESET, LOAD, ENABLE, DATA);

	input CLK, RESET, LOAD, ENABLE;
	input [7:0] DATA;
	output [7:0] COUNT;

	wire RST;

	Counter M1 (COUNT, CLK, RST, LOAD, ENABLE, DATA);
	AASD M2 (RST, CLK, RESET);
endmodule
