/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #5
File Name: Counter
*/

`timescale  1 ns / 1 ns

module Counter (COUNT, CLK, RST, LOAD, ENABLE, DATA);
	input CLK, RST, LOAD, ENABLE;
	input [7:0] DATA;
	output [7:0] COUNT;

	reg [7:0] COUNT;
	always @(posedge CLK or negedge RST)
	begin
		if (RST == 1'b0)
			COUNT <=8'h00;
		else if (ENABLE == 1'b1)
	begin
		if (LOAD == 1'b1)
			COUNT <= DATA;
		else
			COUNT <= COUNT +1;
		end
		else
			COUNT <= COUNT;
		end
endmodule
