 //pattern 1010_1001_1010_1101


module binary(
        clk,
        rst_n,
	bit,
      pat,
      error1,
      error2,
	   pattern_match 
        );


input clk;
input rst_n;
input bit;
input [15:0] pat;
input [15:0] error1;
input [15:0] error2;

output pattern_match;
wire bit;


//register bits will change when using a different state machine 
reg [3:0] state;           


// nets                          
reg [3:0] nxt_state;

parameter  IDLE = 4'b0000;
parameter  STATE1 = 4'b0001;
parameter  STATE2 = 4'b0010;
parameter  STATE3 = 4'b0011;
parameter  STATE4 = 4'b0100;
parameter  STATE5 = 4'b0101;
parameter  STATE6 = 4'b0110;
parameter  STATE7 = 4'b0111;
parameter  STATE8 = 4'b1000;
parameter  STATE9 = 4'b1001;
parameter  STATE10 = 4'b1010;
parameter  STATE11 = 4'b1011;
parameter  STATE12 = 4'b1100;
parameter  STATE13 = 4'b1101;
parameter  STATE14 = 4'b1110;
parameter  STATE15 = 4'b1111;
//parameter  STATE16 = 5'b10000; 

always @(posedge clk or negedge rst_n)
 begin
   if(~rst_n)
     begin         
          state <=  IDLE;
     end
   else
     begin
       state <= nxt_state ^ error1[3:0];

      end
  end

  assign pattern_match = ((state == STATE15) && (bit == pat[0]));
  
always @ (state or bit or pat or error2[3:0])



		  case (state^error2[3:0])

 IDLE : if (bit == pat[15])  nxt_state = STATE1; else nxt_state = IDLE;
 STATE1 : if (bit == pat[14])  nxt_state = STATE2; else nxt_state = IDLE;
STATE2 : if (bit == pat[13])  nxt_state = STATE3; else nxt_state = IDLE;
STATE3 : if (bit == pat[12])  nxt_state = STATE4; else nxt_state = IDLE;
STATE4 : if (bit == pat[11])  nxt_state = STATE5; else nxt_state = IDLE;
STATE5 : if (bit == pat[10])  nxt_state = STATE6; else nxt_state = IDLE;
STATE6 : if (bit == pat[9])  nxt_state =  STATE7; else nxt_state = IDLE;
STATE7 : if (bit == pat[8])  nxt_state =  STATE8; else nxt_state = IDLE;
STATE8 : if (bit == pat[7])  nxt_state =  STATE9; else nxt_state = IDLE;
STATE9 : if (bit == pat[6])  nxt_state =  STATE10; else nxt_state = IDLE;
STATE10 : if (bit == pat[5])  nxt_state = STATE11; else nxt_state = IDLE;
STATE11 : if (bit == pat[4])  nxt_state = STATE12; else nxt_state = IDLE;
STATE12 : if (bit == pat[3])  nxt_state = STATE13; else nxt_state = IDLE;
STATE13 : if (bit == pat[2])  nxt_state = STATE14; else nxt_state = IDLE;
STATE14 : if (bit == pat[1])  nxt_state = STATE15; else nxt_state = IDLE;
STATE15 : if (bit == pat[0])  nxt_state = IDLE; else nxt_state = IDLE;
                  

 
      
            	default: nxt_state = IDLE;
        endcase
 




endmodule 
