// counts time in secs mins and hours
//
module tim(
clk,
rst_n,
sethour,
setmin,
strobe_1sec,
hours,
mins,
secs
);

input clk;
input rst_n;
input sethour;
input setmin;
input strobe_1sec;
output [7:0] hours;
output [7:0] mins;
output [7:0] secs;


reg [7:0] hours;
reg [7:0] mins;
reg [7:0] secs;

wire s1,m1,h1;

always @ (posedge clk or negedge rst_n)
if (!rst_n) secs <=0;
else if (strobe_1sec)
if (s1) secs <=0;
else if (secs[3:0] == 9) secs <=secs+7;
else secs <= secs+1;	

assign s1 = (secs == 16'h59) || setmin ;


always @ (posedge clk or negedge rst_n)
if (!rst_n) mins <=0;
else if (strobe_1sec && s1)
if (m1) mins <=0;
else if (mins[3:0] == 9) mins <=mins+7;
else mins <= mins+1;	

assign m1 = (mins == 16'h59) ;

always @ (posedge clk or negedge rst_n)
if (!rst_n) hours <=0;
else if (strobe_1sec && (( s1 && m1)||sethour) )
if (h1) hours <=0;
else if (hours[3:0] == 9) hours <=hours+7;
else hours <= hours+1;	

assign h1 = (hours == 16'h12);

endmodule
