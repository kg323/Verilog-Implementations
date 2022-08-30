/**************************************************************************
*** Name: Kenneth Galindo
*** Class: ECE 526 Lab
*** Lab Report: #8
*** File Name: alu_tb.sv
**************************************************************************/

`timescale 1 ns / 100 ps

module alu_tb();
	 reg EN, CLK;
	 reg [3:0] OPCODE;
	 reg [7:0] A, B;
	 wire CF, OF, SF, ZF;
	 wire [7:0] ALU_OUT;

	 alu UUT(CLK, EN, OE, OPCODE, A, B, ALU_OUT, CF, OF, SF, ZF);

	 initial CLK = 1'b0;
	 always #5 CLK = ~CLK;

	 initial begin
	 $vcdpluson;
		EN = 1'b0; A = 8'd255; B = 8'd255; OPCODE = 4'b0000;
		$monitorb ("%d CLK = %b, EN = %b, OE = %b, OPCODE = %b, A = %b, B = %b, ALU_OUT = %b, CF = %b OF = %b, SF = %b, ZF = %b", $time, CLK, EN, OE, OPCODE, A, B, ALU_OUT, CF, OF, SF, ZF);

		#5 EN = 1'b1;
		#20 OPCODE = 4'b0010; // Carry propagation through addition
		#15 A = 8'd103; B = 8'd30; // Addition Overflow
		#15 OPCODE = 4'b0110; // Bitwise XOR (regular)
		#15 A = 8'd0; B = 8'd0; // Bitwise XOR for all 0's
		#15 OPCODE = 4'b0010; // When carry is not present
		#15 A = 8'd245; B = 8'd90;
		#15 EN = 1'b0; // unit disabled state
		#15 EN = 1'b1; // unit re-enabled
		#15 OPCODE = 4'b0011; // Subtraction with A > B (no borrow)
		#15 A = 8'd22; // Subtraction with A < B (borrrow) and overflow
		#15 OPCODE = 4'b0100; // Bitwise AND
		#15 OPCODE = 4'b0101; // Bitwise OR
		#15 OPCODE = 4'b1001; // undefined opcode should not change output
		#15 OPCODE = 4'b0111; // Bitwise negation
		#100 $finish;
	 end
endmodule
