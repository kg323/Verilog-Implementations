/*
Name: Kenneth Galindo
Class: ECE 527 Lab
Lab Report: #2
File Name: 8bit_Binary_counter.v
*/

module bit8_binary_counter(input clk, reset, count_down, startstop, clk_100M, output[7:0] num_out, output tc, slow_clock_en);



//LSB nibble
	bit4_binary_counter c0(
	.clk(clk),
	.reset(reset),
	.count_down(count_down),
	.enable(enable1),
	.num_out(num_out[3:0]),
	.tc (tc0),
.clk_100M(clk_100M),
.slow_clock_en(slow_clock_en) );


//MSB nibble
	bit4_binary_counter c1 (
	.clk(clk),
	.reset(reset),
	.count_down(count_down),
	.enable(enable2),
	.num_out(num_out[7:4]),
	.tc (tc1),
.clk_100M(clk_100M),
.slow_clock_en(slow_clock_en));//end MSB


assign enable1 = startstop;
assign enable2 = startstop && tc0;
assign tc = tc0 && tc1;

endmodule
