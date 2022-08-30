/**************************************************************************
*** Name: Kenneth Galindo
*** Class: ECE 526 Lab
*** Lab Report: #7
*** File Name: REG_TEST1
**************************************************************************/

`timescale 1 ns / 1 ns	

module REG_TEST1();

	reg OE, WS, CS;
	reg [4:0] ADDR;
	wire [7:0] DATA;
	reg [7:0] num;
	integer i;

	REG_FILE UUT(DATA, ADDR, OE, WS, CS);

	assign DATA = !OE && !CS ? num : 8'bz;

	initial $monitorb ("%d DATA = %d, ADDR = %d, OE = %b, WS = %b, CS = %b", $time, DATA, ADDR, 					OE, WS, CS);
	
	initial begin
	$vcdpluson;
	CS = 1'b0; OE = 1'b0; WS = 1'b0; ADDR = 5'b0; num = 8'd30;

	// high impedance data bus
	#10 CS = 1'b1;
	#10 CS = 1'b0;

	//sequential addressing read and write
	for (i = 0; i <32; i = i+1) begin
	 num = num + 8'd1;
	 ADDR = i;

	 #8 WS = 1'b1;
	 #4 WS = 1'b0;
	 #8 OE = 1'b1;
	 #4 OE = 1'b0;
	end
	
	#4 OE = 1'b1;
	
	
	$monitorb ("%d DATA = %d, ADDR = %d, OE = %b, WS = %b, CS = %b", $time, DATA, ADDR, 					OE, WS, CS);
	//block read
	for (i = 15; i <22; i = i+1) begin
	 ADDR = i;
	  if (i == 17)
		#4 CS = 1'b1;
	  else
		#4 CS = 1'b0;
	  end
	end



endmodule
	


