//change
module clock
     (
        clk1,
	clk2,	
        btn,
        swt,
        led,
        an,
        ssg,
	vs,
	hs,
	blue,
	grn,
	red
	 );


input        		clk1  ;
input        		clk2  ;
input   [3:0]    	btn   ;
input   [7:0]     	swt   ;
output  [7:0]      	led   ;
output  [3:0]      	an    ;
output  [7:0]      	ssg   ;
output    	vs;
output    	hs;
output    	blue;
output    	grn;
output    	red;



reg sec2;

wire  [7:0] led    ;
wire  [3:0] an      ;
wire  [7:0] ssg     ;
wire clk;	

wire    	vs =1;
wire    	hs = 1;
wire    	blue = 0;
wire    	grn =0;
wire    	red = 0;

wire mode;

wire rst_n;

wire [15:0] value ;


wire [7:0] hours;
wire [7:0] mins;
wire [7:0] secs;

assign clk = clk1;

tim tim(
	.clk(clk),
	.rst_n(rst_n),
	.sethour(sethour),
	.setmin(setmin),
	.strobe_1sec(strobe_1sec),
	.hours(hours),
	.mins(mins),
	.secs(secs)
	);

clockdiv clockdiv
     (
	.clk(clk),
	.rst_n(rst_n),
	.strobe_1sec(strobe_1sec),
	.strobe1(strobe1)
	);



display_value display_value
     (
	.clk(clk),
	.rst_n(rst_n),
	.value(value),
	.strobe1(strobe1),
	.an(an),
	.ssg(ssg)
	);


assign value = mode  ? {hours,mins} : {mins,secs};

//indicator
always @ (posedge clk)
if (strobe_1sec) sec2 <= ~sec2;


// switch assignments
assign mode = swt[0];
assign rst_n = ~btn[0];
assign setmin = btn[1];
assign sethour = btn[2];
assign led[0] = sec2;

//spares
assign led [7] = swt[7:0] || btn[3:0];
assign led [6:0] = swt[2:0] || btn[3:0];




  
endmodule



