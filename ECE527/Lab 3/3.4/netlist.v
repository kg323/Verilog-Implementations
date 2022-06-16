/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Mar 13 21:18:59 2022
/////////////////////////////////////////////////////////////


module clock ( clk1, clk2, btn, swt, led, an, ssg, vs, hs, blue, grn, red );
  input [3:0] btn;
  input [7:0] swt;
  output [7:0] led;
  output [3:0] an;
  output [7:0] ssg;
  input clk1, clk2;
  output vs, hs, blue, grn, red;
  wire   strobe_1sec, strobe1, N14, N17, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, SYNOPSYS_UNCONNECTED_1;
  wire   [7:0] hours;
  wire   [7:0] mins;
  wire   [7:1] secs;
  assign hs = 1'b1;
  assign vs = 1'b1;
  assign red = 1'b0;
  assign grn = 1'b0;
  assign blue = 1'b0;
  assign led[1] = 1'b0;
  assign led[2] = 1'b0;
  assign led[3] = 1'b0;
  assign led[4] = 1'b0;
  assign led[5] = 1'b0;
  assign led[6] = 1'b0;
  assign ssg[7] = 1'b1;

  OR2 C55 ( .A(N14), .B(N17), .Z(n57) );
  OR4 U41 ( .A(btn[1]), .B(btn[0]), .C(btn[3]), .D(btn[2]), .Z(N17) );
  OR3 U42 ( .A(swt[2]), .B(swt[1]), .C(swt[0]), .Z(N14) );
  tim tim ( .clk(clk1), .rst_n(n54), .sethour(btn[2]), .setmin(btn[1]), 
        .strobe_1sec(strobe_1sec), .hours(hours), .mins(mins), .secs({secs, 
        n58}) );
  clockdiv clockdiv ( .clk(clk1), .rst_n(n54), .strobe_1sec(strobe_1sec), 
        .strobe1(strobe1) );
  display_value display_value ( .clk(clk1), .rst_n(n54), .value({n44, n46, n47, 
        n45, n42, n41, n43, n48, n38, n40, n51, n39, n52, n49, n50, n53}), 
        .strobe1(strobe1), .an(an), .ssg({SYNOPSYS_UNCONNECTED_1, ssg[6:0]})
         );
  IVP U43 ( .A(n23), .Z(n40) );
  IVP U44 ( .A(n24), .Z(n51) );
  IVP U45 ( .A(n22), .Z(n38) );
  IVP U46 ( .A(n25), .Z(n39) );
  IVP U47 ( .A(swt[0]), .Z(n56) );
  AO2 U48 ( .A(swt[0]), .B(mins[5]), .C(secs[5]), .D(n56), .Z(n24) );
  IVP U49 ( .A(btn[0]), .Z(n54) );
  IVP U50 ( .A(n35), .Z(n53) );
  AO2 U51 ( .A(swt[0]), .B(mins[0]), .C(led[0]), .D(n56), .Z(n35) );
  IVP U52 ( .A(n32), .Z(n45) );
  AO2 U53 ( .A(n56), .B(mins[4]), .C(hours[4]), .D(swt[0]), .Z(n32) );
  IVP U54 ( .A(n21), .Z(n48) );
  AO2 U55 ( .A(n56), .B(mins[0]), .C(hours[0]), .D(swt[0]), .Z(n21) );
  IVP U56 ( .A(n27), .Z(n49) );
  IVP U57 ( .A(n30), .Z(n46) );
  IVP U58 ( .A(n34), .Z(n41) );
  AO2 U59 ( .A(n56), .B(mins[2]), .C(hours[2]), .D(swt[0]), .Z(n34) );
  IVP U60 ( .A(n28), .Z(n50) );
  IVP U61 ( .A(n31), .Z(n47) );
  AO2 U62 ( .A(n56), .B(mins[5]), .C(hours[5]), .D(swt[0]), .Z(n31) );
  IVP U63 ( .A(n20), .Z(n43) );
  AO2 U64 ( .A(n56), .B(mins[1]), .C(swt[0]), .D(hours[1]), .Z(n20) );
  IVP U65 ( .A(n26), .Z(n52) );
  AO2 U66 ( .A(swt[0]), .B(mins[3]), .C(secs[3]), .D(n56), .Z(n26) );
  IVP U67 ( .A(n29), .Z(n44) );
  AO2 U68 ( .A(n56), .B(mins[7]), .C(hours[7]), .D(swt[0]), .Z(n29) );
  IVP U69 ( .A(n33), .Z(n42) );
  AO2 U70 ( .A(n56), .B(mins[3]), .C(hours[3]), .D(swt[0]), .Z(n33) );
  ND3 U71 ( .A(n36), .B(n55), .C(n37), .Z(led[7]) );
  IVP U72 ( .A(N14), .Z(n55) );
  NR2 U73 ( .A(swt[3]), .B(N17), .Z(n36) );
  NR4 U74 ( .A(swt[7]), .B(swt[6]), .C(swt[5]), .D(swt[4]), .Z(n37) );
  AO2 U75 ( .A(n56), .B(mins[6]), .C(hours[6]), .D(swt[0]), .Z(n30) );
  AO2 U76 ( .A(swt[0]), .B(mins[6]), .C(secs[6]), .D(n56), .Z(n23) );
  AO2 U77 ( .A(swt[0]), .B(mins[7]), .C(secs[7]), .D(n56), .Z(n22) );
  AO2 U78 ( .A(swt[0]), .B(mins[2]), .C(secs[2]), .D(n56), .Z(n27) );
  AO2 U79 ( .A(swt[0]), .B(mins[4]), .C(secs[4]), .D(n56), .Z(n25) );
  AO2 U80 ( .A(swt[0]), .B(mins[1]), .C(secs[1]), .D(n56), .Z(n28) );
  AN2 U81 ( .A(n57), .B(n58), .Z(led[0]) );
endmodule

