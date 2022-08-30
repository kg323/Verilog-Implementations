/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun May 15 23:50:57 2022
/////////////////////////////////////////////////////////////


module counter_0_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[9]), .A2(A[9]), .Y(SUM[9]) );
endmodule


module counter_0 ( clk, addr, en, rst );
  output [9:0] addr;
  input clk, en, rst;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n1;
  tri   clk;
  tri   rst;

  DFFARX1_RVT addr_reg_0_ ( .D(n11), .CLK(clk), .RSTB(rst), .Q(addr[0]) );
  DFFARX1_RVT addr_reg_1_ ( .D(n10), .CLK(clk), .RSTB(rst), .Q(addr[1]) );
  DFFARX1_RVT addr_reg_2_ ( .D(n9), .CLK(clk), .RSTB(rst), .Q(addr[2]) );
  DFFARX1_RVT addr_reg_3_ ( .D(n8), .CLK(clk), .RSTB(rst), .Q(addr[3]) );
  DFFARX1_RVT addr_reg_4_ ( .D(n7), .CLK(clk), .RSTB(rst), .Q(addr[4]) );
  DFFARX1_RVT addr_reg_5_ ( .D(n6), .CLK(clk), .RSTB(rst), .Q(addr[5]) );
  DFFARX1_RVT addr_reg_6_ ( .D(n5), .CLK(clk), .RSTB(rst), .Q(addr[6]) );
  DFFARX1_RVT addr_reg_7_ ( .D(n4), .CLK(clk), .RSTB(rst), .Q(addr[7]) );
  DFFARX1_RVT addr_reg_8_ ( .D(n3), .CLK(clk), .RSTB(rst), .Q(addr[8]) );
  DFFARX1_RVT addr_reg_9_ ( .D(n2), .CLK(clk), .RSTB(rst), .Q(addr[9]) );
  AO22X1_RVT U3 ( .A1(n1), .A2(addr[9]), .A3(en), .A4(N11), .Y(n2) );
  AO22X1_RVT U4 ( .A1(n1), .A2(addr[8]), .A3(N10), .A4(en), .Y(n3) );
  AO22X1_RVT U5 ( .A1(n1), .A2(addr[7]), .A3(N9), .A4(en), .Y(n4) );
  AO22X1_RVT U6 ( .A1(n1), .A2(addr[6]), .A3(N8), .A4(en), .Y(n5) );
  AO22X1_RVT U7 ( .A1(n1), .A2(addr[5]), .A3(N7), .A4(en), .Y(n6) );
  AO22X1_RVT U8 ( .A1(n1), .A2(addr[4]), .A3(N6), .A4(en), .Y(n7) );
  AO22X1_RVT U9 ( .A1(n1), .A2(addr[3]), .A3(N5), .A4(en), .Y(n8) );
  AO22X1_RVT U10 ( .A1(n1), .A2(addr[2]), .A3(N4), .A4(en), .Y(n9) );
  AO22X1_RVT U11 ( .A1(n1), .A2(addr[1]), .A3(N3), .A4(en), .Y(n10) );
  AO22X1_RVT U12 ( .A1(n1), .A2(addr[0]), .A3(N2), .A4(en), .Y(n11) );
  counter_0_DW01_inc_0 add_22 ( .A(addr), .SUM({N11, N10, N9, N8, N7, N6, N5, 
        N4, N3, N2}) );
  INVX1_RVT U13 ( .A(en), .Y(n1) );
endmodule


module counter_1_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[9]), .A2(A[9]), .Y(SUM[9]) );
endmodule


module counter_1 ( clk, addr, en, rst );
  output [9:0] addr;
  input clk, en, rst;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, n1, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  tri   clk;
  tri   en;
  tri   rst;

  DFFARX1_RVT addr_reg_0_ ( .D(n12), .CLK(clk), .RSTB(rst), .Q(addr[0]) );
  DFFARX1_RVT addr_reg_1_ ( .D(n13), .CLK(clk), .RSTB(rst), .Q(addr[1]) );
  DFFARX1_RVT addr_reg_2_ ( .D(n14), .CLK(clk), .RSTB(rst), .Q(addr[2]) );
  DFFARX1_RVT addr_reg_3_ ( .D(n15), .CLK(clk), .RSTB(rst), .Q(addr[3]) );
  DFFARX1_RVT addr_reg_4_ ( .D(n16), .CLK(clk), .RSTB(rst), .Q(addr[4]) );
  DFFARX1_RVT addr_reg_5_ ( .D(n17), .CLK(clk), .RSTB(rst), .Q(addr[5]) );
  DFFARX1_RVT addr_reg_6_ ( .D(n18), .CLK(clk), .RSTB(rst), .Q(addr[6]) );
  DFFARX1_RVT addr_reg_7_ ( .D(n19), .CLK(clk), .RSTB(rst), .Q(addr[7]) );
  DFFARX1_RVT addr_reg_8_ ( .D(n20), .CLK(clk), .RSTB(rst), .Q(addr[8]) );
  DFFARX1_RVT addr_reg_9_ ( .D(n21), .CLK(clk), .RSTB(rst), .Q(addr[9]) );
  AO22X1_RVT U3 ( .A1(n1), .A2(addr[9]), .A3(en), .A4(N11), .Y(n21) );
  AO22X1_RVT U4 ( .A1(n1), .A2(addr[8]), .A3(N10), .A4(en), .Y(n20) );
  AO22X1_RVT U5 ( .A1(n1), .A2(addr[7]), .A3(N9), .A4(en), .Y(n19) );
  AO22X1_RVT U6 ( .A1(n1), .A2(addr[6]), .A3(N8), .A4(en), .Y(n18) );
  AO22X1_RVT U7 ( .A1(n1), .A2(addr[5]), .A3(N7), .A4(en), .Y(n17) );
  AO22X1_RVT U8 ( .A1(n1), .A2(addr[4]), .A3(N6), .A4(en), .Y(n16) );
  AO22X1_RVT U9 ( .A1(n1), .A2(addr[3]), .A3(N5), .A4(en), .Y(n15) );
  AO22X1_RVT U10 ( .A1(n1), .A2(addr[2]), .A3(N4), .A4(en), .Y(n14) );
  AO22X1_RVT U11 ( .A1(n1), .A2(addr[1]), .A3(N3), .A4(en), .Y(n13) );
  AO22X1_RVT U12 ( .A1(n1), .A2(addr[0]), .A3(N2), .A4(en), .Y(n12) );
  counter_1_DW01_inc_0 add_22 ( .A(addr), .SUM({N11, N10, N9, N8, N7, N6, N5, 
        N4, N3, N2}) );
  INVX1_RVT U13 ( .A(en), .Y(n1) );
endmodule


module RAM ( clk, re_wr, rst_n, data, full_flag, empty_flag, data_out );
  input [7:0] data;
  output [7:0] data_out;
  input clk, re_wr, rst_n;
  output full_flag, empty_flag;
  wire   n_0_net_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n31, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53;
  wire   [9:0] rd_address;
  wire   [9:0] wr_address;
  tri   clk;
  tri   re_wr;
  tri   rst_n;
  tri   [7:0] data;
  tri   full_flag;
  tri   empty_flag;
  tri   [7:0] data_out;
  tri   re_wr_p;
  tri   n_22_net_;
  tri   [9:0] address;
  tri   datao_7_;
  tri   datao_6_;
  tri   datao_5_;
  tri   datao_4_;
  tri   datao_3_;
  tri   datao_2_;
  tri   datao_1_;
  tri   datao_0_;
  tri   data_out_p_7_;
  tri   data_out_p_6_;
  tri   data_out_p_5_;
  tri   data_out_p_4_;
  tri   data_out_p_3_;
  tri   data_out_p_2_;
  tri   data_out_p_1_;
  tri   data_out_p_0_;
  tri   n32;
  tri   n33;

  INVX1_RVT I_2 ( .A(re_wr_p), .Y(n_22_net_) );
  DFFARX1_RVT full_flag_reg ( .D(n10), .CLK(clk), .RSTB(rst_n), .Q(full_flag)
         );
  DFFARX1_RVT empty_flag_reg ( .D(n9), .CLK(clk), .RSTB(rst_n), .Q(empty_flag)
         );
  OR2X1_RVT U3 ( .A1(n1), .A2(empty_flag), .Y(n9) );
  NAND3X0_RVT U5 ( .A1(wr_address[7]), .A2(wr_address[6]), .A3(wr_address[8]), 
        .Y(n3) );
  NAND4X0_RVT U6 ( .A1(wr_address[4]), .A2(wr_address[3]), .A3(wr_address[5]), 
        .A4(n4), .Y(n2) );
  AND3X1_RVT U7 ( .A1(wr_address[1]), .A2(wr_address[0]), .A3(wr_address[2]), 
        .Y(n4) );
  OR2X1_RVT U8 ( .A1(n5), .A2(full_flag), .Y(n10) );
  NAND3X0_RVT U10 ( .A1(rd_address[6]), .A2(rd_address[5]), .A3(rd_address[7]), 
        .Y(n7) );
  NAND4X0_RVT U11 ( .A1(rd_address[0]), .A2(n31), .A3(rd_address[1]), .A4(n8), 
        .Y(n6) );
  AND3X1_RVT U12 ( .A1(rd_address[3]), .A2(rd_address[2]), .A3(rd_address[4]), 
        .Y(n8) );
  OAI22X1_RVT U34 ( .A1(re_wr), .A2(n53), .A3(n31), .A4(n43), .Y(address[9])
         );
  OAI22X1_RVT U35 ( .A1(re_wr), .A2(n52), .A3(n31), .A4(n42), .Y(address[8])
         );
  OAI22X1_RVT U36 ( .A1(re_wr), .A2(n51), .A3(n31), .A4(n41), .Y(address[7])
         );
  OAI22X1_RVT U37 ( .A1(re_wr), .A2(n50), .A3(n31), .A4(n40), .Y(address[6])
         );
  OAI22X1_RVT U38 ( .A1(re_wr), .A2(n49), .A3(n31), .A4(n39), .Y(address[5])
         );
  OAI22X1_RVT U39 ( .A1(re_wr), .A2(n48), .A3(n31), .A4(n38), .Y(address[4])
         );
  OAI22X1_RVT U40 ( .A1(re_wr), .A2(n47), .A3(n31), .A4(n37), .Y(address[3])
         );
  OAI22X1_RVT U41 ( .A1(re_wr), .A2(n46), .A3(n31), .A4(n36), .Y(address[2])
         );
  OAI22X1_RVT U42 ( .A1(re_wr), .A2(n45), .A3(n31), .A4(n35), .Y(address[1])
         );
  OAI22X1_RVT U43 ( .A1(n44), .A2(re_wr), .A3(n34), .A4(n31), .Y(address[0])
         );
  NOR4X1_RVT U4 ( .A1(n2), .A2(n3), .A3(n43), .A4(n31), .Y(n1) );
  NOR4X1_RVT U9 ( .A1(n6), .A2(n7), .A3(n52), .A4(n53), .Y(n5) );
  counter_0 read_pointer ( .clk(clk), .addr(rd_address), .en(n_0_net_), .rst(
        rst_n) );
  counter_1 write_pointer ( .clk(clk), .addr(wr_address), .en(re_wr), .rst(
        rst_n) );
  I1025_NS I1 ( .PADIO(data[0]), .DOUT(datao_0_), .R_EN(1'b1) );
  I1025_NS I2 ( .PADIO(data[1]), .DOUT(datao_1_), .R_EN(1'b1) );
  I1025_NS I3 ( .PADIO(data[2]), .DOUT(datao_2_), .R_EN(1'b1) );
  I1025_NS I4 ( .PADIO(data[3]), .DOUT(datao_3_), .R_EN(1'b1) );
  I1025_NS I5 ( .PADIO(data[4]), .DOUT(datao_4_), .R_EN(1'b1) );
  I1025_NS I6 ( .PADIO(data[5]), .DOUT(datao_5_), .R_EN(1'b1) );
  I1025_NS I7 ( .PADIO(data[6]), .DOUT(datao_6_), .R_EN(1'b1) );
  I1025_NS I8 ( .PADIO(data[7]), .DOUT(datao_7_), .R_EN(1'b1) );
  I1025_NS I9 ( .PADIO(clk), .R_EN(1'b1) );
  I1025_NS I10 ( .PADIO(re_wr), .DOUT(re_wr_p), .R_EN(1'b1) );
  I1025_NS I11 ( .PADIO(rst_n), .R_EN(1'b1) );
  D12I1025_NS O1 ( .PADIO(data_out[0]), .DIN(data_out_p_0_), .EN(1'b1) );
  D12I1025_NS O2 ( .PADIO(data_out[1]), .DIN(data_out_p_1_), .EN(1'b1) );
  D12I1025_NS O3 ( .PADIO(data_out[2]), .DIN(data_out_p_2_), .EN(1'b1) );
  D12I1025_NS O4 ( .PADIO(data_out[3]), .DIN(data_out_p_3_), .EN(1'b1) );
  D12I1025_NS O5 ( .PADIO(data_out[4]), .DIN(data_out_p_4_), .EN(1'b1) );
  D12I1025_NS O6 ( .PADIO(data_out[5]), .DIN(data_out_p_5_), .EN(1'b1) );
  D12I1025_NS O7 ( .PADIO(data_out[6]), .DIN(data_out_p_6_), .EN(1'b1) );
  D12I1025_NS O8 ( .PADIO(data_out[7]), .DIN(data_out_p_7_), .EN(1'b1) );
  D12I1025_NS O9 ( .PADIO(full_flag), .EN(1'b1) );
  D12I1025_NS O10 ( .PADIO(empty_flag), .EN(1'b1) );
  SRAM1RW1024x8 r1 ( .CE(clk), .WEB(n_22_net_), .OEB(1'b0), .CSB(1'b0), .A(
        address), .I({datao_7_, datao_6_, datao_5_, datao_4_, datao_3_, 
        datao_2_, datao_1_, datao_0_}), .O({data_out_p_7_, data_out_p_6_, 
        data_out_p_5_, data_out_p_4_, data_out_p_3_, data_out_p_2_, 
        data_out_p_1_, data_out_p_0_}) );
  NBUFFX2_RVT U44 ( .A(n_0_net_), .Y(n31) );
  INVX1_RVT U45 ( .A(re_wr), .Y(n_0_net_) );
  INVX1_RVT U48 ( .A(wr_address[0]), .Y(n34) );
  INVX1_RVT U49 ( .A(wr_address[1]), .Y(n35) );
  INVX1_RVT U50 ( .A(wr_address[2]), .Y(n36) );
  INVX1_RVT U51 ( .A(wr_address[3]), .Y(n37) );
  INVX1_RVT U52 ( .A(wr_address[4]), .Y(n38) );
  INVX1_RVT U53 ( .A(wr_address[5]), .Y(n39) );
  INVX1_RVT U54 ( .A(wr_address[6]), .Y(n40) );
  INVX1_RVT U55 ( .A(wr_address[7]), .Y(n41) );
  INVX1_RVT U56 ( .A(wr_address[8]), .Y(n42) );
  INVX1_RVT U57 ( .A(wr_address[9]), .Y(n43) );
  INVX1_RVT U58 ( .A(rd_address[0]), .Y(n44) );
  INVX1_RVT U59 ( .A(rd_address[1]), .Y(n45) );
  INVX1_RVT U60 ( .A(rd_address[2]), .Y(n46) );
  INVX1_RVT U61 ( .A(rd_address[3]), .Y(n47) );
  INVX1_RVT U62 ( .A(rd_address[4]), .Y(n48) );
  INVX1_RVT U63 ( .A(rd_address[5]), .Y(n49) );
  INVX1_RVT U64 ( .A(rd_address[6]), .Y(n50) );
  INVX1_RVT U65 ( .A(rd_address[7]), .Y(n51) );
  INVX1_RVT U66 ( .A(rd_address[8]), .Y(n52) );
  INVX1_RVT U67 ( .A(rd_address[9]), .Y(n53) );
endmodule

