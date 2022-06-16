/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Mar 13 21:12:46 2022
/////////////////////////////////////////////////////////////


module tim ( clk, rst_n, sethour, setmin, strobe_1sec, hours, mins, secs );
  output [7:0] hours;
  output [7:0] mins;
  output [7:0] secs;
  input clk, rst_n, sethour, setmin, strobe_1sec;
  wire   n1127, n1129, n76, n77, n78, n79, n80, n81, n82, n85, n87, n88, n89,
         n92, n93, n95, n96, n97, n98, n99, n102, n103, n104, n105, n107, n108,
         n608, n632, n633, n159, n1126, n722, n771, n818, n876, n879, n176,
         n177, n884, n1128, n1130, n982, n983, n984, n985, n986, n987, n988,
         n989, n990, n991, n992, n993, n994, n995, n996, n997, n998, n999,
         n1000, n1001, n1002, n1003, n1004, n1005, n1007, n1008, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1030, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
         n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064,
         n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074,
         n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084,
         n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094,
         n1095, n1096, n1097, n1098, n1100, n1101, n1102, n1103, n1104, n1105,
         n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115,
         n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125;

  FD2P secs_reg_7_ ( .D(n159), .CP(clk), .CD(n1033), .Q(n1126), .QN(n1017) );
  FJK2P secs_reg_0_ ( .J(n1123), .K(strobe_1sec), .CP(clk), .CD(n1033), .Q(
        secs[0]), .QN(n990) );
  FD2 secs_reg_4_ ( .D(n1124), .CP(clk), .CD(n1033), .Q(n1128), .QN(n1012) );
  FD2 secs_reg_6_ ( .D(n107), .CP(clk), .CD(n1033), .Q(n1127), .QN(n1008) );
  FD2 hours_reg_2_ ( .D(n96), .CP(clk), .CD(n1032), .Q(hours[2]), .QN(n80) );
  FJK2 mins_reg_4_ ( .J(n1097), .K(n1098), .CP(clk), .CD(rst_n), .Q(mins[4]), 
        .QN(n85) );
  FD2 mins_reg_6_ ( .D(n99), .CP(clk), .CD(rst_n), .Q(mins[6]), .QN(n884) );
  FD2 hours_reg_3_ ( .D(n177), .CP(clk), .CD(n1032), .Q(hours[3]), .QN(n79) );
  FD2 hours_reg_1_ ( .D(n97), .CP(clk), .CD(n1032), .Q(hours[1]), .QN(n81) );
  FD2 hours_reg_7_ ( .D(n95), .CP(clk), .CD(n1032), .Q(hours[7]), .QN(n77) );
  FD2 hours_reg_4_ ( .D(n93), .CP(clk), .CD(n1032), .Q(hours[4]), .QN(n78) );
  FD2 hours_reg_6_ ( .D(n176), .CP(clk), .CD(n1032), .Q(hours[6]), .QN(n608)
         );
  FD2 hours_reg_5_ ( .D(n92), .CP(clk), .CD(n1032), .Q(hours[5]), .QN(n76) );
  FD2 mins_reg_7_ ( .D(n104), .CP(clk), .CD(n1032), .Q(mins[7]), .QN(n818) );
  FD2 mins_reg_5_ ( .D(n1125), .CP(clk), .CD(n1032), .Q(mins[5]), .QN(n722) );
  FD2 mins_reg_3_ ( .D(n102), .CP(clk), .CD(n1032), .Q(mins[3]), .QN(n89) );
  FD2 hours_reg_0_ ( .D(n98), .CP(clk), .CD(n1032), .Q(hours[0]), .QN(n82) );
  FD2 mins_reg_1_ ( .D(n105), .CP(clk), .CD(n1033), .Q(mins[1]), .QN(n87) );
  FD2 mins_reg_2_ ( .D(n103), .CP(clk), .CD(n1033), .Q(mins[2]), .QN(n88) );
  FD2 secs_reg_5_ ( .D(n108), .CP(clk), .CD(n1033), .Q(secs[5]), .QN(n983) );
  FD2 mins_reg_0_ ( .D(n879), .CP(clk), .CD(n1033), .Q(mins[0]), .QN(n771) );
  FJK2 secs_reg_3_ ( .J(n876), .K(n1023), .CP(clk), .CD(n1033), .Q(secs[3]) );
  FD2 secs_reg_2_ ( .D(n633), .CP(clk), .CD(n1032), .Q(n1129), .QN(n1028) );
  FD2 secs_reg_1_ ( .D(n632), .CP(clk), .CD(n1033), .Q(n1130), .QN(n1030) );
  IVP U3 ( .A(n1095), .Z(n1078) );
  ND3 U4 ( .A(n81), .B(n80), .C(n1005), .Z(n1117) );
  IVA U5 ( .A(n1083), .Z(n1085) );
  ND3 U6 ( .A(n1078), .B(n1021), .C(mins[5]), .Z(n1089) );
  IVDA U7 ( .A(n1057), .Y(n1015), .Z(n1014) );
  NR2 U8 ( .A(n85), .B(n884), .Z(n1020) );
  ND2 U9 ( .A(n1013), .B(n987), .Z(n1042) );
  IVP U10 ( .A(n1068), .Z(n998) );
  ND3 U11 ( .A(n998), .B(mins[3]), .C(mins[2]), .Z(n1095) );
  IVDA U12 ( .A(n993), .Y(n1002), .Z(n1001) );
  ND3 U13 ( .A(strobe_1sec), .B(n1042), .C(n1051), .Z(n1038) );
  ND2 U14 ( .A(n1123), .B(n1040), .Z(n1041) );
  MUX21L U15 ( .A(n1049), .B(n1048), .S(secs[5]), .Z(n108) );
  MUX21L U16 ( .A(n1119), .B(n1118), .S(n81), .Z(n97) );
  ND2 U17 ( .A(n1085), .B(n1084), .Z(n999) );
  MUX21L U18 ( .A(n1055), .B(n1054), .S(secs[6]), .Z(n107) );
  IVP U19 ( .A(n1038), .Z(n1123) );
  AN3 U20 ( .A(hours[4]), .B(hours[6]), .C(hours[5]), .Z(n982) );
  ND2 U21 ( .A(mins[0]), .B(mins[1]), .Z(n1068) );
  IVDAP U22 ( .A(n1115), .Y(n984), .Z(n985) );
  AN2P U23 ( .A(n1074), .B(n1100), .Z(n986) );
  AN2P U24 ( .A(secs[3]), .B(secs[0]), .Z(n987) );
  AN2P U25 ( .A(mins[5]), .B(n1021), .Z(n988) );
  AN2P U26 ( .A(strobe_1sec), .B(n1035), .Z(n989) );
  AN2P U27 ( .A(hours[4]), .B(hours[5]), .Z(n991) );
  IVP U28 ( .A(n1115), .Z(n1025) );
  AN2P U29 ( .A(n992), .B(n1121), .Z(n1108) );
  ND2 U30 ( .A(n80), .B(n1117), .Z(n992) );
  OR2 U31 ( .A(n1122), .B(n82), .Z(n1118) );
  ND2 U32 ( .A(strobe_1sec), .B(n1024), .Z(n993) );
  ND2 U33 ( .A(strobe_1sec), .B(n1024), .Z(n1094) );
  IVP U34 ( .A(n985), .Z(n994) );
  AN2P U35 ( .A(n1105), .B(strobe_1sec), .Z(n995) );
  ND3 U36 ( .A(n984), .B(n1112), .C(n991), .Z(n1113) );
  AO2P U37 ( .A(n608), .B(n1113), .C(n982), .D(n1003), .Z(n176) );
  OR2P U38 ( .A(n1094), .B(n85), .Z(n1083) );
  ND2 U39 ( .A(n1102), .B(n1101), .Z(n1104) );
  ND2 U40 ( .A(n1052), .B(n1051), .Z(n1102) );
  OR2 U41 ( .A(secs[3]), .B(setmin), .Z(n996) );
  ND2 U42 ( .A(n1041), .B(n997), .Z(n1057) );
  AN2P U43 ( .A(strobe_1sec), .B(n996), .Z(n997) );
  ND4 U44 ( .A(n1013), .B(n1019), .C(n987), .D(n983), .Z(n1000) );
  AN2 U45 ( .A(n1078), .B(n988), .Z(n1081) );
  AO1P U46 ( .A(n1089), .B(n1105), .C(n884), .D(n1088), .Z(n1093) );
  IVAP U47 ( .A(n1043), .Z(n1019) );
  AN2P U48 ( .A(n1024), .B(n995), .Z(n1096) );
  ND4P U49 ( .A(n88), .B(n87), .C(mins[0]), .D(mins[3]), .Z(n1105) );
  AN2 U50 ( .A(n984), .B(n1109), .Z(n1003) );
  IVP U51 ( .A(n1065), .Z(n1004) );
  AN2 U52 ( .A(hours[0]), .B(hours[3]), .Z(n1005) );
  IVA U53 ( .A(n1100), .Z(n1101) );
  MUX21H U54 ( .A(n1004), .B(n1014), .S(secs[4]), .Z(n1124) );
  IVP U55 ( .A(sethour), .Z(n1103) );
  EO U56 ( .A(n1111), .B(n76), .Z(n92) );
  EO U57 ( .A(n1114), .B(n77), .Z(n95) );
  ND2 U58 ( .A(n1025), .B(n1010), .Z(n1114) );
  MUX21L U59 ( .A(n1121), .B(n1120), .S(n80), .Z(n96) );
  MUX21LP U60 ( .A(n1107), .B(n1108), .S(hours[3]), .Z(n177) );
  IVP U61 ( .A(n1008), .Z(secs[6]) );
  IVP U62 ( .A(secs[7]), .Z(n1007) );
  IV U63 ( .A(n1024), .Z(n1053) );
  IVP U64 ( .A(n1012), .Z(secs[4]) );
  AN2 U65 ( .A(n982), .B(n1112), .Z(n1010) );
  ND2 U66 ( .A(n984), .B(n1011), .Z(n1111) );
  AN2 U67 ( .A(n1112), .B(hours[4]), .Z(n1011) );
  IVAP U68 ( .A(n1126), .Z(n1062) );
  ND3P U69 ( .A(n984), .B(n1117), .C(n1116), .Z(n1122) );
  NR2P U70 ( .A(n1130), .B(n1129), .Z(n1013) );
  AN3 U71 ( .A(secs[6]), .B(n1007), .C(secs[4]), .Z(n1016) );
  IVP U72 ( .A(n1017), .Z(secs[7]) );
  AO6 U73 ( .A(n1096), .B(n1068), .C(n1001), .Z(n1071) );
  AN2 U74 ( .A(n1015), .B(n1061), .Z(n1063) );
  ND3P U75 ( .A(n1127), .B(n1062), .C(n1128), .Z(n1043) );
  AN2P U76 ( .A(mins[4]), .B(mins[6]), .Z(n1021) );
  AN3 U77 ( .A(hours[0]), .B(hours[1]), .C(n1025), .Z(n1022) );
  AN2 U78 ( .A(strobe_1sec), .B(n1041), .Z(n1023) );
  ND2P U79 ( .A(n1000), .B(n1051), .Z(n1024) );
  ND2 U80 ( .A(n1025), .B(n1112), .Z(n1026) );
  IVP U81 ( .A(secs[2]), .Z(n1027) );
  IVP U82 ( .A(n1028), .Z(secs[2]) );
  IVP U83 ( .A(n1030), .Z(secs[1]) );
  AO6 U84 ( .A(n82), .B(n1116), .C(n985), .Z(n1119) );
  AO6 U85 ( .A(n1096), .B(n1089), .C(n999), .Z(n1086) );
  AO6 U86 ( .A(n1096), .B(n1095), .C(n1001), .Z(n1098) );
  AO6 U87 ( .A(n1095), .B(n1105), .C(n1083), .Z(n1077) );
  ND4P U88 ( .A(n1013), .B(n1019), .C(n987), .D(n983), .Z(n1052) );
  AO6 U89 ( .A(n1051), .B(n1012), .C(n1014), .Z(n1048) );
  AO6 U90 ( .A(n1053), .B(n1059), .C(n1014), .Z(n1054) );
  ND3P U91 ( .A(n818), .B(n722), .C(n1020), .Z(n1100) );
  IVA U92 ( .A(n1034), .Z(n1032) );
  IVA U93 ( .A(n1034), .Z(n1033) );
  IVA U94 ( .A(rst_n), .Z(n1034) );
  IVA U95 ( .A(setmin), .Z(n1051) );
  ND2 U96 ( .A(n1123), .B(secs[0]), .Z(n1036) );
  ND2 U97 ( .A(n1123), .B(n990), .Z(n1035) );
  MUX21L U98 ( .A(n1036), .B(n989), .S(secs[1]), .Z(n632) );
  AN2P U99 ( .A(secs[0]), .B(n1027), .Z(n1037) );
  MUX21L U100 ( .A(secs[2]), .B(n1037), .S(secs[1]), .Z(n1039) );
  AO4 U101 ( .A(n1039), .B(n1038), .C(n989), .D(n1027), .Z(n633) );
  ND3 U102 ( .A(secs[1]), .B(secs[0]), .C(secs[2]), .Z(n1040) );
  IVA U103 ( .A(n1040), .Z(n1046) );
  AN3 U104 ( .A(n1046), .B(strobe_1sec), .C(n1051), .Z(n876) );
  IVA U105 ( .A(n1042), .Z(n1045) );
  ND2 U106 ( .A(n1016), .B(n983), .Z(n1044) );
  ND4 U107 ( .A(n1045), .B(strobe_1sec), .C(n1044), .D(n1051), .Z(n1058) );
  ND3 U108 ( .A(n1123), .B(secs[3]), .C(n1046), .Z(n1047) );
  ND2 U109 ( .A(n1058), .B(n1047), .Z(n1056) );
  ND2 U110 ( .A(secs[4]), .B(n1056), .Z(n1049) );
  ND2 U111 ( .A(secs[5]), .B(secs[4]), .Z(n1059) );
  IVA U112 ( .A(n1059), .Z(n1050) );
  ND2 U113 ( .A(n1050), .B(n1056), .Z(n1055) );
  IVA U114 ( .A(n1056), .Z(n1065) );
  ND2 U115 ( .A(secs[5]), .B(n1016), .Z(n1064) );
  IVA U116 ( .A(n1058), .Z(n1060) );
  AO4 U117 ( .A(n1123), .B(n1060), .C(n1008), .D(n1059), .Z(n1061) );
  AO4 U118 ( .A(n1065), .B(n1064), .C(n1063), .D(n1007), .Z(n159) );
  AN2P U119 ( .A(n1002), .B(mins[0]), .Z(n1067) );
  ND3 U120 ( .A(strobe_1sec), .B(n1105), .C(n1024), .Z(n1073) );
  ND2 U121 ( .A(n1096), .B(mins[0]), .Z(n1066) );
  MUX21L U122 ( .A(n1067), .B(n1066), .S(n87), .Z(n105) );
  ND2 U123 ( .A(n1096), .B(n998), .Z(n1069) );
  MUX21L U124 ( .A(n1071), .B(n1069), .S(n88), .Z(n103) );
  AN2P U125 ( .A(n998), .B(mins[2]), .Z(n1070) );
  MUX21L U126 ( .A(n88), .B(n1070), .S(n89), .Z(n1072) );
  AO4 U127 ( .A(n1072), .B(n1073), .C(n89), .D(n1071), .Z(n102) );
  MUX21L U128 ( .A(n1002), .B(n1073), .S(n771), .Z(n879) );
  ND2 U129 ( .A(n1078), .B(n1096), .Z(n1080) );
  IVA U130 ( .A(n1105), .Z(n1074) );
  ND2 U131 ( .A(n986), .B(n1002), .Z(n1075) );
  ND2 U132 ( .A(n1080), .B(n1075), .Z(n1097) );
  ND2 U133 ( .A(n1097), .B(mins[4]), .Z(n1076) );
  MUX21L U134 ( .A(n1077), .B(n1076), .S(n722), .Z(n1125) );
  ND2 U135 ( .A(n884), .B(n986), .Z(n1079) );
  AO4 U136 ( .A(n1081), .B(n1080), .C(n1001), .D(n1079), .Z(n1082) );
  ND2 U137 ( .A(n1082), .B(mins[4]), .Z(n1087) );
  ND2 U138 ( .A(n722), .B(mins[7]), .Z(n1084) );
  ND2 U139 ( .A(n1085), .B(n1084), .Z(n1088) );
  AO4 U140 ( .A(n722), .B(n1087), .C(n884), .D(n1086), .Z(n99) );
  ND2 U141 ( .A(n986), .B(n1021), .Z(n1090) );
  ND2 U142 ( .A(n1090), .B(n1089), .Z(n1091) );
  ND2 U143 ( .A(n1002), .B(n1091), .Z(n1092) );
  MUX21L U144 ( .A(n1093), .B(n1092), .S(n818), .Z(n104) );
  AO7P U145 ( .A(n1105), .B(n1104), .C(n1103), .Z(n1106) );
  ND2P U146 ( .A(strobe_1sec), .B(n1106), .Z(n1115) );
  AO1P U147 ( .A(n81), .B(n1117), .C(n1115), .D(n82), .Z(n1121) );
  ND3 U148 ( .A(hours[0]), .B(hours[1]), .C(n1025), .Z(n1120) );
  ND2 U149 ( .A(n1022), .B(hours[2]), .Z(n1107) );
  ND8 U150 ( .A(n79), .B(n82), .C(n77), .D(n80), .E(n608), .F(n76), .G(
        hours[1]), .H(hours[4]), .Z(n1116) );
  ND3 U151 ( .A(hours[2]), .B(hours[1]), .C(n1005), .Z(n1110) );
  ND3 U152 ( .A(n1117), .B(n1116), .C(n1110), .Z(n1109) );
  ND2 U153 ( .A(n1110), .B(n1117), .Z(n1112) );
  MUX21L U154 ( .A(n1003), .B(n1026), .S(n78), .Z(n93) );
  MUX21L U155 ( .A(n994), .B(n1122), .S(n82), .Z(n98) );
endmodule


module clockdiv_DW01_inc_0 ( A, SUM );
  input [25:0] A;
  output [25:0] SUM;
  wire   n1, n2, n3, n6, n7, n8, n11, n12, n13, n14, n17, n18, n19, n20, n21,
         n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n52, n53, n54, n55, n56, n57, n59, n60, n61, n63, n65, n67, n68, n69,
         n71, n72, n73, n74, n75, n76, n77, n78, n81, n82, n83, n85, n86, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n99, n102, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135;

  AN2P U2 ( .A(n90), .B(n91), .Z(n8) );
  AN2P U24 ( .A(n97), .B(n2), .Z(n7) );
  OR2 U112 ( .A(n135), .B(n59), .Z(n57) );
  ND2 U3 ( .A(n97), .B(n2), .Z(n50) );
  NR2 U4 ( .A(n65), .B(n102), .Z(n2) );
  ND2 U5 ( .A(n63), .B(n1), .Z(n6) );
  NR2 U6 ( .A(n67), .B(n68), .Z(n63) );
  NR2 U7 ( .A(n65), .B(n102), .Z(n1) );
  ND2 U8 ( .A(n71), .B(n72), .Z(n3) );
  NR2 U9 ( .A(n74), .B(n75), .Z(n71) );
  NR2 U10 ( .A(n73), .B(n102), .Z(n72) );
  NR2 U11 ( .A(n67), .B(n68), .Z(n97) );
  ND2 U12 ( .A(n90), .B(n91), .Z(n12) );
  IVP U13 ( .A(n44), .Z(n126) );
  ND2 U14 ( .A(n96), .B(n99), .Z(n54) );
  NR2 U15 ( .A(n74), .B(n75), .Z(n96) );
  NR2 U16 ( .A(n73), .B(n102), .Z(n99) );
  IVP U17 ( .A(n81), .Z(n128) );
  NR2 U18 ( .A(n37), .B(n28), .Z(n78) );
  IVP U19 ( .A(n88), .Z(n129) );
  IVP U20 ( .A(n65), .Z(n130) );
  ND4 U21 ( .A(A[7]), .B(A[6]), .C(A[5]), .D(A[4]), .Z(n102) );
  EO U22 ( .A(n56), .B(A[19]), .Z(SUM[19]) );
  NR2 U23 ( .A(n50), .B(n57), .Z(n56) );
  EN U25 ( .A(n48), .B(A[22]), .Z(SUM[22]) );
  ND2 U26 ( .A(n49), .B(n7), .Z(n48) );
  EO U27 ( .A(n61), .B(A[17]), .Z(SUM[17]) );
  NR2 U28 ( .A(n125), .B(n6), .Z(n61) );
  EO U29 ( .A(n60), .B(A[18]), .Z(SUM[18]) );
  NR2 U30 ( .A(n6), .B(n59), .Z(n60) );
  EO U31 ( .A(n52), .B(A[21]), .Z(SUM[21]) );
  NR2 U32 ( .A(n44), .B(n50), .Z(n52) );
  EO U33 ( .A(n69), .B(A[16]), .Z(SUM[16]) );
  NR2 U34 ( .A(n134), .B(n3), .Z(n69) );
  EN U35 ( .A(n45), .B(A[23]), .Z(SUM[23]) );
  ND2 U36 ( .A(n46), .B(n7), .Z(n45) );
  ND4 U37 ( .A(A[3]), .B(A[2]), .C(A[1]), .D(A[0]), .Z(n73) );
  ND5 U38 ( .A(A[20]), .B(A[19]), .C(A[16]), .D(A[17]), .E(A[18]), .Z(n44) );
  ND4 U39 ( .A(A[3]), .B(A[2]), .C(A[1]), .D(A[0]), .Z(n65) );
  ND4 U40 ( .A(A[11]), .B(A[10]), .C(A[9]), .D(A[8]), .Z(n81) );
  ND3 U41 ( .A(A[1]), .B(A[0]), .C(A[2]), .Z(n37) );
  NR3 U42 ( .A(n37), .B(n27), .C(n28), .Z(n26) );
  ND4 U43 ( .A(A[9]), .B(A[8]), .C(A[7]), .D(A[6]), .Z(n27) );
  NR3 U44 ( .A(n41), .B(n42), .C(n43), .Z(n34) );
  ND2 U45 ( .A(A[21]), .B(A[14]), .Z(n43) );
  ND3 U46 ( .A(A[23]), .B(A[22]), .C(A[15]), .Z(n42) );
  ND4 U47 ( .A(A[10]), .B(A[11]), .C(A[13]), .D(A[12]), .Z(n41) );
  NR2 U48 ( .A(n94), .B(n95), .Z(n90) );
  ND2 U49 ( .A(A[7]), .B(A[6]), .Z(n95) );
  ND2 U50 ( .A(A[5]), .B(A[4]), .Z(n94) );
  NR2 U51 ( .A(n92), .B(n93), .Z(n91) );
  ND2 U52 ( .A(A[1]), .B(A[0]), .Z(n92) );
  ND2 U53 ( .A(A[3]), .B(A[2]), .Z(n93) );
  ND4 U54 ( .A(A[11]), .B(A[10]), .C(A[9]), .D(A[8]), .Z(n74) );
  ND4 U55 ( .A(A[11]), .B(A[10]), .C(A[9]), .D(A[8]), .Z(n67) );
  ND4 U56 ( .A(A[15]), .B(A[14]), .C(A[13]), .D(A[12]), .Z(n68) );
  ND3 U57 ( .A(A[13]), .B(A[14]), .C(A[12]), .Z(n75) );
  ND3 U58 ( .A(A[5]), .B(A[3]), .C(A[4]), .Z(n28) );
  NR2 U59 ( .A(n44), .B(n127), .Z(n49) );
  IVP U60 ( .A(A[21]), .Z(n127) );
  NR2 U61 ( .A(n37), .B(n38), .Z(n36) );
  ND2 U62 ( .A(A[4]), .B(A[3]), .Z(n38) );
  NR2 U63 ( .A(n81), .B(n82), .Z(n77) );
  ND4 U64 ( .A(A[13]), .B(A[6]), .C(A[7]), .D(A[12]), .Z(n82) );
  NR2 U65 ( .A(n44), .B(n47), .Z(n46) );
  ND2 U66 ( .A(A[21]), .B(A[22]), .Z(n47) );
  ND5 U67 ( .A(A[17]), .B(A[18]), .C(A[16]), .D(A[15]), .E(A[19]), .Z(n55) );
  EO U68 ( .A(n53), .B(A[20]), .Z(SUM[20]) );
  NR2 U69 ( .A(n54), .B(n55), .Z(n53) );
  EN U70 ( .A(n22), .B(A[25]), .Z(SUM[25]) );
  ND4 U71 ( .A(n23), .B(n24), .C(n126), .D(n26), .Z(n22) );
  EN U72 ( .A(n86), .B(A[11]), .Z(SUM[11]) );
  ND3 U73 ( .A(A[10]), .B(n129), .C(n8), .Z(n86) );
  EN U74 ( .A(n83), .B(A[13]), .Z(SUM[13]) );
  ND3 U75 ( .A(A[12]), .B(n128), .C(n8), .Z(n83) );
  EO U76 ( .A(n89), .B(A[10]), .Z(SUM[10]) );
  NR2 U77 ( .A(n12), .B(n88), .Z(n89) );
  EO U78 ( .A(n85), .B(A[12]), .Z(SUM[12]) );
  NR2 U79 ( .A(n12), .B(n81), .Z(n85) );
  EN U80 ( .A(n33), .B(A[24]), .Z(SUM[24]) );
  ND4 U81 ( .A(n126), .B(n34), .C(n35), .D(n36), .Z(n33) );
  EN U82 ( .A(n11), .B(A[9]), .Z(SUM[9]) );
  ND2 U83 ( .A(A[8]), .B(n8), .Z(n11) );
  EN U84 ( .A(n76), .B(A[14]), .Z(SUM[14]) );
  ND2 U85 ( .A(n77), .B(n78), .Z(n76) );
  EN U86 ( .A(n3), .B(A[15]), .Z(SUM[15]) );
  ND2 U87 ( .A(A[9]), .B(A[8]), .Z(n88) );
  IVP U88 ( .A(A[18]), .Z(n135) );
  NR2 U89 ( .A(n29), .B(n30), .Z(n24) );
  ND2 U90 ( .A(A[11]), .B(A[10]), .Z(n30) );
  ND3 U91 ( .A(A[14]), .B(A[13]), .C(A[12]), .Z(n29) );
  NR2 U92 ( .A(n31), .B(n32), .Z(n23) );
  ND2 U93 ( .A(A[21]), .B(A[22]), .Z(n32) );
  ND3 U94 ( .A(A[24]), .B(A[23]), .C(A[15]), .Z(n31) );
  NR2 U95 ( .A(n39), .B(n40), .Z(n35) );
  ND2 U96 ( .A(A[9]), .B(A[8]), .Z(n40) );
  ND3 U97 ( .A(A[6]), .B(A[5]), .C(A[7]), .Z(n39) );
  NR2 U98 ( .A(n133), .B(n17), .Z(n14) );
  IVP U99 ( .A(A[6]), .Z(n133) );
  ND2 U100 ( .A(A[5]), .B(A[4]), .Z(n17) );
  ND2 U101 ( .A(A[17]), .B(A[16]), .Z(n59) );
  ND2 U102 ( .A(A[1]), .B(A[0]), .Z(n21) );
  EO U103 ( .A(A[5]), .B(n19), .Z(SUM[5]) );
  NR2 U104 ( .A(n132), .B(n73), .Z(n19) );
  EO U105 ( .A(A[6]), .B(n18), .Z(SUM[6]) );
  NR2 U106 ( .A(n17), .B(n73), .Z(n18) );
  EO U107 ( .A(A[3]), .B(n20), .Z(SUM[3]) );
  NR2 U108 ( .A(n131), .B(n21), .Z(n20) );
  EN U109 ( .A(n73), .B(A[4]), .Z(SUM[4]) );
  EN U110 ( .A(n21), .B(A[2]), .Z(SUM[2]) );
  EN U111 ( .A(n12), .B(A[8]), .Z(SUM[8]) );
  EN U113 ( .A(n13), .B(A[7]), .Z(SUM[7]) );
  ND2 U114 ( .A(n14), .B(n130), .Z(n13) );
  IVP U115 ( .A(A[4]), .Z(n132) );
  IVP U116 ( .A(A[2]), .Z(n131) );
  EO U117 ( .A(A[1]), .B(A[0]), .Z(SUM[1]) );
  IVP U118 ( .A(A[16]), .Z(n125) );
  IVP U119 ( .A(A[15]), .Z(n134) );
endmodule


module clockdiv ( clk, rst_n, strobe_1sec, strobe1 );
  input clk, rst_n;
  output strobe_1sec, strobe1;
  wire   N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, n28, n29, n30, n45, n46, n51,
         n52, n56, n57, n58, n60, n61, n62, n63, n64, n65, n268, n317, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, SYNOPSYS_UNCONNECTED_1;
  wire   [25:1] clkdiv;

  AN4P U10 ( .A(n87), .B(n88), .C(n86), .D(n82), .Z(n75) );
  OR4 U68 ( .A(n29), .B(n30), .C(n83), .D(n51), .Z(n79) );
  OR2 U69 ( .A(n58), .B(n52), .Z(n83) );
  OR4 U70 ( .A(n60), .B(n61), .C(n84), .D(n62), .Z(n78) );
  OR2 U71 ( .A(n64), .B(n63), .Z(n84) );
  clockdiv_DW01_inc_0 add_26 ( .A({clkdiv, n317}), .SUM({N30, N29, N28, N27, 
        N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, 
        N12, N11, N10, N9, N8, N7, N6, SYNOPSYS_UNCONNECTED_1}) );
  FD2 clkdiv_reg_25_ ( .D(N56), .CP(clk), .CD(n319), .Q(clkdiv[25]) );
  FD2 strobe1_reg ( .D(n46), .CP(clk), .CD(n321), .Q(strobe1) );
  FD2 clkdiv_reg_20_ ( .D(N51), .CP(clk), .CD(n319), .Q(clkdiv[20]), .QN(n58)
         );
  FD2 clkdiv_reg_24_ ( .D(N55), .CP(clk), .CD(n319), .Q(clkdiv[24]), .QN(n57)
         );
  FD2 clkdiv_reg_23_ ( .D(N54), .CP(clk), .CD(n321), .Q(clkdiv[23]), .QN(n89)
         );
  FD2 clkdiv_reg_21_ ( .D(N52), .CP(clk), .CD(n321), .Q(clkdiv[21]), .QN(n90)
         );
  FD2 clkdiv_reg_19_ ( .D(N50), .CP(clk), .CD(n319), .Q(clkdiv[19]), .QN(n63)
         );
  FD2 clkdiv_reg_17_ ( .D(N48), .CP(clk), .CD(n319), .Q(clkdiv[17]), .QN(n62)
         );
  FD2 clkdiv_reg_18_ ( .D(N49), .CP(clk), .CD(n319), .Q(clkdiv[18]), .QN(n56)
         );
  FD2 clkdiv_reg_16_ ( .D(N47), .CP(clk), .CD(n321), .Q(clkdiv[16]), .QN(n88)
         );
  FD2 clkdiv_reg_14_ ( .D(N45), .CP(clk), .CD(n320), .Q(clkdiv[14]), .QN(n51)
         );
  FD2 clkdiv_reg_22_ ( .D(N53), .CP(clk), .CD(n319), .Q(clkdiv[22]) );
  FD2 clkdiv_reg_1_ ( .D(N32), .CP(clk), .CD(n320), .Q(clkdiv[1]), .QN(n30) );
  FD2 clkdiv_reg_3_ ( .D(N34), .CP(clk), .CD(n320), .Q(clkdiv[3]), .QN(n28) );
  FD2 clkdiv_reg_5_ ( .D(N36), .CP(clk), .CD(n320), .Q(clkdiv[5]), .QN(n65) );
  FD2 clkdiv_reg_7_ ( .D(N38), .CP(clk), .CD(n320), .Q(clkdiv[7]), .QN(n87) );
  FD2 clkdiv_reg_0_ ( .D(N31), .CP(clk), .CD(n320), .Q(n317) );
  FD2 clkdiv_reg_15_ ( .D(N46), .CP(clk), .CD(n320), .Q(clkdiv[15]), .QN(n52)
         );
  FD2 clkdiv_reg_13_ ( .D(N44), .CP(clk), .CD(n319), .Q(clkdiv[13]), .QN(n61)
         );
  FD2 clkdiv_reg_2_ ( .D(N33), .CP(clk), .CD(n320), .Q(clkdiv[2]), .QN(n29) );
  FD2 clkdiv_reg_12_ ( .D(N43), .CP(clk), .CD(n319), .Q(clkdiv[12]), .QN(n60)
         );
  FD2 clkdiv_reg_11_ ( .D(N42), .CP(clk), .CD(n319), .Q(clkdiv[11]) );
  FD2 clkdiv_reg_8_ ( .D(N39), .CP(clk), .CD(n320), .Q(clkdiv[8]), .QN(n86) );
  FD2 clkdiv_reg_9_ ( .D(N40), .CP(clk), .CD(n319), .Q(clkdiv[9]) );
  FD2 clkdiv_reg_10_ ( .D(N41), .CP(clk), .CD(n319), .Q(clkdiv[10]) );
  FD2 clkdiv_reg_6_ ( .D(N37), .CP(clk), .CD(n320), .Q(clkdiv[6]), .QN(n268)
         );
  FD2 clkdiv_reg_4_ ( .D(N35), .CP(clk), .CD(n320), .Q(clkdiv[4]), .QN(n64) );
  FD2 strobe_1sec_reg ( .D(n45), .CP(clk), .CD(n320), .Q(strobe_1sec), .QN(
        n318) );
  NR2 U3 ( .A(n323), .B(n317), .Z(N31) );
  NR2 U4 ( .A(n333), .B(n323), .Z(N50) );
  IVP U5 ( .A(N24), .Z(n333) );
  NR2 U6 ( .A(n330), .B(n323), .Z(N53) );
  IVP U7 ( .A(N27), .Z(n330) );
  NR2 U8 ( .A(n327), .B(n323), .Z(N48) );
  IVP U9 ( .A(N22), .Z(n327) );
  NR2 U11 ( .A(n332), .B(n323), .Z(N49) );
  IVP U12 ( .A(N23), .Z(n332) );
  NR2 U13 ( .A(n329), .B(n323), .Z(N52) );
  IVP U14 ( .A(N26), .Z(n329) );
  NR2 U15 ( .A(n328), .B(n323), .Z(N47) );
  IVP U16 ( .A(N21), .Z(n328) );
  NR2 U17 ( .A(n324), .B(n323), .Z(N54) );
  IVP U18 ( .A(N28), .Z(n324) );
  NR4 U19 ( .A(clkdiv[10]), .B(clkdiv[11]), .C(clkdiv[9]), .D(n317), .Z(n82)
         );
  NR4 U20 ( .A(n77), .B(n78), .C(n79), .D(n80), .Z(n45) );
  ND4 U21 ( .A(clkdiv[5]), .B(clkdiv[22]), .C(n85), .D(clkdiv[25]), .Z(n77) );
  ND4 U22 ( .A(n57), .B(n56), .C(n81), .D(n75), .Z(n80) );
  NR2 U23 ( .A(n28), .B(n268), .Z(n81) );
  NR2 U24 ( .A(n331), .B(n323), .Z(N51) );
  IVP U25 ( .A(N25), .Z(n331) );
  NR2 U26 ( .A(n326), .B(n323), .Z(N56) );
  IVP U27 ( .A(N30), .Z(n326) );
  NR2 U28 ( .A(n339), .B(n323), .Z(N42) );
  IVP U29 ( .A(N16), .Z(n339) );
  NR2 U30 ( .A(n338), .B(n323), .Z(N44) );
  IVP U31 ( .A(N18), .Z(n338) );
  NR2 U32 ( .A(n335), .B(n323), .Z(N41) );
  IVP U33 ( .A(N15), .Z(n335) );
  NR2 U34 ( .A(n336), .B(n323), .Z(N43) );
  IVP U35 ( .A(N17), .Z(n336) );
  NR2 U36 ( .A(n325), .B(n323), .Z(N55) );
  IVP U37 ( .A(N29), .Z(n325) );
  NR2 U38 ( .A(n340), .B(n323), .Z(N40) );
  IVP U39 ( .A(N14), .Z(n340) );
  NR2 U40 ( .A(n341), .B(n323), .Z(N45) );
  IVP U41 ( .A(N19), .Z(n341) );
  NR2 U42 ( .A(n334), .B(n323), .Z(N46) );
  IVP U43 ( .A(N20), .Z(n334) );
  NR2 U44 ( .A(n72), .B(n73), .Z(n46) );
  ND4 U45 ( .A(n64), .B(n62), .C(n65), .D(n74), .Z(n73) );
  ND4 U46 ( .A(n268), .B(n75), .C(n28), .D(n76), .Z(n72) );
  AN3 U47 ( .A(n60), .B(n52), .C(n61), .Z(n74) );
  NR2 U48 ( .A(n344), .B(n323), .Z(N36) );
  IVP U49 ( .A(N10), .Z(n344) );
  NR2 U50 ( .A(n343), .B(n323), .Z(N37) );
  IVP U51 ( .A(N11), .Z(n343) );
  NR2 U52 ( .A(n346), .B(n323), .Z(N34) );
  IVP U53 ( .A(N8), .Z(n346) );
  NR2 U54 ( .A(n345), .B(n323), .Z(N35) );
  IVP U55 ( .A(N9), .Z(n345) );
  NR2 U56 ( .A(n347), .B(n323), .Z(N33) );
  IVP U57 ( .A(N7), .Z(n347) );
  NR2 U58 ( .A(n337), .B(n323), .Z(N39) );
  IVP U59 ( .A(N13), .Z(n337) );
  NR2 U60 ( .A(n342), .B(n323), .Z(N38) );
  IVP U61 ( .A(N12), .Z(n342) );
  NR2 U62 ( .A(n89), .B(n90), .Z(n85) );
  NR2 U63 ( .A(n348), .B(n323), .Z(N32) );
  IVP U64 ( .A(N6), .Z(n348) );
  AN3 U65 ( .A(n30), .B(n29), .C(n51), .Z(n76) );
  IVDA U66 ( .A(n318), .Y(n323) );
  IVA U67 ( .A(n322), .Z(n319) );
  IVA U72 ( .A(n322), .Z(n320) );
  IVA U73 ( .A(n322), .Z(n321) );
  IVA U74 ( .A(rst_n), .Z(n322) );
endmodule


module display_digit ( digit, n, ssg, an );
  input [3:0] digit;
  input [1:0] n;
  output [7:0] ssg;
  output [3:0] an;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n130, n131, n132, n133, n134, n135, n136,
         n137, n138;
  assign ssg[7] = 1'b1;

  AN4P U3 ( .A(n10), .B(n11), .C(n12), .D(n13), .Z(ssg[6]) );
  AN4P U6 ( .A(n133), .B(n11), .C(n13), .D(n14), .Z(ssg[4]) );
  OR4 U40 ( .A(n24), .B(n18), .C(n131), .D(n25), .Z(n22) );
  OR3 U41 ( .A(digit[2]), .B(digit[3]), .C(n134), .Z(n10) );
  AN3 U4 ( .A(n13), .B(n12), .C(n14), .Z(ssg[5]) );
  NR3 U5 ( .A(n135), .B(n134), .C(n136), .Z(n17) );
  NR2 U7 ( .A(n133), .B(n136), .Z(n18) );
  NR3 U8 ( .A(n17), .B(n18), .C(n19), .Z(n13) );
  EO1 U9 ( .A(n134), .B(n23), .C(n135), .D(n27), .Z(n14) );
  ND2 U10 ( .A(n26), .B(n132), .Z(n27) );
  ND3 U11 ( .A(n16), .B(n10), .C(n14), .Z(n20) );
  NR2 U12 ( .A(n130), .B(n15), .Z(n12) );
  IVP U13 ( .A(n16), .Z(n130) );
  ND2 U14 ( .A(n136), .B(n134), .Z(n26) );
  IVP U15 ( .A(n23), .Z(n133) );
  IVP U16 ( .A(n11), .Z(n131) );
  NR4 U17 ( .A(n18), .B(n24), .C(n17), .D(n20), .Z(ssg[0]) );
  NR2 U18 ( .A(n23), .B(n22), .Z(ssg[1]) );
  NR4 U19 ( .A(n21), .B(n19), .C(n15), .D(n22), .Z(ssg[2]) );
  NR3 U20 ( .A(n19), .B(n131), .C(n20), .Z(ssg[3]) );
  NR4 U21 ( .A(n136), .B(n132), .C(n134), .D(digit[2]), .Z(n19) );
  NR3 U22 ( .A(n132), .B(digit[1]), .C(n135), .Z(n21) );
  NR2 U23 ( .A(digit[0]), .B(digit[2]), .Z(n23) );
  NR3 U24 ( .A(digit[0]), .B(digit[3]), .C(n135), .Z(n15) );
  AO2 U25 ( .A(n136), .B(n21), .C(digit[3]), .D(n28), .Z(n16) );
  NR2 U26 ( .A(digit[1]), .B(digit[2]), .Z(n28) );
  NR3 U27 ( .A(n134), .B(digit[3]), .C(n132), .Z(n24) );
  AO4 U28 ( .A(n26), .B(digit[0]), .C(digit[1]), .D(digit[2]), .Z(n25) );
  IVP U29 ( .A(digit[1]), .Z(n134) );
  IVP U30 ( .A(digit[3]), .Z(n136) );
  ND2 U31 ( .A(digit[3]), .B(n21), .Z(n11) );
  IVP U32 ( .A(digit[0]), .Z(n132) );
  IVP U33 ( .A(digit[2]), .Z(n135) );
  ND2 U34 ( .A(n138), .B(n137), .Z(an[0]) );
  IVP U35 ( .A(n[1]), .Z(n138) );
  IVP U36 ( .A(n[0]), .Z(n137) );
  ND2 U37 ( .A(n[0]), .B(n138), .Z(an[1]) );
  ND2 U38 ( .A(n[1]), .B(n137), .Z(an[2]) );
  ND2 U39 ( .A(n[1]), .B(n[0]), .Z(an[3]) );
endmodule


module display_value ( clk, rst_n, value, strobe1, an, ssg );
  input [15:0] value;
  output [3:0] an;
  output [7:0] ssg;
  input clk, rst_n, strobe1;
  wire   n18, n33, n34, n51, n52, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n19, n20, n65, SYNOPSYS_UNCONNECTED_1;
  wire   [3:0] digit;
  assign ssg[7] = 1'b1;

  AO1P U3 ( .A(n7), .B(strobe1), .C(n8), .D(n9), .Z(n6) );
  display_digit display_digit ( .digit(digit), .n({n33, n34}), .ssg({
        SYNOPSYS_UNCONNECTED_1, ssg[6:0]}), .an(an) );
  FD2 cnt4_reg_1_ ( .D(n65), .CP(clk), .CD(rst_n), .Q(n33), .QN(n51) );
  FD2 cnt4_reg_0_ ( .D(n18), .CP(clk), .CD(rst_n), .Q(n34), .QN(n52) );
  NR2 U4 ( .A(n33), .B(n34), .Z(n13) );
  ND2 U5 ( .A(n14), .B(n15), .Z(digit[2]) );
  AO2 U6 ( .A(value[10]), .B(n8), .C(value[6]), .D(n7), .Z(n14) );
  AO2 U7 ( .A(value[14]), .B(n12), .C(value[2]), .D(n13), .Z(n15) );
  ND2 U8 ( .A(n10), .B(n11), .Z(digit[3]) );
  AO2 U9 ( .A(value[11]), .B(n8), .C(value[7]), .D(n7), .Z(n10) );
  AO2 U10 ( .A(value[15]), .B(n12), .C(value[3]), .D(n13), .Z(n11) );
  ND2 U11 ( .A(n19), .B(n20), .Z(digit[0]) );
  AO2 U12 ( .A(value[8]), .B(n8), .C(value[4]), .D(n7), .Z(n19) );
  AO2 U13 ( .A(value[12]), .B(n12), .C(value[0]), .D(n13), .Z(n20) );
  ND2 U14 ( .A(n16), .B(n17), .Z(digit[1]) );
  AO2 U15 ( .A(value[9]), .B(n8), .C(value[5]), .D(n7), .Z(n16) );
  AO2 U16 ( .A(value[13]), .B(n12), .C(value[1]), .D(n13), .Z(n17) );
  NR2 U17 ( .A(n33), .B(n52), .Z(n7) );
  IVP U18 ( .A(n6), .Z(n65) );
  NR2 U19 ( .A(n51), .B(strobe1), .Z(n9) );
  NR2 U20 ( .A(n34), .B(n51), .Z(n8) );
  EO U21 ( .A(strobe1), .B(n34), .Z(n18) );
  NR2 U22 ( .A(n51), .B(n52), .Z(n12) );
endmodule


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
  display_value display_value ( .clk(clk1), .rst_n(n54), .value({n53, n42, n51, 
        n50, n52, n47, n46, n45, n39, n43, n40, n49, n38, n48, n44, n41}), 
        .strobe1(strobe1), .an(an), .ssg({SYNOPSYS_UNCONNECTED_1, ssg[6:0]})
         );
  IVP U43 ( .A(n34), .Z(n47) );
  IVP U44 ( .A(n33), .Z(n52) );
  IVP U45 ( .A(n21), .Z(n45) );
  IVP U46 ( .A(n20), .Z(n46) );
  IVP U47 ( .A(swt[0]), .Z(n56) );
  AO2 U48 ( .A(n56), .B(mins[0]), .C(hours[0]), .D(swt[0]), .Z(n21) );
  AO2 U49 ( .A(n56), .B(mins[2]), .C(hours[2]), .D(swt[0]), .Z(n34) );
  AO2 U50 ( .A(n56), .B(mins[1]), .C(swt[0]), .D(hours[1]), .Z(n20) );
  AO2 U51 ( .A(n56), .B(mins[3]), .C(hours[3]), .D(swt[0]), .Z(n33) );
  IVP U52 ( .A(btn[0]), .Z(n54) );
  IVP U53 ( .A(n35), .Z(n41) );
  AO2 U54 ( .A(swt[0]), .B(mins[0]), .C(led[0]), .D(n56), .Z(n35) );
  IVP U55 ( .A(n32), .Z(n50) );
  AO2 U56 ( .A(n56), .B(mins[4]), .C(hours[4]), .D(swt[0]), .Z(n32) );
  IVP U57 ( .A(n25), .Z(n49) );
  IVP U58 ( .A(n27), .Z(n48) );
  AO2 U59 ( .A(swt[0]), .B(mins[2]), .C(secs[2]), .D(n56), .Z(n27) );
  IVP U60 ( .A(n30), .Z(n42) );
  AO2 U61 ( .A(n56), .B(mins[6]), .C(hours[6]), .D(swt[0]), .Z(n30) );
  IVP U62 ( .A(n23), .Z(n43) );
  IVP U63 ( .A(n28), .Z(n44) );
  AO2 U64 ( .A(swt[0]), .B(mins[1]), .C(secs[1]), .D(n56), .Z(n28) );
  IVP U65 ( .A(n31), .Z(n51) );
  AO2 U66 ( .A(n56), .B(mins[5]), .C(hours[5]), .D(swt[0]), .Z(n31) );
  IVP U67 ( .A(n24), .Z(n40) );
  AO2 U68 ( .A(swt[0]), .B(mins[5]), .C(secs[5]), .D(n56), .Z(n24) );
  IVP U69 ( .A(n26), .Z(n38) );
  IVP U70 ( .A(n29), .Z(n53) );
  AO2 U71 ( .A(n56), .B(mins[7]), .C(hours[7]), .D(swt[0]), .Z(n29) );
  IVP U72 ( .A(n22), .Z(n39) );
  ND3 U73 ( .A(n36), .B(n55), .C(n37), .Z(led[7]) );
  IVP U74 ( .A(N14), .Z(n55) );
  NR2 U75 ( .A(swt[3]), .B(N17), .Z(n36) );
  NR4 U76 ( .A(swt[7]), .B(swt[6]), .C(swt[5]), .D(swt[4]), .Z(n37) );
  AO2 U77 ( .A(swt[0]), .B(mins[3]), .C(secs[3]), .D(n56), .Z(n26) );
  AO2 U78 ( .A(swt[0]), .B(mins[6]), .C(secs[6]), .D(n56), .Z(n23) );
  AO2 U79 ( .A(swt[0]), .B(mins[4]), .C(secs[4]), .D(n56), .Z(n25) );
  AO2 U80 ( .A(swt[0]), .B(mins[7]), .C(secs[7]), .D(n56), .Z(n22) );
  AN2 U81 ( .A(n57), .B(n58), .Z(led[0]) );
endmodule

