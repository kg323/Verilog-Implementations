  module clock_tb();
          reg clk1;
          reg clk2;
	reg [7:0]swt;
	reg [3:0] btn;
	wire [7:0] led;
	wire [3:0] an;
	wire [7:0] ssg;


defparam clock.clockdiv.CMAX = 8;
defparam clock.clockdiv.CMAX2 = 0;
defparam clock.clockdiv.CMAX2R = 1;


  always #10 clk1 <= ~clk1;
   always #15 clk2 <= ~clk2;


   initial begin
     clk1 = 0;     
     clk2 = 0; 
     btn =0;
     swt =8'b00000000;    
    
        btn = 0;
        #100
        btn[0] = 1;
       #100
       btn[0] = 0;
          #1000
        btn[1] = 1;
       #1000
       btn[1] = 0;
          #1000
        btn[2] = 1;
       #1000
      btn[2] = 0;
       #1000
	swt[0] = 1;
       #1000

       $stop;

   end


clock clock
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


initial
$monitor(

" hours=%h ",  clock.hours  ,
" mins=%h ",  clock.mins  ,
" secs=%h ",  clock.secs  ,
" sethour=%h ",  clock.sethour  ,
" setmin=%h ",  clock.setmin  ,
" strobe_1sec=%h ",  clock.strobe_1sec  ,
" strobe1=%h ",  clock.strobe1  ,
" rst_n=%h ",  clock.tim.rst_n  ,
" clk=%h ",  clock.tim.clk  ,
" s1=%h ",  clock.tim.s1  ,
" btn=%h ",  btn  ,
" swt=%h ",  swt  );


endmodule




