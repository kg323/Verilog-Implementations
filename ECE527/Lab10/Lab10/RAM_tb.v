/*
Name: Kenneth Galindo
Class: ECE 527 Lab
Lab Report: #10
File Name: RAM_tb.v
*/


`timescale 1 ns / 1 ps

module RAM_tb();

reg clk, re_wr, rst_n; 
reg [7:0] data;
wire full_flag, empty_flag;
wire [7:0] data_out;

integer i;

RAM DUT1 (clk, re_wr, rst_n, data, full_flag, empty_flag, data_out);


initial begin
clk = 0;
forever #50 clk =~ clk;
end



initial
$monitor("Clk = %b, re_wr = %d, rst_n = %d, data = %d,  full = %d, empty = %d, data_out = %d", 
          clk, re_wr, rst_n, data, full_flag, empty_flag, data_out, $time);

 initial begin
   $vcdpluson;    
//Initialize inputs
data = 8'b00000001; re_wr = 1'b0; rst_n = 1'b0; 

$display("Writing data..................................");
#50 re_wr = 1'b1; rst_n = 1'b1;
for(i = 0; i < 1024; i = i + 1)
begin
#100 data = data + 1;
end

$display("Reading data..................................");

#50 re_wr = 1'b0;
for(i = 0; i < 1024; i = i + 1)
begin
#100 data = data + 1;
end

$display("Writing data..................................");
#50 re_wr = 1'b1; rst_n = 1'b1;
for(i = 0; i < 1024; i = i + 1)
begin
#100 data = data + 1;
end

$display("Reading data..................................");
#50 re_wr = 1'b0;
for(i = 0; i < 1024; i = i + 1)
begin
#100 data = data + 1;
end

#500 $finish;
end 


endmodule
