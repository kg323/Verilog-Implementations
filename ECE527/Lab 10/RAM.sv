/*
Name: Kenneth Galindo
Class: ECE 527 Lab
Lab Report: #10
File Name: RAM.sv
*/

`timescale 1 ns / 1 ps

module RAM (clk, re_wr, rst_n, data, full_flag, empty_flag, data_out);
	
input clk, re_wr, rst_n;
input [7:0] data;
output reg full_flag, empty_flag;
output [7:0] data_out;


wire [9:0] address; 
wire [9:0] wr_address;//write address
wire [9:0] rd_address;//read address
wire [7:0] datao ;//used for data pads
wire [7:0] data_out_p;//used for data pads


reg full_p, empty_p;



counter read_pointer(clk, rd_address, !re_wr, rst_n); //read pointer
counter write_pointer(clk, wr_address, re_wr, rst_n); //write pointer


//data input pads
	I1025_NS I1 (
	.PADIO(data[0]),
	.DOUT(datao[0]),
	.R_EN (1'b1) );

	I1025_NS I2 (
	.PADIO(data[1]),
	.DOUT(datao[1]),
	.R_EN (1'b1) );

	I1025_NS I3 (
	.PADIO(data[2]),
	.DOUT(datao[2]),
	.R_EN (1'b1) );

	I1025_NS I4 (
	.PADIO(data[3]),
	.DOUT(datao[3]),
	.R_EN (1'b1) );

	I1025_NS I5 (
	.PADIO(data[4]),
	.DOUT(datao[4]),
	.R_EN (1'b1) );

	I1025_NS I6 (
	.PADIO(data[5]),
	.DOUT(datao[5]),
	.R_EN (1'b1) );

	I1025_NS I7 (
	.PADIO(data[6]),
	.DOUT(datao[6]),
	.R_EN (1'b1) );

	I1025_NS I8 (
	.PADIO(data[7]),
	.DOUT(datao[7]),
	.R_EN (1'b1) );


//other input pads
	I1025_NS I9 (
	.PADIO(clk),
	.DOUT(clk_p),
	.R_EN (1'b1) );

	I1025_NS I10 (
	.PADIO(re_wr),
	.DOUT(re_wr_p),
	.R_EN (1'b1) );

	I1025_NS I11 (
	.PADIO(rst_n),
	.DOUT(rst_n_p),
	.R_EN (1'b1) );



//output data pads
	D12I1025_NS O1 (
	.PADIO(data_out[0]),
	.DIN(data_out_p[0]),
	.EN (1'b1) );

	D12I1025_NS O2 (
	.PADIO(data_out[1]),
	.DIN(data_out_p[1]),
	.EN (1'b1) );

	D12I1025_NS O3 (
	.PADIO(data_out[2]),
	.DIN(data_out_p[2]),
	.EN (1'b1) );

	D12I1025_NS O4 (
	.PADIO(data_out[3]),
	.DIN(data_out_p[3]),
	.EN (1'b1) );

	D12I1025_NS O5 (
	.PADIO(data_out[4]),
	.DIN(data_out_p[4]),
	.EN (1'b1) );

	D12I1025_NS O6 (
	.PADIO(data_out[5]),
	.DIN(data_out_p[5]),
	.EN (1'b1) );

	D12I1025_NS O7 (
	.PADIO(data_out[6]),
	.DIN(data_out_p[6]),
	.EN (1'b1) );

	D12I1025_NS O8 (
	.PADIO(data_out[7]),
	.DIN(data_out_p[7]),
	.EN (1'b1) );


//other output pads
 	D12I1025_NS O9 (
	.PADIO(full_p_w),
	.DIN(full_p),
	.EN (1'b1) );

	D12I1025_NS O10(
	.PADIO(empty_p_w),
	.DIN(empty_p),
	.EN (1'b1) );


//instantiating RAM
	SRAM1RW1024x8 r1 (
	. CE ( clk ),
	. WEB ( !re_wr_p),
	. OEB ( 1'b0 ),
	. CSB ( 1'b0 ),
	. A ( address ),
	. I ( datao),
	. O ( data_out_p ));


//write logic
always @ (posedge clk, negedge rst_n) begin
	if (!rst_n) 
	empty_flag = 0;

	else if(re_wr == 1 && wr_address == 1023) 
	empty_flag = 1;
end


//read logic
always @ (posedge clk, negedge rst_n) begin
	if (!rst_n) 
	full_flag = 0;

	else if(re_wr == 0 && rd_address == 1023) 
	full_flag = 1;
end


assign address = re_wr ? wr_address : rd_address;


always @ (*) begin
	full_flag = full_p_w;
	empty_flag = empty_p_w;
end

endmodule
