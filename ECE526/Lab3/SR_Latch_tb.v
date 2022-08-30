`timescale 1 ns / 1 ns

`define MONITOR_STR "%d: s0 = %b, s1 = %b, r0 = %b, r1 = %b, | Q = %b, Qnot = %b"

module SR_Latch_TB();

	reg s0, s1, r0, r1;
	wire Q, Qnot;
	SR_Latch UUT(Q, Qnot, s0, s1, r0, r1);

	initial begin
		$monitor(`MONITOR_STR, $time, s0, s1, r0, r1, Q, Qnot);
	end

	initial begin
	$vcdpluson;
	#20 	s0 = 1'b0; //0000
		s1 = 1'b0;
		r0 = 1'b0;
		r1 = 1'b0;
	#20 	s0 = 1'b0; //0001
		s1 = 1'b0; 
		r0 = 1'b0;
		r1 = 1'b1;
	#20 	s0 = 1'b0; //0010
		s1 = 1'b0;
		r0 = 1'b1;
		r1 = 1'b0;
	#20 	s0 = 1'b0; //0011
		s1 = 1'b0;
		r0 = 1'b1;
		r1 = 1'b1;
	#20 	s0 = 1'b0; //0100
		s1 = 1'b1;
		r0 = 1'b0;
		r1 = 1'b0;
	#20 	s0 = 1'b0; //0101
		s1 = 1'b1;
		r0 = 1'b0;
		r1 = 1'b1;
	#20 	s0 = 1'b0; //0110
		s1 = 1'b1;
		r0 = 1'b1;
		r1 = 1'b0;
	#20 	s0 = 1'b0; //0111
		s1 = 1'b1;
		r0 = 1'b1; 
		r1 = 1'b1;
	#20	s0 = 1'b1; //1000
		s1 = 1'b0;
		r0 = 1'b0;
		r1 = 1'b0;
	#20 	s0 = 1'b1; //1001
		s1 = 1'b0;
		r0 = 1'b0;
		r1 = 1'b1;
	#20 	s0 = 1'b1; //1010
		s1 = 1'b0;
		r0 = 1'b1;
		r1 = 1'b0;
	#20 	s0 = 1'b1; //1011
		s1 = 1'b0;
		r0 = 1'b1;
		r1 = 1'b1;
	#20 	s0 = 1'b1; //1100
		s1 = 1'b1;
		r0 = 1'b0;
		r1 = 1'b0;
	#20 	s0 = 1'b1; //1101
		s1 = 1'b1;
		r0 = 1'b0;
		r1 = 1'b1; 
	#20 	s0 = 1'b1; //1110
		s1 = 1'b1;
		r0 = 1'b1;
		r1 = 1'b0;
	#20 	s0 = 1'b1; //1111
		s1 = 1'b1;
		r0 = 1'b1;
		r1 = 1'b1;
	end
endmodule 
