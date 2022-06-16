
module display_value
     (
        clk,
        rst_n,
        value,
	strobe1,
	an,
	ssg );


input        		clk  ;
input       	       rst_n   ;
input   [15:0]         value   ;
input           	strobe1   ;
output  [3:0]      	an    ;
output  [7:0]      	ssg   ;




//nets	wire  [7:0] led    ;
	wire  [3:0] an      ;
	wire  [7:0] ssg     ;
	reg  [3:0] digit;  
	
//regs
	reg  [1:0] cnt4  ;


display_digit display_digit(	
	.digit(digit),
	.n(cnt4),
	.ssg(ssg),
	.an(an)
);





always @(value or cnt4)
case (cnt4)
0:	digit = value[3:0];
1:	digit = value[7:4];
2:	digit = value[11:8];
3:	digit = value[15:12];
endcase



//	Divide the master clock (50Mhz) down to a lower frequency.

//	always  @ (posedge clk or negedge rst_n)
//		if (!rst_n) clkdiv <=0;
//		else clkdiv <= clkdiv + 1;
//			
		


//assign cnt4 = clkdiv[18:17];
	always  @ (posedge clk or negedge rst_n)
		if (!rst_n) cnt4 <=0;
		
		else if (strobe1) cnt4 <= cnt4 + 1;

  
endmodule


