/*
Name: Kenneth Galindo
Class: ECE 527 Lab
Lab Report: #7
File Name: fsm.v
*/

`timescale 1 ns / 1 ps


module fsm (
	input clk, reset, b1,b2,b3,
	output reg signal);

 localparam s0 =0;
 localparam s1 =1;
 localparam s2 =2;
 localparam s3 =3;
 localparam s4 =4;
 localparam s5 =5;
 localparam s6 =6;
 localparam s7 =7;

reg [7:0] curr_state, next_state;


always @(posedge clk, posedge reset) begin
	if (reset == 1'b1)
		curr_state = s0;
	else
		curr_state = next_state;
end


//next state logic 
always @(curr_state, b2) begin
	case (curr_state)

	s0: begin
		next_state = s1;
	end

	s1: begin
	
		next_state = s2;
	end
	
	s2: begin
		next_state = s3;
	end

	s3: begin
	if (b2)
		next_state = s4;
	else
		next_state = s0;
	end

	s4: begin

		next_state = s5;
	end
	
	s5: begin
		next_state = s6;

	end

	s6: begin

		next_state = s7;

	end

	s7: begin

		next_state = s0;
	end

	default:
		next_state = s0;
endcase

end

//output logic
always @ (posedge clk) begin

if (curr_state == s3 && b1)
	signal <= 1'b1;
else if ((curr_state == s2) && (b1 & b3))
	signal <= 1'b1;
else if ((curr_state == s7) && b2)
	signal <= 1'b1;
else if ((curr_state == s6) && (b2 & b3))
	signal <= 1'b1;
else 
	signal <= 1'b0;
end


endmodule
