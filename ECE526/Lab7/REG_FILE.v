/**************************************************************************
*** Name: Kenneth Galindo
*** Class: ECE 526 Lab
*** Lab Report: #7
*** File Name: REG_FILE
***************************************************************************
*** This file is intended for the use of creating the register file
*** for this lab. We have DATA, ADDR, OE, WS and CS as input for the
*** register file. This in turn creates the truth table as follows:
***									***
*** OE (output enable) WS (write strobe)   CS (chip select)     Mode  	***
*** 		X 		X 		1 	   	Hi-Z    ***
*** 		1 		X 		0 		Read 	***
*** 		0 		1 		0 		Write 	***
*** 		0 		0 		0 	   	Hi-Z    ***
 **************************************************************************/

`timescale 1 ns / 1 ns

module REG_FILE (DATA, ADDR, OE, WS, CS);

parameter DATA_SIZE = 8, ADDR_SIZE = 5;

	input [DATA_SIZE-1:0] DATA;
	input [ADDR_SIZE-1:0] ADDR;
	input OE, WS, CS;

	reg [DATA_SIZE-1:0] mem[0:(2**ADDR_SIZE)-1];

	assign DATA = OE && !CS ? mem[ADDR] : 8'bz;

	always @(posedge WS) begin
		if(!CS && !OE)
		  mem[ADDR]<=DATA;
		else
		  mem[ADDR]<= mem[ADDR];
		end
endmodule
