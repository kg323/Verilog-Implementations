/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #5
File Name: AASD
*/

`timescale 1 ns / 1 ns

module AASD (RST, CLK, RESET);
	input CLK, RESET;
	output RST;
	
	reg TEMP, RST;

	always @(posedge CLK or negedge RESET)
	begin
		if (RESET == 1'b0)
		begin
			TEMP <= 1'b0;
			RST <= 1'b0;
		end
		else
		begin
			TEMP <= 1'b1;
			RST <= 1'b1;
		end
	end
endmodule
