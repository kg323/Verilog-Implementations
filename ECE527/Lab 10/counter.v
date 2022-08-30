/*
Name: Kenneth Galindo
Class: ECE 527 Lab
Lab Report: #10
File Name: counter.v
*/


`timescale 1 ns / 1 ps


module counter (clk,addr,en,rst);
  parameter width = 10;
	output reg [width-1:0] addr;
	input clk, en, rst;

     always@(posedge clk or negedge rst)
       begin
       if(!rst)
       addr = 10'b0000000000;
         else if(en)
           addr = addr  + 1;
       end
endmodule
