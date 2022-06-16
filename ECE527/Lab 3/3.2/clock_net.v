/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Mar 13 21:04:16 2022
/////////////////////////////////////////////////////////////


module tim ( clk, rst_n, sethour, setmin, strobe_1sec, hours, mins, secs );
  output [7:0] hours;
  output [7:0] mins;
  output [7:0] secs;
  input clk, rst_n, sethour, setmin, strobe_1sec;
  wire   n880, n639, n641, n642, n644, n76, n77, n78, n79, n80, n81, n82, n85,
         n87, n88, n89, n91, n92, n93, n94, n95, n96, n97, n98, n99, n101,
         n102, n103, n104, n105, n107, n108, n109, n320, n508, n608, n632,
         n633, n159, n645, n646, n647, n648, n649, n651, n652, n653, n654,
         n655, n656, n657, n658, n660, n661, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n707, n708, n710, n711, n712, n714,
         n715, n716, n718, n719, n720, n721, n722, n724, n726, n727, n728,
         n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
         n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879;

  FD2P hours_reg_0_ ( .D(n98), .CP(clk), .CD(rst_n), .Q(n731), .QN(n82) );
  FD2P hours_reg_1_ ( .D(n97), .CP(clk), .CD(rst_n), .Q(hours[1]), .QN(n81) );
  FD2P secs_reg_1_ ( .D(n632), .CP(clk), .CD(rst_n), .Q(n644), .QN(n728) );
  FD2 mins_reg_5_ ( .D(n320), .CP(clk), .CD(rst_n), .Q(mins[5]), .QN(n722) );
  FD2 hours_reg_4_ ( .D(n93), .CP(clk), .CD(rst_n), .Q(hours[4]), .QN(n78) );
  FD2 hours_reg_5_ ( .D(n92), .CP(clk), .CD(rst_n), .Q(hours[5]), .QN(n76) );
  FD2 mins_reg_7_ ( .D(n104), .CP(clk), .CD(rst_n), .Q(mins[7]), .QN(n818) );
  FD2P mins_reg_0_ ( .D(n879), .CP(clk), .CD(rst_n), .Q(n639), .QN(n771) );
  FD2P secs_reg_6_ ( .D(n107), .CP(clk), .CD(rst_n), .Q(secs[6]), .QN(n757) );
  FD2P mins_reg_4_ ( .D(n101), .CP(clk), .CD(rst_n), .Q(mins[4]), .QN(n85) );
  FD2P secs_reg_2_ ( .D(n633), .CP(clk), .CD(rst_n), .Q(secs[2]), .QN(n824) );
  FD2P secs_reg_4_ ( .D(n109), .CP(clk), .CD(rst_n), .Q(n641), .QN(n742) );
  FD2P mins_reg_6_ ( .D(n99), .CP(clk), .CD(rst_n), .Q(n880), .QN(n718) );
  FD2P hours_reg_2_ ( .D(n96), .CP(clk), .CD(rst_n), .Q(hours[2]), .QN(n80) );
  FD2P mins_reg_3_ ( .D(n102), .CP(clk), .CD(rst_n), .Q(mins[3]), .QN(n89) );
  FD2 hours_reg_3_ ( .D(n94), .CP(clk), .CD(rst_n), .Q(hours[3]), .QN(n79) );
  FD2P mins_reg_1_ ( .D(n105), .CP(clk), .CD(rst_n), .Q(mins[1]), .QN(n87) );
  FD2P hours_reg_6_ ( .D(n91), .CP(clk), .CD(rst_n), .Q(hours[6]), .QN(n608)
         );
  FJK2P secs_reg_3_ ( .J(n876), .K(n878), .CP(clk), .CD(rst_n), .Q(n642), .QN(
        n719) );
  FD2P secs_reg_7_ ( .D(n159), .CP(clk), .CD(rst_n), .Q(secs[7]), .QN(n658) );
  FD2P secs_reg_5_ ( .D(n108), .CP(clk), .CD(rst_n), .Q(secs[5]) );
  FD2P hours_reg_7_ ( .D(n95), .CP(clk), .CD(rst_n), .Q(hours[7]), .QN(n77) );
  FD2P mins_reg_2_ ( .D(n103), .CP(clk), .CD(rst_n), .Q(mins[2]), .QN(n88) );
  FJK2P secs_reg_0_ ( .J(n877), .K(strobe_1sec), .CP(clk), .CD(rst_n), .Q(
        secs[0]), .QN(n508) );
  EON1 U3 ( .A(n701), .B(n824), .C(n645), .D(n877), .Z(n633) );
  MUX21H U4 ( .A(secs[2]), .B(n657), .S(secs[1]), .Z(n645) );
  B5I U5 ( .A(n737), .Z(n877) );
  IVA U6 ( .A(secs[0]), .Z(n646) );
  ND2P U7 ( .A(n653), .B(n664), .Z(n756) );
  IVP U8 ( .A(n683), .Z(n814) );
  ND2 U9 ( .A(n716), .B(n746), .Z(n781) );
  IVP U10 ( .A(secs[2]), .Z(n686) );
  AO1 U11 ( .A(n718), .B(n799), .C(n798), .D(n680), .Z(n800) );
  B3I U12 ( .A(n745), .Z1(n716), .Z2(n715) );
  OR2P U13 ( .A(n85), .B(n687), .Z(n785) );
  EOP U14 ( .A(n786), .B(n785), .Z(n787) );
  MUX21LP U15 ( .A(n793), .B(n792), .S(n718), .Z(n794) );
  AN2 U16 ( .A(secs[6]), .B(n641), .Z(n652) );
  IVA U17 ( .A(n791), .Z(n682) );
  ND3 U18 ( .A(mins[2]), .B(mins[3]), .C(n655), .Z(n647) );
  ND3 U19 ( .A(mins[2]), .B(mins[3]), .C(n655), .Z(n777) );
  AN2P U20 ( .A(n781), .B(n826), .Z(n648) );
  ND2 U21 ( .A(n676), .B(n821), .Z(n649) );
  ND2 U22 ( .A(n676), .B(n821), .Z(n874) );
  IVDA U23 ( .A(n786), .Y(mins[6]) );
  B3IP U24 ( .A(strobe_1sec), .Z1(n680), .Z2(n734) );
  AN2P U25 ( .A(n705), .B(hours[6]), .Z(n651) );
  IVP U26 ( .A(n797), .Z(n798) );
  AN2 U27 ( .A(n694), .B(n747), .Z(n653) );
  ND4 U28 ( .A(n703), .B(n734), .C(n700), .D(n780), .Z(n791) );
  AN2 U29 ( .A(n871), .B(n870), .Z(n654) );
  IVDAP U30 ( .A(n774), .Y(n655), .Z(n656) );
  ND2 U31 ( .A(mins[1]), .B(n639), .Z(n774) );
  AN2P U32 ( .A(secs[0]), .B(n824), .Z(n657) );
  OR2 U33 ( .A(n737), .B(n665), .Z(n738) );
  IV U34 ( .A(n741), .Z(n878) );
  MUX21L U35 ( .A(n690), .B(n875), .S(n82), .Z(n98) );
  IV U36 ( .A(n742), .Z(secs[4]) );
  MUX21LP U37 ( .A(n750), .B(n751), .S(n757), .Z(n107) );
  ND2P U38 ( .A(n784), .B(n783), .Z(n320) );
  AN2 U39 ( .A(n694), .B(n665), .Z(n876) );
  ND2 U40 ( .A(n877), .B(n664), .Z(n660) );
  ND2 U41 ( .A(n660), .B(n661), .Z(n704) );
  AN2P U42 ( .A(n770), .B(n734), .Z(n661) );
  ND2P U43 ( .A(n826), .B(n719), .Z(n770) );
  NR2 U44 ( .A(secs[5]), .B(secs[7]), .Z(n707) );
  ND2P U45 ( .A(n817), .B(n816), .Z(n101) );
  IVDA U46 ( .A(n639), .Z(mins[0]) );
  ND2P U47 ( .A(n716), .B(n746), .Z(n663) );
  AN4P U48 ( .A(n642), .B(n728), .C(secs[0]), .D(n824), .Z(n746) );
  IVDAP U49 ( .A(n748), .Y(n665), .Z(n664) );
  IV U50 ( .A(n880), .Z(n786) );
  NR2P U51 ( .A(secs[5]), .B(secs[7]), .Z(n708) );
  MUX21LP U52 ( .A(n744), .B(n743), .S(secs[5]), .Z(n108) );
  ND4 U53 ( .A(n88), .B(mins[3]), .C(n87), .D(n639), .Z(n666) );
  IV U54 ( .A(n837), .Z(n830) );
  NR2 U55 ( .A(n683), .B(n85), .Z(n782) );
  IVP U56 ( .A(n852), .Z(n91) );
  AN2P U57 ( .A(n699), .B(n669), .Z(n667) );
  ND3 U58 ( .A(n734), .B(n797), .C(n804), .Z(n788) );
  ND2 U59 ( .A(n790), .B(n796), .Z(n793) );
  NR3 U60 ( .A(n680), .B(n798), .C(n648), .Z(n790) );
  AO3 U61 ( .A(n823), .B(n822), .C(n826), .D(n821), .Z(n668) );
  AO3 U62 ( .A(n823), .B(n822), .C(n826), .D(n821), .Z(n669) );
  AO3 U63 ( .A(n823), .B(n822), .C(n826), .D(n821), .Z(n865) );
  AN3 U64 ( .A(mins[4]), .B(n880), .C(n724), .Z(n670) );
  AN3 U65 ( .A(mins[4]), .B(n880), .C(n724), .Z(n730) );
  IVDA U66 ( .A(n710), .Z(n671) );
  AN2P U67 ( .A(n820), .B(n734), .Z(n672) );
  AO7P U68 ( .A(n679), .B(n666), .C(n821), .Z(n820) );
  B3I U69 ( .A(n815), .Z1(n674), .Z2(n673) );
  AN3P U70 ( .A(n734), .B(n802), .C(n688), .Z(n813) );
  IV U71 ( .A(n861), .Z(n675) );
  IV U72 ( .A(n857), .Z(n861) );
  ND4 U73 ( .A(n670), .B(n830), .C(n829), .D(n828), .Z(n676) );
  MUX21LP U74 ( .A(n696), .B(n697), .S(n79), .Z(n677) );
  B5I U75 ( .A(n677), .Z(n94) );
  OR4 U76 ( .A(n771), .B(mins[2]), .C(mins[1]), .D(n89), .Z(n678) );
  IVAP U77 ( .A(n678), .Z(n799) );
  AO1P U78 ( .A(n814), .B(n671), .C(n808), .D(n807), .Z(n809) );
  NR5P U79 ( .A(hours[1]), .B(n79), .C(hours[2]), .D(n82), .E(n680), .Z(n702)
         );
  ND4 U80 ( .A(n728), .B(secs[0]), .C(n824), .D(n642), .Z(n825) );
  IV U81 ( .A(n733), .Z(n679) );
  ND2P U82 ( .A(n711), .B(n842), .Z(n854) );
  AO7P U83 ( .A(setmin), .B(n681), .C(n682), .Z(n683) );
  IV U84 ( .A(n663), .Z(n681) );
  AN3 U85 ( .A(n651), .B(n684), .C(n690), .Z(n869) );
  IVDA U86 ( .A(n864), .Y(n684) );
  MUX21L U87 ( .A(n869), .B(n868), .S(n77), .Z(n95) );
  MUX21L U88 ( .A(n841), .B(n840), .S(n76), .Z(n92) );
  MUX21LP U89 ( .A(n778), .B(n674), .S(mins[0]), .Z(n879) );
  ND4 U90 ( .A(n88), .B(mins[3]), .C(n87), .D(n639), .Z(n837) );
  ND2P U91 ( .A(n651), .B(n667), .Z(n850) );
  IV U92 ( .A(mins[2]), .Z(n685) );
  ND4P U93 ( .A(n642), .B(secs[0]), .C(n686), .D(n728), .Z(n747) );
  ND2P U94 ( .A(secs[5]), .B(n641), .Z(n754) );
  ND3P U95 ( .A(n734), .B(n826), .C(n747), .Z(n737) );
  AN3P U96 ( .A(n734), .B(n857), .C(n831), .Z(n711) );
  ND4P U97 ( .A(n715), .B(n826), .C(n739), .D(n734), .Z(n762) );
  IV U98 ( .A(n747), .Z(n739) );
  MUX21LP U99 ( .A(n782), .B(n788), .S(mins[5]), .Z(n783) );
  MUX21LP U100 ( .A(n673), .B(n814), .S(n85), .Z(n816) );
  AN2 U101 ( .A(n877), .B(n757), .Z(n758) );
  AO1 U102 ( .A(n877), .B(n754), .C(n753), .D(n752), .Z(n768) );
  ND2 U103 ( .A(n811), .B(mins[5]), .Z(n687) );
  ND2 U104 ( .A(n755), .B(secs[6]), .Z(n761) );
  ND2P U105 ( .A(n663), .B(n826), .Z(n688) );
  ND2 U106 ( .A(n781), .B(n826), .Z(n804) );
  AO4P U107 ( .A(n851), .B(n850), .C(n849), .D(n848), .Z(n852) );
  AN4 U108 ( .A(n711), .B(n874), .C(n698), .D(hours[2]), .Z(n697) );
  AO1P U109 ( .A(n720), .B(n675), .C(n727), .D(n680), .Z(n853) );
  IVA U110 ( .A(setmin), .Z(n826) );
  ND2P U111 ( .A(n700), .B(n703), .Z(n802) );
  AN2 U112 ( .A(n843), .B(n734), .Z(n691) );
  AN2 U113 ( .A(strobe_1sec), .B(n826), .Z(n694) );
  ND2 U114 ( .A(n831), .B(n82), .Z(n870) );
  ND2 U115 ( .A(n853), .B(n654), .Z(n696) );
  IV U116 ( .A(mins[7]), .Z(n689) );
  AN2P U117 ( .A(n699), .B(n865), .Z(n690) );
  ND2 U118 ( .A(n825), .B(n826), .Z(n829) );
  AN2P U119 ( .A(n665), .B(secs[3]), .Z(n692) );
  AN3 U120 ( .A(n846), .B(n845), .C(n702), .Z(n693) );
  IVP U121 ( .A(sethour), .Z(n821) );
  ND4 U122 ( .A(n80), .B(hours[3]), .C(n81), .D(n731), .Z(n857) );
  AN2P U123 ( .A(mins[4]), .B(n811), .Z(n695) );
  IV U124 ( .A(n728), .Z(secs[1]) );
  AN2P U125 ( .A(n731), .B(hours[1]), .Z(n698) );
  AN2P U126 ( .A(n820), .B(n734), .Z(n699) );
  AN2P U127 ( .A(n639), .B(n88), .Z(n700) );
  AN2P U128 ( .A(n734), .B(n735), .Z(n701) );
  AN2P U129 ( .A(n87), .B(mins[3]), .Z(n703) );
  MUX21H U130 ( .A(n704), .B(n769), .S(n742), .Z(n109) );
  AN2P U131 ( .A(hours[4]), .B(hours[5]), .Z(n705) );
  IVDA U132 ( .A(n722), .Z(n721) );
  IVDA U133 ( .A(n731), .Z(hours[0]) );
  IVDA U134 ( .A(n642), .Z(secs[3]) );
  AN3 U135 ( .A(n880), .B(n818), .C(mins[4]), .Z(n710) );
  IV U136 ( .A(n644), .Z(n714) );
  IV U137 ( .A(n756), .Z(n759) );
  AN2 U138 ( .A(n642), .B(n714), .Z(n712) );
  AO1 U139 ( .A(n87), .B(n685), .C(mins[7]), .D(n680), .Z(n805) );
  ND2P U140 ( .A(n835), .B(n821), .Z(n863) );
  ND2 U141 ( .A(secs[6]), .B(n641), .Z(n822) );
  ND2 U142 ( .A(n722), .B(n818), .Z(n819) );
  OR4 U143 ( .A(n718), .B(n721), .C(n85), .D(n777), .Z(n803) );
  IVP U144 ( .A(n647), .Z(n811) );
  B3I U145 ( .A(n863), .Z1(n727), .Z2(n726) );
  IVDA U146 ( .A(n80), .Z(n720) );
  ND2P U147 ( .A(n827), .B(n826), .Z(n828) );
  NR2 U148 ( .A(n508), .B(secs[2]), .Z(n732) );
  ND4P U149 ( .A(n730), .B(n830), .C(n829), .D(n828), .Z(n835) );
  AN2P U150 ( .A(n722), .B(n818), .Z(n724) );
  ND2P U151 ( .A(n85), .B(n799), .Z(n797) );
  AO1P U152 ( .A(n842), .B(n675), .C(n834), .D(n78), .Z(n841) );
  ND2 U153 ( .A(n672), .B(n865), .Z(n834) );
  NR3P U154 ( .A(n85), .B(n786), .C(n819), .Z(n733) );
  ND3P U155 ( .A(n846), .B(n845), .C(n844), .Z(n847) );
  IV U156 ( .A(n842), .Z(n843) );
  AN2 U157 ( .A(n690), .B(n854), .Z(n856) );
  AN2 U158 ( .A(n690), .B(n870), .Z(n833) );
  AN4 U159 ( .A(mins[5]), .B(n682), .C(n688), .D(mins[4]), .Z(n792) );
  ND2 U160 ( .A(n877), .B(secs[0]), .Z(n736) );
  ND2 U161 ( .A(n877), .B(n646), .Z(n735) );
  MUX21L U162 ( .A(n736), .B(n701), .S(secs[1]), .Z(n632) );
  ND3 U163 ( .A(n644), .B(secs[2]), .C(secs[0]), .Z(n748) );
  ND2 U164 ( .A(n734), .B(n738), .Z(n741) );
  ND2 U165 ( .A(n692), .B(n877), .Z(n740) );
  ND2 U166 ( .A(n652), .B(n708), .Z(n745) );
  ND2 U167 ( .A(n740), .B(n762), .Z(n769) );
  ND2 U168 ( .A(secs[4]), .B(n769), .Z(n744) );
  IVA U169 ( .A(n770), .Z(n752) );
  AO1P U170 ( .A(n826), .B(n742), .C(n741), .D(n752), .Z(n743) );
  IVA U171 ( .A(n754), .Z(n755) );
  ND2 U172 ( .A(n755), .B(n769), .Z(n751) );
  ND2 U173 ( .A(n734), .B(n756), .Z(n749) );
  AO1P U174 ( .A(n648), .B(n754), .C(n752), .D(n749), .Z(n750) );
  ND2 U175 ( .A(secs[7]), .B(n734), .Z(n753) );
  IVA U176 ( .A(n762), .Z(n760) );
  AO1P U177 ( .A(n760), .B(n761), .C(n759), .D(n758), .Z(n767) );
  IVA U178 ( .A(n761), .Z(n765) );
  ND2 U179 ( .A(n653), .B(n692), .Z(n763) );
  ND2 U180 ( .A(n763), .B(n762), .Z(n764) );
  ND2 U181 ( .A(n765), .B(n764), .Z(n766) );
  AO2 U182 ( .A(n768), .B(n767), .C(n766), .D(n658), .Z(n159) );
  EO U183 ( .A(mins[1]), .B(n771), .Z(n772) );
  ND3 U184 ( .A(n734), .B(n802), .C(n688), .Z(n778) );
  ND2 U185 ( .A(n734), .B(n688), .Z(n815) );
  AO4 U186 ( .A(n772), .B(n778), .C(n87), .D(n674), .Z(n105) );
  EO U187 ( .A(n656), .B(mins[2]), .Z(n773) );
  AO4 U188 ( .A(n778), .B(n773), .C(n685), .D(n674), .Z(n103) );
  ND2 U189 ( .A(n655), .B(mins[2]), .Z(n775) );
  EO U190 ( .A(mins[3]), .B(n775), .Z(n776) );
  AO4 U191 ( .A(n776), .B(n778), .C(n89), .D(n674), .Z(n102) );
  EO U192 ( .A(mins[5]), .B(n695), .Z(n779) );
  ND2 U193 ( .A(n779), .B(n813), .Z(n784) );
  ND3 U194 ( .A(n880), .B(n689), .C(mins[4]), .Z(n789) );
  ND2 U195 ( .A(n710), .B(n721), .Z(n780) );
  ND2 U196 ( .A(n787), .B(n813), .Z(n795) );
  ND3 U197 ( .A(n799), .B(n789), .C(n721), .Z(n796) );
  ND2 U198 ( .A(n795), .B(n794), .Z(n99) );
  ND2 U199 ( .A(n796), .B(n688), .Z(n801) );
  EO1 U200 ( .A(mins[7]), .B(n801), .C(n800), .D(n689), .Z(n810) );
  AN3 U201 ( .A(n803), .B(n802), .C(mins[7]), .Z(n808) );
  IVA U202 ( .A(n803), .Z(n806) );
  AN3 U203 ( .A(n806), .B(n805), .C(n804), .Z(n807) );
  ND2 U204 ( .A(n810), .B(n809), .Z(n104) );
  EO U205 ( .A(mins[4]), .B(n811), .Z(n812) );
  ND2 U206 ( .A(n813), .B(n812), .Z(n817) );
  ND3P U207 ( .A(n712), .B(n732), .C(n707), .Z(n823) );
  ND8 U208 ( .A(n82), .B(hours[4]), .C(n77), .D(n76), .E(n608), .F(n80), .G(
        n79), .H(hours[1]), .Z(n831) );
  ND2 U209 ( .A(n652), .B(n708), .Z(n827) );
  ND3 U210 ( .A(n649), .B(hours[0]), .C(n711), .Z(n832) );
  MUX21L U211 ( .A(n833), .B(n832), .S(n81), .Z(n97) );
  ND3 U212 ( .A(hours[3]), .B(hours[2]), .C(n698), .Z(n842) );
  ND4 U213 ( .A(n843), .B(n734), .C(hours[4]), .D(n726), .Z(n839) );
  ND3 U214 ( .A(mins[4]), .B(n880), .C(n724), .Z(n836) );
  ND2 U215 ( .A(n836), .B(n821), .Z(n846) );
  ND2 U216 ( .A(n837), .B(n821), .Z(n845) );
  ND3 U217 ( .A(n865), .B(hours[4]), .C(n693), .Z(n838) );
  AN2P U218 ( .A(n839), .B(n838), .Z(n840) );
  IVA U219 ( .A(n854), .Z(n851) );
  AN3 U220 ( .A(n691), .B(n705), .C(n874), .Z(n849) );
  AN3 U221 ( .A(n702), .B(n705), .C(n668), .Z(n844) );
  ND2 U222 ( .A(n608), .B(n847), .Z(n848) );
  ND2 U223 ( .A(n81), .B(n857), .Z(n871) );
  AO2 U224 ( .A(n693), .B(n669), .C(n691), .D(n726), .Z(n855) );
  MUX21L U225 ( .A(n856), .B(n855), .S(n78), .Z(n93) );
  ND4 U226 ( .A(hours[2]), .B(hours[6]), .C(hours[3]), .D(n705), .Z(n862) );
  ND2 U227 ( .A(n731), .B(hours[1]), .Z(n859) );
  ND3 U228 ( .A(hours[3]), .B(hours[7]), .C(hours[2]), .Z(n858) );
  AO4 U229 ( .A(n698), .B(hours[7]), .C(n859), .D(n858), .Z(n860) );
  AO1P U230 ( .A(n77), .B(n862), .C(n861), .D(n860), .Z(n864) );
  ND4 U231 ( .A(n702), .B(n705), .C(hours[6]), .D(n726), .Z(n867) );
  ND3 U232 ( .A(n672), .B(n669), .C(n864), .Z(n866) );
  AN2P U233 ( .A(n867), .B(n866), .Z(n868) );
  AN3 U234 ( .A(n871), .B(n870), .C(n667), .Z(n873) );
  ND3 U235 ( .A(n711), .B(n649), .C(n698), .Z(n872) );
  MUX21L U236 ( .A(n873), .B(n872), .S(n720), .Z(n96) );
  ND2 U237 ( .A(n711), .B(n649), .Z(n875) );
endmodule


module clockdiv_DW01_inc_0 ( A, SUM );
  input [25:0] A;
  output [25:0] SUM;
  wire   n1, n2, n3, n6, n7, n8, n11, n12, n13, n14, n17, n18, n19, n20, n21,
         n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n52, n53, n54, n55, n56, n57, n59, n60, n61, n63, n65, n67, n68, n69,
         n71, n72, n73, n74, n75, n76, n77, n78, n81, n82, n83, n85, n86, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113;

  AN2P U2 ( .A(n90), .B(n91), .Z(n8) );
  AN2P U24 ( .A(n97), .B(n2), .Z(n7) );
  NR2P U36 ( .A(n92), .B(n93), .Z(n91) );
  NR2P U39 ( .A(n94), .B(n95), .Z(n90) );
  NR2P U100 ( .A(n107), .B(n21), .Z(n20) );
  ND5P U109 ( .A(A[20]), .B(A[19]), .C(A[16]), .D(A[17]), .E(A[18]), .Z(n44)
         );
  NR2P U110 ( .A(n54), .B(n55), .Z(n53) );
  OR2 U112 ( .A(n113), .B(n59), .Z(n57) );
  ND4P U115 ( .A(A[3]), .B(A[2]), .C(A[1]), .D(A[0]), .Z(n65) );
  EOP U3 ( .A(n61), .B(A[17]), .Z(SUM[17]) );
  NR2 U4 ( .A(n74), .B(n75), .Z(n96) );
  NR2 U5 ( .A(n74), .B(n75), .Z(n71) );
  NR2P U6 ( .A(n67), .B(n68), .Z(n97) );
  NR2 U7 ( .A(n67), .B(n68), .Z(n63) );
  ENP U8 ( .A(n11), .B(A[9]), .Z(SUM[9]) );
  EOP U9 ( .A(n89), .B(n98), .Z(SUM[10]) );
  ENP U10 ( .A(n33), .B(A[24]), .Z(SUM[24]) );
  ENP U11 ( .A(n12), .B(A[8]), .Z(SUM[8]) );
  EOP U12 ( .A(n85), .B(A[12]), .Z(SUM[12]) );
  ENP U13 ( .A(n83), .B(A[13]), .Z(SUM[13]) );
  ENP U14 ( .A(n86), .B(A[11]), .Z(SUM[11]) );
  IVDA U15 ( .A(A[10]), .Z(n98) );
  NR3P U16 ( .A(n37), .B(n27), .C(n28), .Z(n26) );
  ENP U17 ( .A(n22), .B(A[25]), .Z(SUM[25]) );
  NR3P U18 ( .A(n41), .B(n42), .C(n43), .Z(n34) );
  ENP U19 ( .A(n48), .B(A[22]), .Z(SUM[22]) );
  ENP U20 ( .A(n45), .B(A[23]), .Z(SUM[23]) );
  NR2P U21 ( .A(n65), .B(n102), .Z(n2) );
  NR2 U22 ( .A(n73), .B(n102), .Z(n99) );
  NR2 U23 ( .A(n73), .B(n102), .Z(n72) );
  EOP U25 ( .A(n60), .B(A[18]), .Z(SUM[18]) );
  EOP U26 ( .A(n56), .B(A[19]), .Z(SUM[19]) );
  EOP U27 ( .A(n52), .B(A[21]), .Z(SUM[21]) );
  NR2P U28 ( .A(n109), .B(n3), .Z(n69) );
  IVDA U29 ( .A(n104), .Y(n100) );
  ENP U30 ( .A(n3), .B(A[15]), .Z(SUM[15]) );
  EOP U31 ( .A(n69), .B(A[16]), .Z(SUM[16]) );
  ND4P U32 ( .A(A[11]), .B(A[10]), .C(A[9]), .D(A[8]), .Z(n67) );
  EOP U33 ( .A(n53), .B(A[20]), .Z(SUM[20]) );
  IVA U34 ( .A(n108), .Z(n101) );
  ND4P U35 ( .A(A[7]), .B(A[6]), .C(A[5]), .D(A[4]), .Z(n102) );
  ND4P U37 ( .A(A[15]), .B(A[14]), .C(A[13]), .D(A[12]), .Z(n68) );
  IVA U38 ( .A(n44), .Z(n110) );
  IV U40 ( .A(n65), .Z(n103) );
  ND4P U41 ( .A(A[3]), .B(A[2]), .C(A[1]), .D(A[0]), .Z(n73) );
  IV U42 ( .A(n81), .Z(n105) );
  IV U43 ( .A(n88), .Z(n106) );
  ND2 U44 ( .A(n63), .B(n1), .Z(n6) );
  NR2 U45 ( .A(n65), .B(n102), .Z(n1) );
  ND2 U46 ( .A(n97), .B(n2), .Z(n50) );
  ND2 U47 ( .A(n71), .B(n72), .Z(n3) );
  ND2 U48 ( .A(n96), .B(n99), .Z(n54) );
  ND2 U49 ( .A(n90), .B(n91), .Z(n12) );
  ND4 U50 ( .A(A[11]), .B(A[10]), .C(A[9]), .D(A[8]), .Z(n74) );
  ND3 U51 ( .A(A[13]), .B(A[14]), .C(A[12]), .Z(n75) );
  ND3 U52 ( .A(A[23]), .B(A[22]), .C(A[15]), .Z(n42) );
  ND2 U53 ( .A(A[21]), .B(A[14]), .Z(n43) );
  ND4 U54 ( .A(A[10]), .B(A[11]), .C(A[13]), .D(A[12]), .Z(n41) );
  ND2 U55 ( .A(A[7]), .B(A[6]), .Z(n95) );
  ND2 U56 ( .A(A[5]), .B(A[4]), .Z(n94) );
  ND5 U57 ( .A(A[17]), .B(A[18]), .C(A[16]), .D(A[15]), .E(A[19]), .Z(n55) );
  ND2 U58 ( .A(n46), .B(n7), .Z(n45) );
  NR2 U59 ( .A(n44), .B(n47), .Z(n46) );
  ND2 U60 ( .A(n49), .B(n7), .Z(n48) );
  NR2 U61 ( .A(n44), .B(n111), .Z(n49) );
  NR2 U62 ( .A(n112), .B(n6), .Z(n61) );
  IV U63 ( .A(A[16]), .Z(n112) );
  NR2 U64 ( .A(n6), .B(n59), .Z(n60) );
  NR2 U65 ( .A(n50), .B(n57), .Z(n56) );
  NR2 U66 ( .A(n44), .B(n50), .Z(n52) );
  IVDA U67 ( .A(A[15]), .Y(n109) );
  ND3 U68 ( .A(A[12]), .B(n105), .C(n8), .Z(n83) );
  ND3 U69 ( .A(A[10]), .B(n106), .C(n8), .Z(n86) );
  ND4 U70 ( .A(n110), .B(n34), .C(n35), .D(n36), .Z(n33) );
  NR2 U71 ( .A(n39), .B(n40), .Z(n35) );
  ND4 U72 ( .A(A[11]), .B(A[10]), .C(A[9]), .D(A[8]), .Z(n81) );
  ND4 U73 ( .A(A[9]), .B(A[8]), .C(A[7]), .D(A[6]), .Z(n27) );
  ND3 U74 ( .A(A[5]), .B(A[3]), .C(A[4]), .Z(n28) );
  ND2 U75 ( .A(A[1]), .B(A[0]), .Z(n92) );
  ND2 U76 ( .A(A[3]), .B(A[2]), .Z(n93) );
  ND3 U77 ( .A(A[1]), .B(A[0]), .C(A[2]), .Z(n37) );
  NR2 U78 ( .A(n81), .B(n82), .Z(n77) );
  ND4 U79 ( .A(A[13]), .B(A[6]), .C(A[7]), .D(A[12]), .Z(n82) );
  NR2 U80 ( .A(n37), .B(n38), .Z(n36) );
  ND2 U81 ( .A(A[4]), .B(A[3]), .Z(n38) );
  NR2 U82 ( .A(n29), .B(n30), .Z(n24) );
  ND2 U83 ( .A(A[11]), .B(A[10]), .Z(n30) );
  ND3 U84 ( .A(A[14]), .B(A[13]), .C(A[12]), .Z(n29) );
  ND3 U85 ( .A(A[6]), .B(A[5]), .C(A[7]), .Z(n39) );
  ND2 U86 ( .A(A[21]), .B(A[22]), .Z(n32) );
  ND2 U87 ( .A(A[8]), .B(n8), .Z(n11) );
  NR2 U88 ( .A(n12), .B(n88), .Z(n89) );
  NR2 U89 ( .A(n12), .B(n81), .Z(n85) );
  ND4 U90 ( .A(n23), .B(n24), .C(n110), .D(n26), .Z(n22) );
  NR2 U91 ( .A(n31), .B(n32), .Z(n23) );
  EN U92 ( .A(n76), .B(A[14]), .Z(SUM[14]) );
  ND2 U93 ( .A(n77), .B(n78), .Z(n76) );
  NR2 U94 ( .A(n37), .B(n28), .Z(n78) );
  ND2 U95 ( .A(A[9]), .B(A[8]), .Z(n88) );
  ND2 U96 ( .A(A[5]), .B(A[4]), .Z(n17) );
  ND2 U97 ( .A(A[17]), .B(A[16]), .Z(n59) );
  ND2 U98 ( .A(A[1]), .B(A[0]), .Z(n21) );
  ND3 U99 ( .A(A[24]), .B(A[23]), .C(A[15]), .Z(n31) );
  ND2 U101 ( .A(A[21]), .B(A[22]), .Z(n47) );
  ND2 U102 ( .A(A[9]), .B(A[8]), .Z(n40) );
  EO U103 ( .A(n100), .B(n18), .Z(SUM[6]) );
  NR2 U104 ( .A(n17), .B(n73), .Z(n18) );
  EO U105 ( .A(A[5]), .B(n19), .Z(SUM[5]) );
  NR2 U106 ( .A(n108), .B(n73), .Z(n19) );
  IV U107 ( .A(A[4]), .Z(n108) );
  EN U108 ( .A(n13), .B(A[7]), .Z(SUM[7]) );
  ND2 U111 ( .A(n14), .B(n103), .Z(n13) );
  NR2 U113 ( .A(n104), .B(n17), .Z(n14) );
  EO U114 ( .A(A[3]), .B(n20), .Z(SUM[3]) );
  IV U116 ( .A(A[2]), .Z(n107) );
  EN U117 ( .A(n73), .B(n101), .Z(SUM[4]) );
  IV U118 ( .A(A[21]), .Z(n111) );
  IV U119 ( .A(A[6]), .Z(n104) );
  IV U120 ( .A(A[18]), .Z(n113) );
  EN U121 ( .A(n21), .B(A[2]), .Z(SUM[2]) );
  EO U122 ( .A(A[1]), .B(A[0]), .Z(SUM[1]) );
endmodule


module clockdiv ( clk, rst_n, strobe_1sec, strobe1 );
  input clk, rst_n;
  output strobe_1sec, strobe1;
  wire   N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, n28, n29, n30, n45, n46, n51,
         n52, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n94, n89, n90,
         n91, n72, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285,
         SYNOPSYS_UNCONNECTED_1;
  wire   [25:0] clkdiv;

  FD2P clkdiv_reg_3_ ( .D(N34), .CP(clk), .CD(rst_n), .Q(clkdiv[3]), .QN(n28)
         );
  FD2P clkdiv_reg_1_ ( .D(N32), .CP(clk), .CD(rst_n), .Q(clkdiv[1]), .QN(n30)
         );
  FD2P clkdiv_reg_0_ ( .D(N31), .CP(clk), .CD(rst_n), .Q(clkdiv[0]), .QN(n89)
         );
  FD2P clkdiv_reg_2_ ( .D(N33), .CP(clk), .CD(rst_n), .Q(clkdiv[2]), .QN(n29)
         );
  FD2P clkdiv_reg_9_ ( .D(N40), .CP(clk), .CD(rst_n), .Q(clkdiv[9]), .QN(n91)
         );
  FD2P clkdiv_reg_15_ ( .D(N46), .CP(clk), .CD(rst_n), .Q(clkdiv[15]), .QN(n52) );
  FD2P clkdiv_reg_12_ ( .D(N43), .CP(clk), .CD(rst_n), .Q(clkdiv[12]), .QN(n60) );
  clockdiv_DW01_inc_0 add_26 ( .A(clkdiv), .SUM({N30, N29, N28, N27, N26, N25, 
        N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, SYNOPSYS_UNCONNECTED_1}) );
  FD2P clkdiv_reg_11_ ( .D(N42), .CP(clk), .CD(rst_n), .Q(clkdiv[11]) );
  FD2 clkdiv_reg_23_ ( .D(N54), .CP(clk), .CD(rst_n), .Q(clkdiv[23]), .QN(n72)
         );
  FD2 clkdiv_reg_19_ ( .D(N50), .CP(clk), .CD(rst_n), .Q(clkdiv[19]), .QN(n63)
         );
  FD2 clkdiv_reg_20_ ( .D(N51), .CP(clk), .CD(rst_n), .Q(clkdiv[20]), .QN(n58)
         );
  FD2P clkdiv_reg_10_ ( .D(N41), .CP(clk), .CD(rst_n), .Q(clkdiv[10]) );
  FD2P clkdiv_reg_7_ ( .D(N38), .CP(clk), .CD(rst_n), .Q(clkdiv[7]), .QN(n274)
         );
  FD2P clkdiv_reg_8_ ( .D(N39), .CP(clk), .CD(rst_n), .Q(clkdiv[8]), .QN(n90)
         );
  FD2P clkdiv_reg_5_ ( .D(N36), .CP(clk), .CD(rst_n), .Q(clkdiv[5]), .QN(n65)
         );
  FD2P clkdiv_reg_6_ ( .D(N37), .CP(clk), .CD(rst_n), .Q(clkdiv[6]), .QN(n268)
         );
  FD2P strobe_1sec_reg ( .D(n45), .CP(clk), .CD(rst_n), .Q(strobe_1sec), .QN(
        n270) );
  FD2P clkdiv_reg_4_ ( .D(N35), .CP(clk), .CD(rst_n), .Q(clkdiv[4]), .QN(n64)
         );
  FD2 strobe1_reg ( .D(n46), .CP(clk), .CD(rst_n), .Q(strobe1) );
  FD2 clkdiv_reg_25_ ( .D(N56), .CP(clk), .CD(rst_n), .Q(clkdiv[25]), .QN(n94)
         );
  FD2 clkdiv_reg_24_ ( .D(N55), .CP(clk), .CD(rst_n), .Q(clkdiv[24]), .QN(n57)
         );
  FD2P clkdiv_reg_14_ ( .D(N45), .CP(clk), .CD(rst_n), .Q(clkdiv[14]), .QN(n51) );
  FD2P clkdiv_reg_13_ ( .D(N44), .CP(clk), .CD(rst_n), .Q(clkdiv[13]), .QN(n61) );
  FD2P clkdiv_reg_16_ ( .D(N47), .CP(clk), .CD(rst_n), .Q(clkdiv[16]), .QN(
        n271) );
  FD2P clkdiv_reg_21_ ( .D(N52), .CP(clk), .CD(rst_n), .Q(clkdiv[21]), .QN(n59) );
  FD2P clkdiv_reg_18_ ( .D(N49), .CP(clk), .CD(rst_n), .Q(clkdiv[18]), .QN(n56) );
  FD2P clkdiv_reg_22_ ( .D(N53), .CP(clk), .CD(rst_n), .Q(clkdiv[22]) );
  FD2 clkdiv_reg_17_ ( .D(N48), .CP(clk), .CD(rst_n), .Q(clkdiv[17]), .QN(n62)
         );
  AN2 U3 ( .A(N12), .B(n270), .Z(N38) );
  AN2 U4 ( .A(N13), .B(n270), .Z(N39) );
  IVAP U5 ( .A(n268), .Z(n269) );
  ND4 U6 ( .A(n276), .B(n275), .C(n274), .D(n273), .Z(n279) );
  AN2 U7 ( .A(N14), .B(n270), .Z(N40) );
  AN2 U8 ( .A(N17), .B(n272), .Z(N43) );
  AN2 U9 ( .A(N29), .B(n270), .Z(N55) );
  AN2 U10 ( .A(N15), .B(n270), .Z(N41) );
  AN2P U11 ( .A(n271), .B(n91), .Z(n275) );
  AN2 U12 ( .A(N16), .B(n270), .Z(N42) );
  AN2 U13 ( .A(N18), .B(n272), .Z(N44) );
  AN2 U14 ( .A(N30), .B(n272), .Z(N56) );
  AN2 U15 ( .A(N27), .B(n270), .Z(N53) );
  AN2 U16 ( .A(N28), .B(n270), .Z(N54) );
  AN2 U17 ( .A(N11), .B(n272), .Z(N37) );
  NR8 U18 ( .A(n285), .B(n284), .C(clkdiv[4]), .D(n283), .E(n282), .F(n269), 
        .G(clkdiv[5]), .H(n281), .Z(n46) );
  AN2 U19 ( .A(N22), .B(n272), .Z(N48) );
  AN2 U20 ( .A(N23), .B(n270), .Z(N49) );
  AN2 U21 ( .A(N24), .B(n270), .Z(N50) );
  AN2 U22 ( .A(N26), .B(n272), .Z(N52) );
  AN2 U23 ( .A(N21), .B(n270), .Z(N47) );
  AN2 U24 ( .A(N25), .B(n270), .Z(N51) );
  AN2 U25 ( .A(N7), .B(n272), .Z(N33) );
  NR2 U26 ( .A(clkdiv[11]), .B(clkdiv[10]), .Z(n273) );
  IV U27 ( .A(strobe_1sec), .Z(n272) );
  NR16 U28 ( .I0(n278), .I1(n28), .I10(n65), .I11(n64), .I12(n52), .I13(n61), 
        .I14(n62), .I15(n59), .I2(n277), .I3(n58), .I4(n279), .I5(n60), .I6(
        n51), .I7(n72), .I8(n63), .I9(n94), .Z(n45) );
  AN2P U29 ( .A(n89), .B(n270), .Z(N31) );
  AN2P U30 ( .A(N19), .B(n270), .Z(N45) );
  AN2P U31 ( .A(N20), .B(n272), .Z(N46) );
  AN2P U32 ( .A(N9), .B(n272), .Z(N35) );
  AN2P U33 ( .A(N6), .B(n272), .Z(N32) );
  AN2P U34 ( .A(N10), .B(n272), .Z(N36) );
  IVA U35 ( .A(n29), .Z(n283) );
  IVA U36 ( .A(n30), .Z(n282) );
  ND3 U37 ( .A(n283), .B(n282), .C(n269), .Z(n278) );
  ND3 U38 ( .A(n56), .B(n57), .C(clkdiv[22]), .Z(n277) );
  AN2P U39 ( .A(n90), .B(n89), .Z(n276) );
  AN2P U40 ( .A(N8), .B(n272), .Z(N34) );
  IVA U41 ( .A(n279), .Z(n280) );
  ND3 U42 ( .A(n60), .B(n51), .C(n280), .Z(n285) );
  ND3 U43 ( .A(n52), .B(n61), .C(n62), .Z(n284) );
  IVA U44 ( .A(n28), .Z(n281) );
endmodule


module display_digit ( digit, n, ssg, an );
  input [3:0] digit;
  input [1:0] n;
  output [7:0] ssg;
  output [3:0] an;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n114, n116, n117, n118,
         n119, n120, n121;
  assign ssg[7] = 1'b1;

  AN2P U13 ( .A(n118), .B(n25), .Z(ssg[1]) );
  AN2P U15 ( .A(n26), .B(digit[3]), .Z(n11) );
  AN2P U16 ( .A(n29), .B(n119), .Z(n27) );
  OR3 U43 ( .A(n13), .B(n14), .C(n116), .Z(n9) );
  NR2 U3 ( .A(n118), .B(n120), .Z(n13) );
  EO1 U4 ( .A(n119), .B(n19), .C(n120), .D(n17), .Z(n20) );
  AO3 U5 ( .A(n119), .B(n17), .C(n20), .D(n21), .Z(n16) );
  NR3 U6 ( .A(n13), .B(n14), .C(n12), .Z(n21) );
  ND3 U7 ( .A(n18), .B(n15), .C(n20), .Z(n22) );
  IVP U8 ( .A(n19), .Z(n118) );
  NR4 U9 ( .A(n28), .B(n14), .C(n13), .D(n22), .Z(ssg[0]) );
  NR3 U10 ( .A(n12), .B(n11), .C(n22), .Z(ssg[3]) );
  NR3 U11 ( .A(n11), .B(n19), .C(n16), .Z(ssg[4]) );
  NR2 U12 ( .A(n10), .B(n16), .Z(ssg[5]) );
  NR4 U14 ( .A(n9), .B(n10), .C(n11), .D(n12), .Z(ssg[6]) );
  IVP U17 ( .A(n15), .Z(n116) );
  NR4 U18 ( .A(n117), .B(n120), .C(n119), .D(digit[2]), .Z(n12) );
  NR2 U19 ( .A(digit[0]), .B(digit[2]), .Z(n19) );
  NR4 U20 ( .A(n27), .B(n11), .C(n13), .D(n28), .Z(n25) );
  AO7 U21 ( .A(digit[3]), .B(digit[0]), .C(digit[2]), .Z(n29) );
  ND2 U22 ( .A(digit[2]), .B(n117), .Z(n17) );
  AO2 U23 ( .A(n120), .B(n26), .C(digit[3]), .D(n31), .Z(n18) );
  NR2 U24 ( .A(digit[1]), .B(digit[2]), .Z(n31) );
  AO7 U25 ( .A(digit[3]), .B(n17), .C(n18), .Z(n10) );
  AN3 U26 ( .A(digit[2]), .B(n119), .C(digit[0]), .Z(n26) );
  AN3 U27 ( .A(digit[2]), .B(digit[1]), .C(digit[3]), .Z(n14) );
  ND2 U28 ( .A(digit[1]), .B(n30), .Z(n15) );
  AO7 U29 ( .A(digit[3]), .B(digit[2]), .C(n17), .Z(n30) );
  AN3 U30 ( .A(n120), .B(digit[1]), .C(digit[0]), .Z(n28) );
  IVP U31 ( .A(digit[1]), .Z(n119) );
  IVP U32 ( .A(digit[3]), .Z(n120) );
  IVP U33 ( .A(digit[0]), .Z(n117) );
  IVP U34 ( .A(n23), .Z(ssg[2]) );
  AO3 U35 ( .A(n17), .B(digit[3]), .C(n24), .D(n25), .Z(n23) );
  NR2 U36 ( .A(n12), .B(n26), .Z(n24) );
  ND2 U37 ( .A(n114), .B(n121), .Z(an[0]) );
  IVDA U38 ( .A(n[1]), .Y(n114) );
  IVDA U39 ( .A(n[0]), .Y(n121) );
  ND2 U40 ( .A(n[0]), .B(n114), .Z(an[1]) );
  ND2 U41 ( .A(n[1]), .B(n121), .Z(an[2]) );
  ND2 U42 ( .A(n[1]), .B(n[0]), .Z(an[3]) );
endmodule


module display_value ( clk, rst_n, value, strobe1, an, ssg );
  input [15:0] value;
  output [3:0] an;
  output [7:0] ssg;
  input clk, rst_n, strobe1;
  wire   n18, n33, n34, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, SYNOPSYS_UNCONNECTED_1;
  wire   [3:0] digit;
  assign ssg[7] = 1'b1;

  display_digit display_digit ( .digit(digit), .n({n33, n34}), .ssg({
        SYNOPSYS_UNCONNECTED_1, ssg[6:0]}), .an(an) );
  FD2 cnt4_reg_0_ ( .D(n18), .CP(clk), .CD(rst_n), .Q(n34), .QN(n52) );
  FD2 cnt4_reg_1_ ( .D(n63), .CP(clk), .CD(rst_n), .Q(n33), .QN(n51) );
  AN2P U3 ( .A(n33), .B(n34), .Z(n47) );
  AN2P U4 ( .A(n52), .B(n51), .Z(n48) );
  AN2P U5 ( .A(n34), .B(n51), .Z(n49) );
  EO U6 ( .A(strobe1), .B(n34), .Z(n18) );
  ND2 U7 ( .A(n33), .B(n52), .Z(n53) );
  MUX21L U8 ( .A(n33), .B(n49), .S(strobe1), .Z(n50) );
  ND2 U9 ( .A(n53), .B(n50), .Z(n63) );
  AO2 U10 ( .A(value[3]), .B(n48), .C(value[15]), .D(n47), .Z(n55) );
  IVA U11 ( .A(n53), .Z(n60) );
  AO2 U12 ( .A(value[11]), .B(n60), .C(value[7]), .D(n49), .Z(n54) );
  ND2 U13 ( .A(n55), .B(n54), .Z(digit[3]) );
  AO2 U14 ( .A(value[2]), .B(n48), .C(value[14]), .D(n47), .Z(n57) );
  AO2 U15 ( .A(value[10]), .B(n60), .C(value[6]), .D(n49), .Z(n56) );
  ND2 U16 ( .A(n57), .B(n56), .Z(digit[2]) );
  AO2 U17 ( .A(value[1]), .B(n48), .C(value[13]), .D(n47), .Z(n59) );
  AO2 U18 ( .A(value[9]), .B(n60), .C(value[5]), .D(n49), .Z(n58) );
  ND2 U19 ( .A(n59), .B(n58), .Z(digit[1]) );
  AO2 U20 ( .A(value[0]), .B(n48), .C(value[12]), .D(n47), .Z(n62) );
  AO2 U21 ( .A(value[8]), .B(n60), .C(value[4]), .D(n49), .Z(n61) );
  ND2 U22 ( .A(n62), .B(n61), .Z(digit[0]) );
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
  display_value display_value ( .clk(clk1), .rst_n(n54), .value({n51, n44, n45, 
        n38, n42, n49, n48, n41, n52, n43, n50, n39, n46, n47, n53, n40}), 
        .strobe1(strobe1), .an(an), .ssg({SYNOPSYS_UNCONNECTED_1, ssg[6:0]})
         );
  IVP U43 ( .A(n26), .Z(n46) );
  IVP U44 ( .A(n27), .Z(n47) );
  IVP U45 ( .A(n35), .Z(n40) );
  IVP U46 ( .A(n28), .Z(n53) );
  IVP U47 ( .A(btn[0]), .Z(n54) );
  AO2 U48 ( .A(swt[0]), .B(mins[1]), .C(secs[1]), .D(n56), .Z(n28) );
  AO2 U49 ( .A(swt[0]), .B(mins[2]), .C(secs[2]), .D(n56), .Z(n27) );
  IVP U50 ( .A(swt[0]), .Z(n56) );
  IVP U51 ( .A(n25), .Z(n39) );
  IVP U52 ( .A(n21), .Z(n41) );
  IVP U53 ( .A(n32), .Z(n38) );
  AO2 U54 ( .A(n56), .B(mins[4]), .C(hours[4]), .D(swt[0]), .Z(n32) );
  IVP U55 ( .A(n24), .Z(n50) );
  IVP U56 ( .A(n20), .Z(n48) );
  AO2 U57 ( .A(n56), .B(mins[1]), .C(swt[0]), .D(hours[1]), .Z(n20) );
  IVP U58 ( .A(n31), .Z(n45) );
  IVP U59 ( .A(n23), .Z(n43) );
  IVP U60 ( .A(n34), .Z(n49) );
  AO2 U61 ( .A(n56), .B(mins[2]), .C(hours[2]), .D(swt[0]), .Z(n34) );
  IVP U62 ( .A(n30), .Z(n44) );
  AO2 U63 ( .A(n56), .B(mins[6]), .C(hours[6]), .D(swt[0]), .Z(n30) );
  IVP U64 ( .A(n22), .Z(n52) );
  IVP U65 ( .A(n33), .Z(n42) );
  AO2 U66 ( .A(n56), .B(mins[3]), .C(hours[3]), .D(swt[0]), .Z(n33) );
  IVP U67 ( .A(n29), .Z(n51) );
  AO2 U68 ( .A(n56), .B(mins[7]), .C(hours[7]), .D(swt[0]), .Z(n29) );
  ND3 U69 ( .A(n36), .B(n55), .C(n37), .Z(led[7]) );
  IVP U70 ( .A(N14), .Z(n55) );
  NR2 U71 ( .A(swt[3]), .B(N17), .Z(n36) );
  NR4 U72 ( .A(swt[7]), .B(swt[6]), .C(swt[5]), .D(swt[4]), .Z(n37) );
  AO2 U73 ( .A(swt[0]), .B(mins[6]), .C(secs[6]), .D(n56), .Z(n23) );
  AO2 U74 ( .A(swt[0]), .B(mins[4]), .C(secs[4]), .D(n56), .Z(n25) );
  AO2 U75 ( .A(swt[0]), .B(mins[3]), .C(secs[3]), .D(n56), .Z(n26) );
  AO2 U76 ( .A(swt[0]), .B(mins[7]), .C(secs[7]), .D(n56), .Z(n22) );
  AO2 U77 ( .A(n56), .B(mins[0]), .C(hours[0]), .D(swt[0]), .Z(n21) );
  AO2 U78 ( .A(swt[0]), .B(mins[0]), .C(led[0]), .D(n56), .Z(n35) );
  AO2 U79 ( .A(swt[0]), .B(mins[5]), .C(secs[5]), .D(n56), .Z(n24) );
  AO2 U80 ( .A(n56), .B(mins[5]), .C(hours[5]), .D(swt[0]), .Z(n31) );
  AN2 U81 ( .A(n57), .B(n58), .Z(led[0]) );
endmodule

