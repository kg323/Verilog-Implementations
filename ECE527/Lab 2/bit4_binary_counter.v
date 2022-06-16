/*
Name: Kenneth Galindo
Class: ECE 527 Lab
Lab Report: #2
File Name: 4bit_Binary_counter.v
*/

module bit4_binary_counter(input clk, reset, count_down, enable, clk_100M, output[3:0] num_out, output tc, slow_clock_en);

	reg [3:0] num_out;
	reg tc;

	reg [26:0]counter=0;
    	always @(posedge clk_100M)
    	begin
        counter <= (counter>=249999)?0:counter+1;
    	end
    	assign slow_clk_en = (counter == 249999)?1'b1:1'b0;


	always @(posedge clk or posedge reset)//if clk or reset enabled, then begin
	
	if(reset) //if reset enabled, then set output to 0
	 num_out <= 0;//sets binary_counter to 0 

	else if(enable && ~count_down) //if count down set to 0, count up (0 to 15)
	 num_out <= num_out + 1;//adds 1 to binary_counter

	else if (enable & count_down)//else, count down (15 to 0)
	 num_out <= num_out - 1;//subtracts 1 from binary_counter

	
	always @(posedge clk or posedge reset)
	if (reset) tc <=0;
	else if (~count_down && num_out == 14) tc <=1;
	else if (count_down && num_out == 1) tc <= 1;
	else tc <=0;
	

endmodule
