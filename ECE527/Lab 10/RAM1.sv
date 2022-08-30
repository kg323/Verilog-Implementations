`timescale 1 ns/ 1 ps
module RAM (data, clk, re_wr, rst_n, data_out, full, empty);
    parameter width = 8;
	output [width-1:0] data_out;
    output reg full, empty;
	input [width-1:0] data;
	input clk, re_wr, rst_n;

//reg [9:0] wpointer; //if these register pointers are used, the incrementing
//reg [9:0] rpointer; //logic needs to be implemented in this file
//(Q,clk,data,en,rst);

wire [9:0] r_addr;
wire [9:0] wr_addr;
wire [9:0] addr;
wire [7:0] data_p;
wire [7:0] data_out_p;

reg full_p, empty_p; //create registers for flags


//(clk,addr,en,rst);
counter read_pointer(clk, r_addr, !re_wr, rst_n); //read pointer
counter write_pointer(clk, wr_addr, re_wr, rst_n); //write pointer


genvar i;
generate
begin
    for (i = 0; i < width; i = i + 1)
    begin

//generate 8 input pads
I1025_NS I1(
.PADIO(data[i]),
.DOUT(data_p[i]),
.R_EN (1'b1) );

//generate 8 output pads
D12I1025_NS O1 (
.PADIO(data_out[i]),
.DIN(data_out_p[i]),
.EN (1'b1) );
    end
end
endgenerate

I1025_NS I1(
.PADIO(clk),
.DOUT(clk_p),
.R_EN (1'b1) );

I1025_NS I2(
.PADIO(re_wr),
.DOUT(re_wr_p),
.R_EN (1'b1) );

I1025_NS I3(
.PADIO(rst_n),
.DOUT(rst_n_p),
.R_EN (1'b1) );

D12I1025_NS O1 (
.PADIO(full_w), //inferred wire
.DIN(full_p),
.EN (1'b1) );

D12I1025_NS O2 (
.PADIO(empty_w), //inferred wire
.DIN(empty_p),
.EN (1'b1) );

SRAM1RW1024x8 r1 (
. CE ( clk ),
. WEB ( !re_wr_p ),
. OEB ( 1'b0 ),
. CSB ( 1'b0 ),
. A ( addr ), //registers, read or write pointer
. I ( data_p ),
. O ( data_out_p));

//logic for RAM

//sequential read
always@(posedge clk, negedge rst_n)
begin
if(!rst_n)
full_p = 0; 
else if(re_wr == 0 && r_addr == 1023)
full_p = 1;
end


//sequential write
always@(posedge clk, negedge rst_n)
begin
if(!rst_n)
empty_p = 0; 
else if(re_wr == 1 && wr_addr == 1023)
empty_p = 1;
end

assign addr = re_wr ? wr_addr : r_addr;
//assign full = full_w;
//assign empty = empty_w;

always@(*)
begin
    full = full_w;
    empty = empty_w;
end



//glitchy combinatorial
/* while (re_wr = 0) {
if(data => 1023)
full = 1;
}

while (re_wr = 1) {
if(data =< 0)
empty = 1;
} */



endmodule

/* Input pad:
I1025_NS I1 (
.PADIO(ib1),
.DOUT(b1),
.R_EN (1'b1) );

Output pad:
 D12I1025_NS O1 (
.PADIO(osignal),
.DIN(signal),
.EN (1'b1) );

SRAM1RW1024x8 r1 (
. CE ( clk ),
. WEB ( WE_n ),
. OEB ( OE_n ),
. CSB ( CS_n ),
. A ( address ),
. I ( memin ),
. O ( memout )); */
