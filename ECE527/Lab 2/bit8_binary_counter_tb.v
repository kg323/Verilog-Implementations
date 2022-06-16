/*
Name: Kenneth Galindo
Class: ECE 527 Lab
Lab Report: #2
File Name: 8bit_binary_counter.v
*/


module bit8_binary_counter_tb();

	reg clk, reset, count_down, startstop;
	wire [7:0] num_out;


bit8_binary_counter c0(
	.clk(clk),
	.reset(reset),
	.count_down(count_down),
	.startstop(startstop),
	.num_out(num_out[7:0]),
	.tc(tc),
.clk_100M(clk_100M),
.slow_clock_en(slow_clock_en) );


	initial begin 
	clk=0;//set initial clk to 0
	forever #5 clk=~clk;//clk increments by 5 forever until stop command given
	end

	initial begin
	$vcdpluson;//command given for viewing waveforms
	reset=1; //set reset to 1 so it will not begin count (output set to 0)
	count_down=0; //enabling this bit will make the counting decrease (255 to 0)
	startstop = 1;
	#20 reset=0; //wait 20s and then set reset to 0 (will now begin counting)
	 	     //output will count from 0 to 255
	#150 count_down=1; //wait 150s and enable this bit, in order to count down (255 to 0)
	#500 count_down=0;//wait 150s and set count_down to 0 (count from 0 to 255)
	#25 reset = 1; //wait 25s and then enable reset (will set output to 0)
	#25 reset=0;
	#50 startstop =0;
	#120 $finish; //stop after 120s
	end


	initial
	$monitor(
	"%d clk = %d reset= %d count_down= %d enable = %h counter=", $time, clk, reset, count_down, startstop, num_out);



endmodule 
