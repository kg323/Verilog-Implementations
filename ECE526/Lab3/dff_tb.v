/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #3
File Name: dff_tb
*/

`timescale 1 ns / 1 ns

`define MONITOR_STR "%d: clock = %b, data = %b, clear = %b, | Q = %b, Qbar = %b"
`define STROBE_STR "%d: clock = %b, data = %b, clear = %b, | Q = %b, Qbar = %b"

module dff_tb();
	reg clock, data, clear;
	wire q, qbar;
	dff UUT(q, qbar, clock, data, clear);

	initial begin
		$monitor (`MONITOR_STR, $time, clock, data, clear, q, qbar);
	end

	initial begin
	$vcdpluson;
	
	#0	$display (" ");
		$display ("Set clock and clear (display)");
		clock = 1'b0;
		clear = 1'b0;

	#100	$write ("Data test (write)");
		$write ("\n");
		data = 1'b0;
		clear = 1'b1;
	#100	data = 1'b1;
	#100	data = 1'b0;
	#100	data = 1'b1;
	#100	data = 1'b0;
	#100	data = 1'b1;

	#100 $display ("Values of dff");
	     $strobe (`STROBE_STR, $time, clock, data, clear, q, qbar);
	     $display (" ");

	#100   $finish;
	end

	always #50 clock =~clock;

endmodule
	
