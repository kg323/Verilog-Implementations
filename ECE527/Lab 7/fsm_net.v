/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Apr 24 13:36:21 2022
/////////////////////////////////////////////////////////////


module fsm ( clk, reset, b1, b2, b3, signal );
  input clk, reset, b1, b2, b3;
  output signal;
  wire   N56, n1, n4, n5, n6, n7, n11, n12, n14, n15;
  wire   [2:0] curr_state;
  wire   [2:1] next_state;

  DFFARX1_RVT curr_state_reg_0_ ( .D(n14), .CLK(clk), .RSTB(n1), .Q(
        curr_state[0]), .QN(n14) );
  DFFARX1_RVT curr_state_reg_1_ ( .D(next_state[1]), .CLK(clk), .RSTB(n1), .Q(
        curr_state[1]), .QN(n15) );
  DFFARX1_RVT curr_state_reg_2_ ( .D(next_state[2]), .CLK(clk), .RSTB(n1), .Q(
        curr_state[2]), .QN(n4) );
  INVX1_RVT U3 ( .A(reset), .Y(n1) );
  OAI22X1_RVT U11 ( .A1(n5), .A2(n4), .A3(n6), .A4(n7), .Y(next_state[2]) );
  NAND2X0_RVT U12 ( .A1(curr_state[1]), .A2(curr_state[0]), .Y(n7) );
  AO22X1_RVT U15 ( .A1(n14), .A2(curr_state[1]), .A3(n15), .A4(curr_state[0]), 
        .Y(next_state[1]) );
  AO22X1_RVT U19 ( .A1(curr_state[2]), .A2(b2), .A3(b1), .A4(n4), .Y(n12) );
  OR2X1_RVT U20 ( .A1(b3), .A2(curr_state[0]), .Y(n11) );
  DFFX1_RVT signal_reg ( .D(N56), .CLK(clk), .Q(signal) );
  AND3X1_RVT U23 ( .A1(n11), .A2(n12), .A3(curr_state[1]), .Y(N56) );
  NAND2X0_RVT U24 ( .A1(n4), .A2(b2), .Y(n6) );
  AND2X1_RVT U25 ( .A1(curr_state[1]), .A2(curr_state[0]), .Y(n5) );
endmodule

