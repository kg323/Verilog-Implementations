/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #4
File Name: register_tb
*/

`timescale 1 ns / 1 ns

`define MONITOR_STR "%d: CLK = %b, DATA = %b, ENA = %b, RST = %b| R = %b"
module register_tb();
	reg CLK, ENA, RST;
	reg [7:0] DATA;
	wire [7:0] R;

	register UUT (CLK, DATA, ENA, RST, R);

	initial begin
		$monitor (`MONITOR_STR, $time, CLK, DATA, ENA, RST, R);
	end
	
	initial begin
	CLK = 1'b0;
	RST = 1'b0;
	ENA = 1'b0;
	end

	always #50 CLK =~ CLK;
	
	
	initial begin
 		$vcdpluson;
		
		DATA[0] = 1'b1;
		DATA[1] = 1'b0;
		DATA[2] = 1'b0;
		DATA[3] = 1'b1;
		DATA[4] = 1'b1;
		DATA[5] = 1'b0;
		DATA[6] = 1'b0;
		DATA[7] = 1'b0;


		#50 RST = 1'b1;
		#100 ENA = 1'b1;
		#100 ENA = 1'b0;
		#50 RST = 1'b0;
		#50 RST = 1'b1;

		#300 $finish;
	end
	
endmodule

