/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #5
File Name: TOP_tb
*/

`timescale 1 ns / 1 ns

module TOP_tb();

	reg CLK, RESET, LOAD, ENABLE;
	reg [7:0] DATA;
	wire [7:0] COUNT;

	TOP UUT (COUNT, CLK, RESET, LOAD, ENABLE, DATA);

	initial
	begin

	$monitorb ("%d COUNT = %h CLK = %b RESET = %b LOAD = %b ENABLE = %b DATA = 				%h", $time, COUNT, CLK, RESET, LOAD, ENABLE, DATA);

	end
	
	always #2 CLK = ~CLK;

	initial
	begin

	$vcdpluson;

		CLK = 1'b0;
		RESET = 1'b1;
		LOAD = 1'b0;

		#3 RESET = 1'b0;

		#5 RESET = 1'b1; ENABLE = 1'b1; DATA = 8'h00;

		#75 LOAD = 1'b1; DATA = 8'h0C;
		#10 LOAD = 1'b0;

		#1000 RESET = 1'b0;

		#20 RESET = 1'b1; ENABLE = 1'b1; LOAD = 1'b1; DATA = 8'hFA;

		#30 ENABLE = 1'b0;
		#20 $finish;
	end
endmodule
