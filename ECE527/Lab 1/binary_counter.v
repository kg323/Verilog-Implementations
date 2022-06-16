/*
Name: Kenneth Galindo
Class: ECE 527 Lab
Lab Report: #1
File Name: Binary_counter.v
*/

module binary_counter(input clk, reset, count_down, output[7:0] num_out);

	reg [7:0] binary_counter;

	always @(posedge clk or posedge reset)//if clk or reset enabled, then begin
	begin
	if(reset) begin //if reset enabled, then set output to 0
	 binary_counter <= 8'b0;//sets binary_counter to 0 (8 bits 0)

	end else if(~count_down) begin //if count down set to 0, count up (0 to 255)
	binary_counter <= binary_counter + 1;//adds 1 to binary_counter

	end else//else, count down (255 to 0)
	 binary_counter <= binary_counter - 1;//sunbtracts 1 from binary_counter
	end 

	assign num_out = binary_counter;//assigns current value of binary_counter to num_out
					//this will be used to demonstrate value during simulation

endmodule
