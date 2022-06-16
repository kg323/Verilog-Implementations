module display_digit(digit,n,ssg,an);
input [3:0] digit;
input [1:0] n;
output [7:0] ssg;
output [3:0] an;

wire [7:0] ssg;
reg [3:0] an1;
wire [3:0] an;
reg [6:0] dig;

always @(digit)
	case (digit)

	4'd0:	dig =    	7'b0111111;
	4'd1:	dig =  		7'b0000110;
	4'd2:	dig =  		7'b1011011;
	4'd3:	dig =  		7'b1001111;
	4'd4:	dig =  		7'b1100110;
	4'd5:	dig =  		7'b1101101;
	4'd6:	dig =  		7'b1111101;
	4'd7:	dig =  		7'b0000111;
	4'd8:	dig =  		7'b1111111;
	4'd9:	dig =  		7'b1101111;
	4'd10:  dig =  		7'b1110111;
	4'd11:  dig =  		7'b1111100;
	4'd12:  dig =  		7'b0111001;
	4'd13:  dig =  		7'b1011110;
	4'd14:  dig =  		7'b1111001;
	4'd15:  dig =  		7'b1110001;
	default: dig =		7'b0000000;
endcase


assign 	ssg [6:0] = ~ dig;
assign	ssg[7] = 1'b1;

always @(n)
case (n)
0:	an1 = 4'b0001;
1:	an1 = 4'b0010;
2:	an1 = 4'b0100;
3:	an1 = 4'b1000;
endcase
assign an = ~an1;
endmodule
