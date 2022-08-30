/**************************************************************************
*** Name: Kenneth Galindo
*** Class: ECE 526 Lab
*** Lab Report: #8
*** File Name: alu_tb.sv
**************************************************************************/

`timescale 1 ns / 100 ps

module alu_tb();
	 reg EN, CLK, OE;
	 reg [3:0] OPCODE;
	 reg [7:0] A, B;
	 wire CF, OF, SF, ZF;
	 wire [7:0] ALU_OUT;

	 alu UUT(CLK, EN, OE, OPCODE, A, B, ALU_OUT, CF, OF, SF, ZF);

	 initial CLK = 1'b0;
	 always #5 CLK = ~CLK;

	 initial begin
	 $vcdpluson;
		OE = 1'b1; EN = 1'b0; A = 8'd255; B = 8'd255; OPCODE = 4'b0000;
		$monitorb ("%d CLK = %b, EN = %b, OPCODE = %b, A = %b, B = %b, ALU_OUT = %b, CF = %b OF = %b, SF = %b, ZF = %b, OE = %b", $time, CLK, EN, OPCODE, A, B, ALU_OUT, CF, OF, SF, ZF, OE);

		#3 EN = 1'b1;
		#15 OPCODE = 4'b0010; // Carry propagation through addition
		#10 A = 8'd103; B = 8'd30; // Addition Overflow
		#10 OPCODE = 4'b0110; // Normal Bitwise XOR 
		#10 A = 8'd0; B = 8'd0; // Bitwise XOR for only 0
		#10 OPCODE = 4'b0010; // No carry
		#10 A = 8'd245; B = 8'd90;
		#10 EN = 1'b0; // ALU Disable
		#10 EN = 1'b1; // ALU Enable
		#10 OPCODE = 4'b0011; // Subtraction without borrow, A > B 
		#10 A = 8'd22; // Subtraction with borrow and overflow, A < B
		#10 OPCODE = 4'b0100; // Bitwise AND
		#10 OPCODE = 4'b0101; // Bitwise OR
		#10 OPCODE = 4'b1001; // Undefined opcode
		#10 OPCODE = 4'b0111; // Bitwise negation
		#10 OE = 1'b0; //OE disable, High impedance data
		#10 OE = 1'b1; //OE enable, normal data
		#50$finish;
	 end
endmodule
