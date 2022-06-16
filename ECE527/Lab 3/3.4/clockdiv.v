//	Divide the master clock (50Mhz) down to a lower frequency.
module clockdiv
     (
        clk,
        rst_n,
        strobe_1sec,
	strobe1
	);
input        		clk  ;
input       	       rst_n   ;
output           	strobe1   ;
output           	strobe_1sec   ;


parameter [25:0] CMAX = 50000000-2;
parameter [25:0] CMAX2 = 0;
parameter [25:0] CMAX2R = 17;
reg [25:0] clkdiv;
reg strobe_1sec;
reg strobe1;


	always  @ (posedge clk or negedge rst_n)
		if (!rst_n) clkdiv <=0;
		else if  (strobe_1sec ) clkdiv <=0;
		else clkdiv <= clkdiv + 1;


	always  @ (posedge clk or negedge rst_n)
		if (!rst_n) strobe_1sec <=0;
		else if  (clkdiv == CMAX ) strobe_1sec <=1;
		else strobe_1sec <= 0;

	always  @ (posedge clk or negedge rst_n)
		if (!rst_n) strobe1 <=0;
		else if  (clkdiv[CMAX2R:0] == CMAX2 ) strobe1 <=1;
		else strobe1 <= 0;


endmodule

