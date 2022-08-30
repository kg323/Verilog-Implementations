/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Mon Apr  4 12:34:58 2022
/////////////////////////////////////////////////////////////


module fsm ( clk, reset, b1, b2, b3, signal );
  input clk, reset, b1, b2, b3;
  output signal;
  wire   N56, n1, n4, n6, n7, n8, n9, n10, n11, n15, n16;
  wire   [2:0] curr_state;
  wire   [2:1] next_state;

  FD2 curr_state_reg_2_ ( .D(next_state[2]), .CP(clk), .CD(n1), .Q(
        curr_state[2]), .QN(n6) );
  FD1 signal_reg ( .D(N56), .CP(clk), .Q(signal) );
  IVA U3 ( .A(reset), .Z(n1) );
  FJK2 curr_state_reg_0_ ( .J(1'b1), .K(1'b1), .CP(clk), .CD(n1), .Q(
        curr_state[0]), .QN(n8) );
  FD2 curr_state_reg_1_ ( .D(next_state[1]), .CP(clk), .CD(n1), .QN(n7) );
  NR2 U25 ( .A(n8), .B(n7), .Z(n11) );
  AO7 U26 ( .A(n9), .B(n6), .C(n10), .Z(next_state[2]) );
  NR2 U27 ( .A(n7), .B(n4), .Z(n9) );
  ND3 U28 ( .A(b2), .B(n11), .C(n6), .Z(n10) );
  IVP U29 ( .A(curr_state[0]), .Z(n4) );
  NR3 U30 ( .A(n7), .B(n15), .C(n16), .Z(N56) );
  NR2 U31 ( .A(b3), .B(curr_state[0]), .Z(n16) );
  AO2 U32 ( .A(b1), .B(n6), .C(curr_state[2]), .D(b2), .Z(n15) );
  EON1 U33 ( .A(n7), .B(curr_state[0]), .C(curr_state[0]), .D(n7), .Z(
        next_state[1]) );
endmodule

