/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Feb 13 20:59:38 2022
/////////////////////////////////////////////////////////////


module count_zeros ( data, reset, read, clk, zeros, is_legal, data_ready );
  output [3:0] zeros;
  input data, reset, read, clk;
  output is_legal, data_ready;
  wire   seenZero, n1, n3, n4, n6, n7, n8, n9, n10, n12, n34, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95;
  wire   [1:0] bits_seen;

  FD1 bits_seen_reg_0_ ( .D(n49), .CP(clk), .Q(bits_seen[0]), .QN(n10) );
  FD1 bits_seen_reg_1_ ( .D(n47), .CP(clk), .Q(bits_seen[1]), .QN(n9) );
  FD1 zeros_reg_0_ ( .D(n45), .CP(clk), .Q(zeros[0]), .QN(n7) );
  FD1 seenZero_reg ( .D(n46), .CP(clk), .Q(seenZero), .QN(n75) );
  FD1 is_legal_reg ( .D(n41), .CP(clk), .Q(is_legal) );
  FDS2 data_ready_reg ( .CR(n95), .D(n1), .CP(clk), .Q(data_ready), .QN(n62)
         );
  FDS2L seenTrailing_reg ( .CR(1'b1), .D(n95), .LD(n34), .CP(clk), .Q(n58), 
        .QN(n12) );
  FD1 zeros_reg_3_ ( .D(n42), .CP(clk), .Q(zeros[3]), .QN(n3) );
  FD1 zeros_reg_2_ ( .D(n43), .CP(clk), .Q(zeros[2]), .QN(n4) );
  FD1 zeros_reg_1_ ( .D(n44), .CP(clk), .Q(zeros[1]), .QN(n6) );
  FD1 bits_seen_reg_2_ ( .D(n48), .CP(clk), .Q(n52), .QN(n8) );
  ND2 U44 ( .A(n67), .B(n66), .Z(n73) );
  MUX21L U45 ( .A(n94), .B(n93), .S(n3), .Z(n42) );
  AN2P U46 ( .A(n12), .B(n95), .Z(n50) );
  AN2P U47 ( .A(bits_seen[0]), .B(n95), .Z(n51) );
  ND2P U48 ( .A(read), .B(n74), .Z(n53) );
  OR3 U49 ( .A(n6), .B(n4), .C(n7), .Z(n91) );
  AO6P U50 ( .A(n61), .B(n91), .C(n90), .Z(n94) );
  ND4 U51 ( .A(bits_seen[0]), .B(n52), .C(bits_seen[1]), .D(n95), .Z(n67) );
  ND4 U52 ( .A(bits_seen[0]), .B(n52), .C(bits_seen[1]), .D(n95), .Z(n55) );
  AO6 U53 ( .A(n76), .B(n75), .C(reset), .Z(n46) );
  MUX21L U54 ( .A(n68), .B(n10), .S(n73), .Z(n49) );
  ND2 U55 ( .A(n71), .B(n70), .Z(n47) );
  AO7 U56 ( .A(n69), .B(n73), .C(bits_seen[1]), .Z(n71) );
  ND3 U57 ( .A(n9), .B(n51), .C(n57), .Z(n70) );
  IVP U58 ( .A(n68), .Z(n69) );
  IVP U59 ( .A(reset), .Z(n95) );
  IVP U60 ( .A(read), .Z(n65) );
  ND2 U61 ( .A(zeros[0]), .B(n63), .Z(n85) );
  AN2P U62 ( .A(n83), .B(n89), .Z(n54) );
  ND2P U63 ( .A(n53), .B(n95), .Z(n56) );
  ND2 U64 ( .A(n53), .B(n95), .Z(n89) );
  AN2P U65 ( .A(n55), .B(n66), .Z(n57) );
  ND2 U66 ( .A(n95), .B(n65), .Z(n66) );
  IVP U67 ( .A(n58), .Z(n59) );
  IVDA U68 ( .A(n90), .Y(n60) );
  IV U69 ( .A(n56), .Z(n90) );
  AN2P U70 ( .A(n50), .B(n56), .Z(n63) );
  IVDA U71 ( .A(n50), .Z(n61) );
  IVDA U72 ( .A(n53), .Y(n79) );
  IVDA U73 ( .A(n74), .Y(n64) );
  IV U74 ( .A(data), .Z(n74) );
  ND2 U75 ( .A(n95), .B(n10), .Z(n68) );
  ND2 U76 ( .A(n51), .B(bits_seen[1]), .Z(n72) );
  AO4 U77 ( .A(n73), .B(n72), .C(n8), .D(reset), .Z(n48) );
  ND2 U78 ( .A(n79), .B(n59), .Z(n76) );
  ND3 U79 ( .A(n64), .B(read), .C(seenZero), .Z(n77) );
  ND2 U80 ( .A(n95), .B(n77), .Z(n34) );
  ND4 U81 ( .A(read), .B(n52), .C(bits_seen[1]), .D(bits_seen[0]), .Z(n80) );
  IVA U82 ( .A(n59), .Z(n78) );
  ND2 U83 ( .A(n79), .B(n78), .Z(n81) );
  ND3 U84 ( .A(n80), .B(n81), .C(n62), .Z(n1) );
  ND2 U85 ( .A(is_legal), .B(n81), .Z(n82) );
  ND2 U86 ( .A(n95), .B(n82), .Z(n41) );
  ND2 U87 ( .A(n61), .B(n56), .Z(n84) );
  MUX21L U88 ( .A(n60), .B(n84), .S(n7), .Z(n45) );
  ND3 U89 ( .A(n7), .B(n95), .C(n12), .Z(n83) );
  MUX21L U90 ( .A(n54), .B(n85), .S(n6), .Z(n44) );
  ND3 U91 ( .A(n59), .B(n95), .C(n6), .Z(n86) );
  AN2P U92 ( .A(n54), .B(n86), .Z(n88) );
  ND3 U93 ( .A(zeros[0]), .B(zeros[1]), .C(n63), .Z(n87) );
  MUX21L U94 ( .A(n88), .B(n87), .S(n4), .Z(n43) );
  IVA U95 ( .A(n91), .Z(n92) );
  ND2 U96 ( .A(n92), .B(n63), .Z(n93) );
endmodule

