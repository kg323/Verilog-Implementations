/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Mar 13 21:18:59 2022
/////////////////////////////////////////////////////////////


module tim ( clk, rst_n, sethour, setmin, strobe_1sec, hours, mins, secs );
  output [7:0] hours;
  output [7:0] mins;
  output [7:0] secs;
  input clk, rst_n, sethour, setmin, strobe_1sec;
  wire   n1364, n76, n77, n78, n79, n80, n81, n82, n87, n88, n92, n93, n95,
         n96, n97, n98, n99, n102, n103, n105, n107, n108, n608, n632, n633,
         n159, n722, n771, n876, n879, n176, n884, n1365, n1097, n1098, n1125,
         n148, n149, n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228,
         n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238,
         n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249,
         n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259,
         n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270,
         n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280,
         n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290,
         n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300,
         n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310,
         n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320,
         n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330,
         n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340,
         n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350,
         n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360,
         n1361, n1362, n1363;

  FD2P secs_reg_1_ ( .D(n632), .CP(clk), .CD(n1266), .Q(secs[1]) );
  FJK2P mins_reg_4_ ( .J(n1097), .K(n1098), .CP(clk), .CD(n1266), .Q(mins[4]), 
        .QN(n1230) );
  FD2 secs_reg_7_ ( .D(n159), .CP(clk), .CD(n1267), .Q(secs[7]), .QN(n1256) );
  FD2 hours_reg_2_ ( .D(n96), .CP(clk), .CD(n1267), .Q(hours[2]), .QN(n80) );
  FJK2 mins_reg_7_ ( .J(n1323), .K(n1226), .CP(clk), .CD(rst_n), .Q(mins[7]), 
        .QN(n148) );
  FJK2 hours_reg_3_ ( .J(n1245), .K(n1335), .CP(clk), .CD(n1267), .Q(hours[3]), 
        .QN(n79) );
  FD2 mins_reg_6_ ( .D(n99), .CP(clk), .CD(n1266), .Q(mins[6]), .QN(n884) );
  FD2 hours_reg_7_ ( .D(n95), .CP(clk), .CD(n1267), .Q(hours[7]), .QN(n77) );
  FD2 hours_reg_6_ ( .D(n176), .CP(clk), .CD(n1267), .Q(hours[6]), .QN(n608)
         );
  FD2 hours_reg_4_ ( .D(n93), .CP(clk), .CD(n1267), .Q(hours[4]), .QN(n78) );
  FD2 hours_reg_5_ ( .D(n92), .CP(clk), .CD(n1267), .Q(hours[5]), .QN(n76) );
  FD2 hours_reg_1_ ( .D(n97), .CP(clk), .CD(n1267), .Q(hours[1]), .QN(n81) );
  FD2 mins_reg_1_ ( .D(n105), .CP(clk), .CD(n1266), .Q(mins[1]), .QN(n87) );
  FD2 mins_reg_3_ ( .D(n102), .CP(clk), .CD(n1266), .Q(mins[3]), .QN(n149) );
  FD2 secs_reg_5_ ( .D(n108), .CP(clk), .CD(n1266), .Q(secs[5]), .QN(n1236) );
  FJK2 secs_reg_3_ ( .J(n876), .K(n1247), .CP(clk), .CD(n1266), .Q(secs[3]) );
  FJK2P secs_reg_0_ ( .J(n1222), .K(strobe_1sec), .CP(clk), .CD(n1266), .Q(
        secs[0]), .QN(n1227) );
  FD2 hours_reg_0_ ( .D(n98), .CP(clk), .CD(n1267), .Q(hours[0]), .QN(n82) );
  FD2 mins_reg_2_ ( .D(n103), .CP(clk), .CD(n1266), .Q(mins[2]), .QN(n88) );
  FD2 mins_reg_5_ ( .D(n1125), .CP(clk), .CD(n1266), .Q(mins[5]), .QN(n722) );
  FD2 secs_reg_6_ ( .D(n107), .CP(clk), .CD(n1267), .Q(n1364), .QN(n1238) );
  FD2 secs_reg_4_ ( .D(n1363), .CP(clk), .CD(n1267), .Q(n1365), .QN(n1261) );
  FD2P mins_reg_0_ ( .D(n879), .CP(clk), .CD(n1266), .Q(mins[0]), .QN(n771) );
  FD2P secs_reg_2_ ( .D(n633), .CP(clk), .CD(n1267), .Q(secs[2]), .QN(n1254)
         );
  ND4 U3 ( .A(mins[3]), .B(n88), .C(n87), .D(mins[0]), .Z(n1332) );
  ND2 U4 ( .A(n1277), .B(n1222), .Z(n1273) );
  IVP U5 ( .A(n1332), .Z(n1326) );
  IVA U6 ( .A(n1273), .Z(n1362) );
  ND4 U7 ( .A(n148), .B(n722), .C(mins[4]), .D(mins[6]), .Z(n1333) );
  ND2 U8 ( .A(mins[0]), .B(mins[1]), .Z(n1301) );
  IVP U9 ( .A(n1301), .Z(n1306) );
  ND2 U10 ( .A(n1336), .B(n1328), .Z(n1329) );
  IVP U11 ( .A(n1233), .Z(n1264) );
  IVP U12 ( .A(n1325), .Z(n1312) );
  IVP U13 ( .A(n1324), .Z(n1319) );
  IVDA U14 ( .A(n1305), .Z(n1263) );
  ND2 U15 ( .A(n1319), .B(n1259), .Z(n1305) );
  ND3 U16 ( .A(n1306), .B(mins[3]), .C(mins[2]), .Z(n1325) );
  ND2 U17 ( .A(n1297), .B(n1295), .Z(n1262) );
  AN2P U18 ( .A(n1224), .B(hours[6]), .Z(n1221) );
  AN2P U19 ( .A(strobe_1sec), .B(n1331), .Z(n1222) );
  AN2P U20 ( .A(strobe_1sec), .B(n1270), .Z(n1223) );
  AN2P U21 ( .A(hours[4]), .B(hours[5]), .Z(n1224) );
  ND4 U22 ( .A(n148), .B(n722), .C(mins[4]), .D(mins[6]), .Z(n1265) );
  AN3 U23 ( .A(n1364), .B(n1256), .C(n1365), .Z(n1225) );
  AN4P U24 ( .A(n1250), .B(mins[6]), .C(mins[5]), .D(n1317), .Z(n1226) );
  AO7 U25 ( .A(hours[2]), .B(n1340), .C(n1358), .Z(n1228) );
  IVA U26 ( .A(n1228), .Z(n1335) );
  AO6P U27 ( .A(n1264), .B(n1301), .C(n1324), .Z(n1303) );
  ND4 U28 ( .A(strobe_1sec), .B(n1339), .C(hours[1]), .D(hours[0]), .Z(n1229)
         );
  IVP U29 ( .A(n1229), .Z(n1258) );
  AN2P U30 ( .A(n1242), .B(n1331), .Z(n1337) );
  AO3P U31 ( .A(n1235), .B(setmin), .C(n1327), .D(n1326), .Z(n1328) );
  IVA U32 ( .A(n1330), .Z(n1235) );
  NR2 U33 ( .A(n1230), .B(n1324), .Z(n1250) );
  AO6 U34 ( .A(n1336), .B(n1328), .C(n1231), .Z(n1361) );
  IVP U35 ( .A(strobe_1sec), .Z(n1231) );
  OR2P U36 ( .A(n1232), .B(n1324), .Z(n1233) );
  AO4P U37 ( .A(n1341), .B(n1357), .C(n1343), .D(n1342), .Z(n1234) );
  IVP U38 ( .A(n1234), .Z(n1347) );
  ND2 U39 ( .A(n1319), .B(mins[4]), .Z(n1249) );
  OR3 U40 ( .A(n1332), .B(n1324), .C(n1327), .Z(n1310) );
  IVA U41 ( .A(n1265), .Z(n1327) );
  ND4P U42 ( .A(n1236), .B(n1285), .C(n1225), .D(n1252), .Z(n1330) );
  AO4P U43 ( .A(n1343), .B(n1342), .C(n1341), .D(n1357), .Z(n1237) );
  ND3P U44 ( .A(n1257), .B(n1338), .C(n1258), .Z(n1357) );
  ND3P U45 ( .A(n1364), .B(n1240), .C(n1365), .Z(n1243) );
  IVP U46 ( .A(n1238), .Z(secs[6]) );
  IVA U47 ( .A(secs[7]), .Z(n1240) );
  ND2P U48 ( .A(strobe_1sec), .B(n1248), .Z(n1324) );
  NR2P U49 ( .A(secs[2]), .B(secs[1]), .Z(n1252) );
  IVA U50 ( .A(n1243), .Z(n1241) );
  ND4 U51 ( .A(n1252), .B(n1236), .C(n1285), .D(n1241), .Z(n1242) );
  AO2P U52 ( .A(n1221), .B(n1350), .C(n608), .D(n1349), .Z(n176) );
  IVDA U53 ( .A(n1318), .Y(n1320) );
  AO6P U54 ( .A(n1312), .B(n1264), .C(n1311), .Z(n1316) );
  NR2 U55 ( .A(secs[2]), .B(secs[1]), .Z(n1253) );
  OR2 U56 ( .A(secs[3]), .B(setmin), .Z(n1244) );
  ND2P U57 ( .A(n1244), .B(n1247), .Z(n1291) );
  IVP U58 ( .A(n1291), .Z(n1297) );
  ND4 U59 ( .A(n1250), .B(n1326), .C(n1265), .D(mins[6]), .Z(n1321) );
  AN2P U60 ( .A(n1334), .B(hours[2]), .Z(n1245) );
  MUX21H U61 ( .A(mins[2]), .B(n1246), .S(n149), .Z(n1304) );
  ND2 U62 ( .A(n1306), .B(mins[2]), .Z(n1246) );
  AN2P U63 ( .A(strobe_1sec), .B(n1276), .Z(n1247) );
  MUX21L U64 ( .A(n1358), .B(n1251), .S(n80), .Z(n96) );
  IV U65 ( .A(n1243), .Z(n1290) );
  ND2 U66 ( .A(n1242), .B(n1331), .Z(n1248) );
  IVP U67 ( .A(n1334), .Z(n1251) );
  IVDA U68 ( .A(n1357), .Y(n1334) );
  ND4 U69 ( .A(n1253), .B(n1236), .C(n1285), .D(n1290), .Z(n1255) );
  ND3 U70 ( .A(n1331), .B(n1336), .C(n1255), .Z(n1257) );
  IVDA U71 ( .A(n1326), .Y(n1259), .Z(n1232) );
  IVP U72 ( .A(n1261), .Z(secs[4]) );
  EON1 U73 ( .A(n1298), .B(n1296), .C(n1262), .D(secs[7]), .Z(n159) );
  ND2P U74 ( .A(n1347), .B(n1346), .Z(n1350) );
  ND2P U75 ( .A(n1285), .B(n1253), .Z(n1277) );
  ND2P U76 ( .A(n1333), .B(n1336), .Z(n1339) );
  AO6 U77 ( .A(n1264), .B(n1325), .C(n1324), .Z(n1098) );
  AO6 U78 ( .A(n1325), .B(n1259), .C(n1249), .Z(n1309) );
  AO1 U79 ( .A(n722), .B(mins[7]), .C(n1313), .D(n1249), .Z(n1314) );
  AO6 U80 ( .A(n1331), .B(n1261), .C(n1291), .Z(n1282) );
  AO6 U81 ( .A(n1337), .B(n1286), .C(n1291), .Z(n1287) );
  IVA U82 ( .A(n1268), .Z(n1266) );
  IVA U83 ( .A(n1268), .Z(n1267) );
  IVA U84 ( .A(rst_n), .Z(n1268) );
  ND2 U85 ( .A(secs[3]), .B(secs[0]), .Z(n1269) );
  IVA U86 ( .A(n1269), .Z(n1285) );
  IVA U87 ( .A(setmin), .Z(n1331) );
  ND2 U88 ( .A(n1362), .B(secs[0]), .Z(n1271) );
  ND2 U89 ( .A(n1362), .B(n1227), .Z(n1270) );
  MUX21L U90 ( .A(n1271), .B(n1223), .S(secs[1]), .Z(n632) );
  AN2P U91 ( .A(secs[0]), .B(n1254), .Z(n1272) );
  MUX21L U92 ( .A(secs[2]), .B(n1272), .S(secs[1]), .Z(n1274) );
  AO4 U93 ( .A(n1274), .B(n1273), .C(n1223), .D(n1254), .Z(n633) );
  ND3 U94 ( .A(secs[1]), .B(secs[2]), .C(secs[0]), .Z(n1275) );
  IVA U95 ( .A(n1275), .Z(n1280) );
  AN3 U96 ( .A(n1280), .B(strobe_1sec), .C(n1331), .Z(n876) );
  ND2 U97 ( .A(n1362), .B(n1275), .Z(n1276) );
  IVA U98 ( .A(n1277), .Z(n1279) );
  ND2 U99 ( .A(n1290), .B(n1236), .Z(n1278) );
  ND4 U100 ( .A(n1279), .B(strobe_1sec), .C(n1278), .D(n1331), .Z(n1292) );
  ND3 U101 ( .A(n1280), .B(secs[3]), .C(n1362), .Z(n1281) );
  ND2 U102 ( .A(n1292), .B(n1281), .Z(n1289) );
  ND2 U103 ( .A(secs[4]), .B(n1289), .Z(n1283) );
  MUX21L U104 ( .A(n1283), .B(n1282), .S(secs[5]), .Z(n108) );
  ND2 U105 ( .A(secs[5]), .B(secs[4]), .Z(n1286) );
  IVA U106 ( .A(n1286), .Z(n1284) );
  ND2 U107 ( .A(n1284), .B(n1289), .Z(n1288) );
  MUX21L U108 ( .A(n1288), .B(n1287), .S(secs[6]), .Z(n107) );
  IVA U109 ( .A(n1289), .Z(n1298) );
  ND2 U110 ( .A(secs[5]), .B(n1290), .Z(n1296) );
  IVA U111 ( .A(n1292), .Z(n1294) );
  ND2 U112 ( .A(secs[4]), .B(secs[6]), .Z(n1293) );
  AO4 U113 ( .A(n1362), .B(n1294), .C(n1236), .D(n1293), .Z(n1295) );
  MUX21L U114 ( .A(n1298), .B(n1297), .S(secs[4]), .Z(n1363) );
  AN2P U115 ( .A(n1319), .B(mins[0]), .Z(n1300) );
  ND2 U116 ( .A(n1264), .B(mins[0]), .Z(n1299) );
  MUX21L U117 ( .A(n1300), .B(n1299), .S(n87), .Z(n105) );
  ND2 U118 ( .A(n1264), .B(n1306), .Z(n1302) );
  MUX21L U119 ( .A(n1303), .B(n1302), .S(n88), .Z(n103) );
  AO4 U120 ( .A(n1304), .B(n1263), .C(n149), .D(n1303), .Z(n102) );
  MUX21L U121 ( .A(n1319), .B(n1263), .S(n771), .Z(n879) );
  ND2 U122 ( .A(n1312), .B(n1319), .Z(n1307) );
  ND2 U123 ( .A(n1307), .B(n1310), .Z(n1097) );
  ND2 U124 ( .A(n1097), .B(mins[4]), .Z(n1308) );
  MUX21L U125 ( .A(n1309), .B(n1308), .S(n722), .Z(n1125) );
  IVA U126 ( .A(n1310), .Z(n1311) );
  ND3 U127 ( .A(n884), .B(mins[4]), .C(mins[5]), .Z(n1315) );
  ND4 U128 ( .A(n1312), .B(mins[4]), .C(mins[5]), .D(mins[6]), .Z(n1318) );
  ND2 U129 ( .A(n1318), .B(n1259), .Z(n1317) );
  IVA U130 ( .A(n1317), .Z(n1313) );
  AO4 U131 ( .A(n1316), .B(n1315), .C(n884), .D(n1314), .Z(n99) );
  ND2 U132 ( .A(n1320), .B(n1319), .Z(n1322) );
  ND2 U133 ( .A(n1322), .B(n1321), .Z(n1323) );
  ND4 U134 ( .A(n81), .B(n80), .C(hours[0]), .D(hours[3]), .Z(n1352) );
  IVA U135 ( .A(sethour), .Z(n1336) );
  ND2 U136 ( .A(strobe_1sec), .B(n1329), .Z(n1344) );
  AO1P U137 ( .A(n81), .B(n1352), .C(n1344), .D(n82), .Z(n1358) );
  ND2 U138 ( .A(n1332), .B(n1336), .Z(n1338) );
  AN2P U139 ( .A(n1337), .B(n1336), .Z(n1343) );
  IVA U140 ( .A(n1352), .Z(n1340) );
  ND4 U141 ( .A(n1340), .B(strobe_1sec), .C(n1339), .D(n1338), .Z(n1342) );
  ND2 U142 ( .A(hours[2]), .B(hours[3]), .Z(n1341) );
  ND8 U143 ( .A(n79), .B(n80), .C(n77), .D(n608), .E(n76), .F(n82), .G(
        hours[1]), .H(hours[4]), .Z(n1359) );
  IVA U144 ( .A(n1359), .Z(n1345) );
  ND2 U145 ( .A(n1345), .B(n1361), .Z(n1346) );
  MUX21L U146 ( .A(n1350), .B(n1347), .S(n78), .Z(n93) );
  ND2 U147 ( .A(n1237), .B(hours[4]), .Z(n1348) );
  EO U148 ( .A(n1348), .B(n76), .Z(n92) );
  ND2 U149 ( .A(n1224), .B(n1237), .Z(n1349) );
  ND2 U150 ( .A(n1221), .B(n1237), .Z(n1351) );
  EO U151 ( .A(n1351), .B(n77), .Z(n95) );
  ND4 U152 ( .A(n81), .B(hours[0]), .C(n1352), .D(n1361), .Z(n1356) );
  ND2 U153 ( .A(n82), .B(n1359), .Z(n1353) );
  ND2 U154 ( .A(n1361), .B(n1353), .Z(n1354) );
  ND2 U155 ( .A(n1354), .B(hours[1]), .Z(n1355) );
  ND2 U156 ( .A(n1356), .B(n1355), .Z(n97) );
  ND2 U157 ( .A(n1361), .B(n1359), .Z(n1360) );
  MUX21L U158 ( .A(n1361), .B(n1360), .S(n82), .Z(n98) );
endmodule


module clockdiv_DW01_inc_0 ( A, SUM );
  input [25:0] A;
  output [25:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58;

  ND2 U2 ( .A(n49), .B(n2), .Z(n48) );
  ND2 U3 ( .A(n35), .B(n36), .Z(n20) );
  NR2 U4 ( .A(n39), .B(n40), .Z(n35) );
  NR2 U5 ( .A(n37), .B(n38), .Z(n36) );
  ND4 U6 ( .A(A[15]), .B(A[14]), .C(A[13]), .D(A[12]), .Z(n40) );
  ND2 U7 ( .A(n53), .B(n54), .Z(n3) );
  NR2 U8 ( .A(n57), .B(n58), .Z(n53) );
  NR2 U9 ( .A(n55), .B(n56), .Z(n54) );
  ND2 U10 ( .A(A[7]), .B(A[6]), .Z(n58) );
  ND4 U11 ( .A(A[7]), .B(A[6]), .C(A[5]), .D(A[4]), .Z(n38) );
  ND4 U12 ( .A(A[3]), .B(A[2]), .C(A[1]), .D(A[0]), .Z(n37) );
  ND4 U13 ( .A(A[11]), .B(A[10]), .C(A[9]), .D(A[8]), .Z(n39) );
  EN U14 ( .A(n46), .B(A[13]), .Z(SUM[13]) );
  ND2 U15 ( .A(A[3]), .B(A[2]), .Z(n56) );
  ND2 U16 ( .A(A[1]), .B(A[0]), .Z(n55) );
  ND2 U17 ( .A(A[5]), .B(A[4]), .Z(n57) );
  EN U18 ( .A(n22), .B(A[23]), .Z(SUM[23]) );
  ND4 U19 ( .A(A[22]), .B(A[21]), .C(n23), .D(n15), .Z(n22) );
  IVP U20 ( .A(n17), .Z(n23) );
  EN U21 ( .A(n24), .B(A[22]), .Z(SUM[22]) );
  ND3 U22 ( .A(A[21]), .B(n23), .C(n15), .Z(n24) );
  EN U23 ( .A(n14), .B(A[25]), .Z(SUM[25]) );
  ND2 U24 ( .A(n15), .B(n16), .Z(n14) );
  NR2 U25 ( .A(n17), .B(n18), .Z(n16) );
  EN U26 ( .A(n41), .B(A[15]), .Z(SUM[15]) );
  EO U27 ( .A(n19), .B(A[24]), .Z(SUM[24]) );
  NR3 U28 ( .A(n20), .B(n17), .C(n21), .Z(n19) );
  ND3 U29 ( .A(A[22]), .B(A[21]), .C(A[23]), .Z(n21) );
  ND5 U30 ( .A(A[20]), .B(A[19]), .C(A[16]), .D(A[17]), .E(A[18]), .Z(n17) );
  ND4 U31 ( .A(A[3]), .B(A[2]), .C(A[1]), .D(A[0]), .Z(n8) );
  ND4 U32 ( .A(A[11]), .B(A[10]), .C(A[9]), .D(A[8]), .Z(n45) );
  EO U33 ( .A(A[18]), .B(n32), .Z(SUM[18]) );
  NR2 U34 ( .A(n20), .B(n31), .Z(n32) );
  EO U35 ( .A(A[17]), .B(n33), .Z(SUM[17]) );
  NR2 U36 ( .A(n34), .B(n20), .Z(n33) );
  IVP U37 ( .A(A[16]), .Z(n34) );
  EO U38 ( .A(A[19]), .B(n28), .Z(SUM[19]) );
  NR2 U39 ( .A(n20), .B(n29), .Z(n28) );
  EO U40 ( .A(A[21]), .B(n25), .Z(SUM[21]) );
  NR2 U41 ( .A(n17), .B(n20), .Z(n25) );
  EO U42 ( .A(A[20]), .B(n26), .Z(SUM[20]) );
  NR2 U43 ( .A(n20), .B(n27), .Z(n26) );
  ND4 U44 ( .A(A[19]), .B(A[16]), .C(A[17]), .D(A[18]), .Z(n27) );
  ND2 U45 ( .A(A[17]), .B(A[16]), .Z(n31) );
  ND3 U46 ( .A(A[5]), .B(A[4]), .C(n7), .Z(n6) );
  IVP U47 ( .A(n8), .Z(n7) );
  EN U48 ( .A(n1), .B(A[9]), .Z(SUM[9]) );
  EN U49 ( .A(n50), .B(A[11]), .Z(SUM[11]) );
  EN U50 ( .A(n48), .B(A[12]), .Z(SUM[12]) );
  EN U51 ( .A(n4), .B(A[7]), .Z(SUM[7]) );
  EN U52 ( .A(n42), .B(A[14]), .Z(SUM[14]) );
  NR2 U53 ( .A(n44), .B(n45), .Z(n43) );
  EN U54 ( .A(n20), .B(A[16]), .Z(SUM[16]) );
  EN U55 ( .A(n52), .B(A[10]), .Z(SUM[10]) );
  ND3 U56 ( .A(A[8]), .B(A[9]), .C(n2), .Z(n52) );
  ND4 U57 ( .A(A[23]), .B(A[24]), .C(A[21]), .D(A[22]), .Z(n18) );
  EN U58 ( .A(n3), .B(A[8]), .Z(SUM[8]) );
  EN U59 ( .A(n6), .B(A[6]), .Z(SUM[6]) );
  EO U60 ( .A(A[5]), .B(n9), .Z(SUM[5]) );
  NR2 U61 ( .A(n10), .B(n8), .Z(n9) );
  IVP U62 ( .A(A[4]), .Z(n10) );
  IVP U63 ( .A(A[18]), .Z(n30) );
  ND2 U64 ( .A(A[1]), .B(A[0]), .Z(n13) );
  ND2 U65 ( .A(A[12]), .B(A[13]), .Z(n44) );
  EN U66 ( .A(n8), .B(A[4]), .Z(SUM[4]) );
  EN U67 ( .A(n13), .B(A[2]), .Z(SUM[2]) );
  EO U68 ( .A(A[3]), .B(n11), .Z(SUM[3]) );
  NR2 U69 ( .A(n12), .B(n13), .Z(n11) );
  IVP U70 ( .A(A[2]), .Z(n12) );
  EO U71 ( .A(A[1]), .B(A[0]), .Z(SUM[1]) );
  ND2 U72 ( .A(A[8]), .B(n2), .Z(n1) );
  ND2 U73 ( .A(n5), .B(A[6]), .Z(n4) );
  IVA U74 ( .A(n6), .Z(n5) );
  IVA U75 ( .A(n20), .Z(n15) );
  OR2 U76 ( .A(n30), .B(n31), .Z(n29) );
  ND8 U77 ( .A(A[14]), .B(A[13]), .C(A[12]), .D(A[11]), .E(A[9]), .F(A[8]), 
        .G(A[10]), .H(n2), .Z(n41) );
  ND2 U78 ( .A(n2), .B(n43), .Z(n42) );
  ND2 U79 ( .A(n47), .B(A[12]), .Z(n46) );
  IVA U80 ( .A(n48), .Z(n47) );
  IVA U81 ( .A(n45), .Z(n49) );
  ND2 U82 ( .A(n2), .B(n51), .Z(n50) );
  AN3 U83 ( .A(A[10]), .B(A[9]), .C(A[8]), .Z(n51) );
  IVA U84 ( .A(n3), .Z(n2) );
endmodule


module clockdiv ( clk, rst_n, strobe_1sec, strobe1 );
  input clk, rst_n;
  output strobe_1sec, strobe1;
  wire   N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, n29, n45, n46, n51, n52, n56,
         n57, n60, n61, n62, n64, n65, n268, n317, n392, n89, n90, n91, n92,
         n93, n94, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411,
         SYNOPSYS_UNCONNECTED_1;
  wire   [25:1] clkdiv;

  clockdiv_DW01_inc_0 add_26 ( .A({clkdiv, n317}), .SUM({N30, N29, N28, N27, 
        N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, 
        N12, N11, N10, N9, N8, N7, N6, SYNOPSYS_UNCONNECTED_1}) );
  FD2 strobe1_reg ( .D(n46), .CP(clk), .CD(n399), .Q(strobe1) );
  FD2 clkdiv_reg_25_ ( .D(N56), .CP(clk), .CD(n399), .Q(clkdiv[25]), .QN(n93)
         );
  FD2 clkdiv_reg_24_ ( .D(N55), .CP(clk), .CD(n401), .Q(clkdiv[24]), .QN(n57)
         );
  FD2 clkdiv_reg_23_ ( .D(N54), .CP(clk), .CD(n401), .Q(clkdiv[23]), .QN(n392)
         );
  FD2 clkdiv_reg_22_ ( .D(N53), .CP(clk), .CD(n399), .Q(clkdiv[22]), .QN(n92)
         );
  FD2 clkdiv_reg_21_ ( .D(N52), .CP(clk), .CD(n401), .Q(clkdiv[21]), .QN(n397)
         );
  FD2 clkdiv_reg_20_ ( .D(N51), .CP(clk), .CD(n401), .Q(clkdiv[20]) );
  FD2 clkdiv_reg_19_ ( .D(N50), .CP(clk), .CD(n400), .Q(clkdiv[19]) );
  FD2 clkdiv_reg_17_ ( .D(N48), .CP(clk), .CD(n400), .Q(clkdiv[17]), .QN(n62)
         );
  FD2 clkdiv_reg_18_ ( .D(N49), .CP(clk), .CD(n400), .Q(clkdiv[18]), .QN(n56)
         );
  FD2 clkdiv_reg_16_ ( .D(N47), .CP(clk), .CD(n400), .Q(clkdiv[16]), .QN(n393)
         );
  FD2 clkdiv_reg_15_ ( .D(N46), .CP(clk), .CD(n400), .Q(clkdiv[15]), .QN(n52)
         );
  FD2 clkdiv_reg_14_ ( .D(N45), .CP(clk), .CD(n400), .Q(clkdiv[14]), .QN(n51)
         );
  FD2 clkdiv_reg_3_ ( .D(N34), .CP(clk), .CD(n400), .Q(clkdiv[3]) );
  FD2 clkdiv_reg_5_ ( .D(N36), .CP(clk), .CD(n400), .Q(clkdiv[5]), .QN(n65) );
  FD2 clkdiv_reg_13_ ( .D(N44), .CP(clk), .CD(n400), .Q(clkdiv[13]), .QN(n61)
         );
  FD2 clkdiv_reg_6_ ( .D(N37), .CP(clk), .CD(n399), .Q(clkdiv[6]), .QN(n268)
         );
  FD2 clkdiv_reg_11_ ( .D(N42), .CP(clk), .CD(n399), .Q(clkdiv[11]), .QN(n90)
         );
  FD2 clkdiv_reg_7_ ( .D(N38), .CP(clk), .CD(n400), .Q(clkdiv[7]), .QN(n394)
         );
  FD2 clkdiv_reg_12_ ( .D(N43), .CP(clk), .CD(n399), .Q(clkdiv[12]), .QN(n60)
         );
  FD2 clkdiv_reg_1_ ( .D(N32), .CP(clk), .CD(n400), .Q(clkdiv[1]) );
  FD2 clkdiv_reg_10_ ( .D(N41), .CP(clk), .CD(n399), .Q(clkdiv[10]), .QN(n396)
         );
  FD2 clkdiv_reg_0_ ( .D(N31), .CP(clk), .CD(n399), .Q(n317), .QN(n94) );
  FD2 clkdiv_reg_9_ ( .D(N40), .CP(clk), .CD(n399), .Q(clkdiv[9]), .QN(n91) );
  FD2 clkdiv_reg_2_ ( .D(N33), .CP(clk), .CD(n400), .Q(clkdiv[2]), .QN(n29) );
  FD2 clkdiv_reg_4_ ( .D(N35), .CP(clk), .CD(n399), .Q(clkdiv[4]), .QN(n64) );
  FD2 clkdiv_reg_8_ ( .D(N39), .CP(clk), .CD(n399), .Q(clkdiv[8]), .QN(n89) );
  FD2P strobe_1sec_reg ( .D(n45), .CP(clk), .CD(n399), .Q(strobe_1sec), .QN(
        n395) );
  IVA U3 ( .A(strobe_1sec), .Z(n398) );
  IVA U4 ( .A(n402), .Z(n399) );
  IVA U5 ( .A(n402), .Z(n400) );
  IVA U6 ( .A(n402), .Z(n401) );
  IVA U7 ( .A(rst_n), .Z(n402) );
  AN2P U8 ( .A(N30), .B(n398), .Z(N56) );
  AN2P U9 ( .A(N29), .B(n398), .Z(N55) );
  AN2P U10 ( .A(N28), .B(n395), .Z(N54) );
  AN2P U11 ( .A(N27), .B(n395), .Z(N53) );
  AN2P U12 ( .A(N26), .B(n395), .Z(N52) );
  AN2P U13 ( .A(N24), .B(n395), .Z(N50) );
  AN2P U14 ( .A(N23), .B(n395), .Z(N49) );
  AN2P U15 ( .A(N22), .B(n395), .Z(N48) );
  AN2P U16 ( .A(N21), .B(n395), .Z(N47) );
  AN2P U17 ( .A(N20), .B(n395), .Z(N46) );
  AN2P U18 ( .A(N19), .B(n398), .Z(N45) );
  AN2P U19 ( .A(N18), .B(n398), .Z(N44) );
  AN2P U20 ( .A(N17), .B(n395), .Z(N43) );
  AN2P U21 ( .A(N16), .B(n398), .Z(N42) );
  AN2P U22 ( .A(N15), .B(n395), .Z(N41) );
  AN2P U23 ( .A(N14), .B(n395), .Z(N40) );
  AN2P U24 ( .A(N13), .B(n395), .Z(N39) );
  AN2P U25 ( .A(N12), .B(n395), .Z(N38) );
  AN2P U26 ( .A(N11), .B(n395), .Z(N37) );
  AN2P U27 ( .A(N10), .B(n395), .Z(N36) );
  AN2P U28 ( .A(N9), .B(n395), .Z(N35) );
  AN2P U29 ( .A(N8), .B(n395), .Z(N34) );
  AN2P U30 ( .A(N7), .B(n395), .Z(N33) );
  AN2P U31 ( .A(N6), .B(n395), .Z(N32) );
  AN2P U32 ( .A(n94), .B(n395), .Z(N31) );
  AN2P U33 ( .A(N25), .B(n395), .Z(N51) );
  IVA U34 ( .A(n51), .Z(n409) );
  ND3 U35 ( .A(clkdiv[3]), .B(clkdiv[1]), .C(n409), .Z(n406) );
  ND2 U36 ( .A(n56), .B(clkdiv[19]), .Z(n405) );
  ND2 U37 ( .A(n57), .B(clkdiv[20]), .Z(n404) );
  AN4P U38 ( .A(n90), .B(n94), .C(n91), .D(n89), .Z(n403) );
  ND4 U39 ( .A(n396), .B(n394), .C(n393), .D(n403), .Z(n407) );
  NR16P U40 ( .I0(n406), .I1(n392), .I10(n62), .I11(n65), .I12(n52), .I13(n61), 
        .I14(n29), .I15(n60), .I2(n405), .I3(n404), .I4(n397), .I5(n268), .I6(
        n64), .I7(n93), .I8(n92), .I9(n407), .Z(n45) );
  IVA U41 ( .A(n407), .Z(n408) );
  ND3 U42 ( .A(n268), .B(n64), .C(n408), .Z(n411) );
  ND3 U43 ( .A(n61), .B(n29), .C(n60), .Z(n410) );
  NR8P U44 ( .A(n411), .B(n410), .C(clkdiv[15]), .D(clkdiv[5]), .E(clkdiv[3]), 
        .F(clkdiv[1]), .G(n409), .H(clkdiv[17]), .Z(n46) );
endmodule


module display_digit ( digit, n, ssg, an );
  input [3:0] digit;
  input [1:0] n;
  output [7:0] ssg;
  output [3:0] an;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n166, n167, n168, n169, n170, n171,
         n172, n173;
  assign ssg[7] = 1'b1;

  AN2P U18 ( .A(n26), .B(n27), .Z(n13) );
  OR2 U37 ( .A(n14), .B(n15), .Z(n11) );
  OR3 U38 ( .A(n16), .B(n17), .C(n18), .Z(n12) );
  OR4 U39 ( .A(n22), .B(n18), .C(n10), .D(n23), .Z(n21) );
  OR3 U40 ( .A(n9), .B(n13), .C(n14), .Z(n19) );
  OR3 U41 ( .A(digit[3]), .B(digit[1]), .C(n166), .Z(n27) );
  IVP U3 ( .A(n28), .Z(n166) );
  NR2 U4 ( .A(n171), .B(n168), .Z(n10) );
  NR2 U5 ( .A(n28), .B(n171), .Z(n18) );
  ND2 U6 ( .A(n170), .B(n167), .Z(n28) );
  IVP U7 ( .A(n20), .Z(n168) );
  NR4 U8 ( .A(n23), .B(n17), .C(n18), .D(n19), .Z(ssg[0]) );
  NR2 U9 ( .A(n166), .B(n21), .Z(ssg[1]) );
  NR4 U10 ( .A(n20), .B(n16), .C(n15), .D(n21), .Z(ssg[2]) );
  NR3 U11 ( .A(n19), .B(n10), .C(n16), .Z(ssg[3]) );
  NR4 U12 ( .A(n13), .B(n10), .C(n166), .D(n12), .Z(ssg[4]) );
  NR3 U13 ( .A(n11), .B(n13), .C(n12), .Z(ssg[5]) );
  NR4 U14 ( .A(n9), .B(n10), .C(n11), .D(n12), .Z(ssg[6]) );
  NR4 U15 ( .A(n171), .B(n167), .C(n169), .D(digit[2]), .Z(n16) );
  NR3 U16 ( .A(digit[2]), .B(digit[3]), .C(n169), .Z(n9) );
  NR2 U17 ( .A(n24), .B(digit[1]), .Z(n22) );
  AO6 U19 ( .A(n171), .B(n167), .C(n170), .Z(n24) );
  IVP U20 ( .A(digit[3]), .Z(n171) );
  AN3 U21 ( .A(digit[0]), .B(n169), .C(digit[2]), .Z(n20) );
  AO4 U22 ( .A(digit[0]), .B(n170), .C(digit[1]), .D(n28), .Z(n26) );
  IVP U23 ( .A(digit[2]), .Z(n170) );
  AO4 U24 ( .A(digit[3]), .B(n168), .C(n171), .D(n25), .Z(n14) );
  ND2 U25 ( .A(n169), .B(n170), .Z(n25) );
  IVP U26 ( .A(digit[0]), .Z(n167) );
  IVP U27 ( .A(digit[1]), .Z(n169) );
  AN3 U28 ( .A(digit[1]), .B(n171), .C(digit[0]), .Z(n23) );
  AN3 U29 ( .A(digit[2]), .B(digit[1]), .C(digit[3]), .Z(n17) );
  AN3 U30 ( .A(n167), .B(n171), .C(digit[2]), .Z(n15) );
  ND2 U31 ( .A(n172), .B(n173), .Z(an[0]) );
  IVP U32 ( .A(n[1]), .Z(n172) );
  IVP U33 ( .A(n[0]), .Z(n173) );
  ND2 U34 ( .A(n[0]), .B(n172), .Z(an[1]) );
  ND2 U35 ( .A(n[1]), .B(n173), .Z(an[2]) );
  ND2 U36 ( .A(n[1]), .B(n[0]), .Z(an[3]) );
endmodule


module display_value ( clk, rst_n, value, strobe1, an, ssg );
  input [15:0] value;
  output [3:0] an;
  output [7:0] ssg;
  input clk, rst_n, strobe1;
  wire   n18, n33, n34, n51, n52, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n19, n20, n81, SYNOPSYS_UNCONNECTED_1;
  wire   [3:0] digit;
  assign ssg[7] = 1'b1;

  AO1P U3 ( .A(n7), .B(strobe1), .C(n8), .D(n9), .Z(n6) );
  display_digit display_digit ( .digit(digit), .n({n33, n34}), .ssg({
        SYNOPSYS_UNCONNECTED_1, ssg[6:0]}), .an(an) );
  FD2 cnt4_reg_1_ ( .D(n81), .CP(clk), .CD(rst_n), .Q(n33), .QN(n51) );
  FD2 cnt4_reg_0_ ( .D(n18), .CP(clk), .CD(rst_n), .Q(n34), .QN(n52) );
  NR2 U4 ( .A(n33), .B(n34), .Z(n13) );
  ND2 U5 ( .A(n14), .B(n15), .Z(digit[2]) );
  AO2 U6 ( .A(value[6]), .B(n7), .C(value[10]), .D(n8), .Z(n14) );
  AO2 U7 ( .A(value[14]), .B(n12), .C(value[2]), .D(n13), .Z(n15) );
  ND2 U8 ( .A(n16), .B(n17), .Z(digit[1]) );
  AO2 U9 ( .A(value[5]), .B(n7), .C(value[9]), .D(n8), .Z(n16) );
  AO2 U10 ( .A(value[13]), .B(n12), .C(value[1]), .D(n13), .Z(n17) );
  ND2 U11 ( .A(n10), .B(n11), .Z(digit[3]) );
  AO2 U12 ( .A(value[7]), .B(n7), .C(value[11]), .D(n8), .Z(n10) );
  AO2 U13 ( .A(value[15]), .B(n12), .C(value[3]), .D(n13), .Z(n11) );
  ND2 U14 ( .A(n19), .B(n20), .Z(digit[0]) );
  AO2 U15 ( .A(value[4]), .B(n7), .C(value[8]), .D(n8), .Z(n19) );
  AO2 U16 ( .A(value[12]), .B(n12), .C(value[0]), .D(n13), .Z(n20) );
  NR2 U17 ( .A(n33), .B(n52), .Z(n7) );
  IVP U18 ( .A(n6), .Z(n81) );
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

