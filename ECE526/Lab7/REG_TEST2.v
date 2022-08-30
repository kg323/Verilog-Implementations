/**************************************************************************
*** Name: Kenneth Galindo
*** Class: ECE 526 Lab
*** Lab Report: #7
*** File Name: REG_TEST2
**************************************************************************/

`timescale 1 ns / 1 ns

module REG_TEST2();

	reg OE, WS, CS, temp1, temp2;
	reg [4:0] ADDR;
	reg [7:0] mem [0:31];
	reg [7:0] a, b;
	wire [7:0] DATA;
	integer i;

	REG_FILE UUT (DATA, ADDR, OE, WS, CS);
	assign DATA = !OE ? a : 8'bz;
	initial begin
	 $vcdpluson;
	 CS = 1'b0; WS = 1'b0; OE = 1'b0; ADDR = 5'b0; a = 8'b0;
	 $readmemh ("MEM_FILE.txt", mem);
	 for (i = 0; i < 32; i = i+1) begin
		a = mem[i];
		ADDR = i;
		#8 WS = 1'b1;
		#4 WS = 1'b0;
	end
	//read mem file
	#4 OE = 1'b1;
	for (i = 0; i < 32; i = i+1) begin
	 ADDR = i;
	 #2 $display ("DATA = %h, ADDR = %h", DATA, ADDR);
	end
	//original data before scramble
	#2 $display ("Original values before scrabmble");
	for (i = 0; i < 32; i = i+1) begin
	 ADDR = i;
	 #2 $display ("DATA = %h, ADDR = %h", DATA, ADDR);
	end
	//scramble 
	for (i = 0; i < 32; i = i+1) begin
	 ADDR = i;
	 #2 b = DATA;
	 #1 temp1 = b[0]; temp2 = b[1];
	 #1 b[0] = b[4]; b[1] = b[3];
	 #1 b[4] = b[6]; b[3] = b[2];
	 #1 b[6] = b[7]; b[2] = b[5];
	 #1 b[7] = temp1; b[5] = temp2;
	 #2 OE = 1'b0;
	 #2 a = b;
	 #2 WS = 1'b1;
	 #2 WS = 1'b0;
	 #2 OE = 1'b1;
	end
	#2 $display ("Scrambled values");
	for (i = 0; i < 32; i = i+1) begin
	 ADDR = i;
	 #2 $display ("DATA = %h, ADDR = %h", DATA, ADDR);
	end
       end
endmodule
	
