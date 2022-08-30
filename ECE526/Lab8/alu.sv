/**************************************************************************
*** Name: Kenneth Galindo
*** Class: ECE 526 Lab
*** Lab Report: #8
*** File Name: alu.sv
**************************************************************************/
`timescale 1 ns / 100 ps

module alu(CLK, EN, OE, OPCODE, A, B, ALU_OUT, CF, OF, SF, ZF); 

	parameter WIDTH = 8;
	output reg [WIDTH -1:0] ALU_OUT; 
	output reg CF, OF, SF, ZF;
	input [3:0] OPCODE;
	input [WIDTH-1:0] A, B;
	input CLK, EN, OE;

	localparam ADD = 4'b0010,
		 SUBTR = 4'b0011,
		 LGC_AND = 4'b0100,
		 LGC_OR = 4'b0101,
		 LGC_XOR = 4'b0110,
		 LGC_NEG = 4'b0111;

	reg [WIDTH-1:0] I_OUT;
	reg CX, OX;

	assign A = !OE ? ALU_OUT: 8'bz;

	always@(posedge CLK) begin
	 if (!EN) begin
		ALU_OUT = ALU_OUT;
		CF = CF;
		OF = OF;
		SF = SF;
		ZF = ZF;
		end

	 else begin
		case (OPCODE)

		 ADD: begin
		  I_OUT = A+B;
		   if ((A[WIDTH-1] && !I_OUT[WIDTH-1]) || (A[WIDTH-1] && B[WIDTH-1]) || (B[WIDTH-1] && !I_OUT[WIDTH-1]))
		        CX = 1'b1;
		 else 
			CX = 1'b0;

		 //Overflow check
		 if(!A[WIDTH-1] && !B[WIDTH-1] && I_OUT[WIDTH-1])
		  OX = 1'b1;
		 else if (A[WIDTH-1] && B[WIDTH-1] && !I_OUT[WIDTH-1])
		  OX = 1'b1;
		 else
		  OX = 1'b0;
		 end


		SUBTR: begin
		 I_OUT = A-B;
		 if (A < B) 
			CX = 1'b1;
		 else 
			CX = 1'b0;

		 //Overflow check
		 if(!A[WIDTH-1] && !B[WIDTH-1] && I_OUT[WIDTH-1])
		 	OX = 1'b1;

		 else if (A[WIDTH-1] && B[WIDTH-1] && !I_OUT[WIDTH-1])
			OX = 1'b1;

		 else
		 	OX = 1'b0;
		 end

		LGC_AND: begin I_OUT = A & B; CX = 1'b0; OX = 1'b0; end

		LGC_OR : begin I_OUT = A | B; CX = 1'b0; OX = 1'b0; end

		LGC_XOR: begin I_OUT = A ^ B; CX = 1'b0; OX = 1'b0; end

		LGC_NEG: begin I_OUT = ~A; CX = 1'b0; OX = 1'b0; end

		default: begin I_OUT = I_OUT; CX = CX; OX = OX; end
		 endcase
		 
		//Output
		 ALU_OUT = I_OUT;

		 //Carry flag
		 CF = CX;

		 //Overflow flag
		 OF = OX;

		//Negative flag
		 SF = I_OUT[WIDTH-1]; 

		//Zero flag 
		 ZF = !(|I_OUT); 

		end
	end
endmodule

