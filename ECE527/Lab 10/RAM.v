/*
Name: Kenneth Galindo
Class: ECE 527 Lab
Lab Report: #10
File Name: RAM.v
*/

`timescale 1 ns / 1 ps

module RAM (
	input clk, re_wr, rst_n, [7:0] data,  
	output reg full_flag, reg empty_flag, [7:0] data_out);


wire [9:0] address; 
wire [9:0] wr_address;//write address
wire [9:0] rd_address;//read address
wire datao [7:0];//used for data pads
wire data_out_p [7:0];//used for data pads

reg full_p, empty_p;



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
	.PADIO(clk_p),
	.DOUT(clk),
	.R_EN (1'b1) );

	I1025_NS I10 (
	.PADIO(re_wr_p),
	.DOUT(re_wr),
	.R_EN (1'b1) );

	I1025_NS I11 (
	.PADIO(rst_n_p),
	.DOUT(rst_n),
	.R_EN (1'b1) );



//output data pads
	D12I1025_NS O1 (
	.PADIO(data_out_p[0]),
	.DIN(data_out[0]),
	.EN (1'b1) );

	D12I1025_NS O2 (
	.PADIO(data_out_p[1]),
	.DIN(data_out[1]),
	.EN (1'b1) );

	D12I1025_NS O3 (
	.PADIO(data_out_p[2]),
	.DIN(data_out[2]),
	.EN (1'b1) );

	D12I1025_NS O4 (
	.PADIO(data_out_p[3]),
	.DIN(data_out[3]),
	.EN (1'b1) );

	D12I1025_NS O5 (
	.PADIO(data_out_p[4]),
	.DIN(data_out[4]),
	.EN (1'b1) );

	D12I1025_NS O6 (
	.PADIO(data_out_p[5]),
	.DIN(data_out[5]),
	.EN (1'b1) );

	D12I1025_NS O7 (
	.PADIO(data_out_p[6]),
	.DIN(data_out[6]),
	.EN (1'b1) );

	D12I1025_NS O8 (
	.PADIO(data_out_p[7]),
	.DIN(data_out[7]),
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
	. WEB ( !re_wr),
	. OEB ( 1'b0 ),
	. CSB ( 1'b0 ),
	. A ( address ),
	. I ( data ),
	. O ( data_out ));


//write logic
always @ (posedge clk, negedge rst_n) begin
	if (!rst_n) 
	empty_p = 0;

	else if(re_wr == 1 && wr_address == 1023) 
	empty_p = 1;
end


//read logic
always @ (posedge clk, negedge rst_n) begin
	if (!rst_n) 
	full_p = 0;

	else if(re_wr == 0 && wr_address == 1023) 
	full_p = 1;
end


assign address = re_wr ? wr_address : rd_address;


always @ (*) begin
	full_flag = full_p;
	empty_flag = empty_p;
end

endmodule

