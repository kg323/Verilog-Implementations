/*
Name: Kenneth Galindo
Class: ECE 526 Lab
Lab Report: #1
File Name: Mux 4_1.v
*/

`timescale 1 ns / 1ns

module mux4_1(out, a , b, c, d, s0, s1);

output out;
input a, b, c, d, s0, s1;
wire s0_n, s1_n, T1, T2, T3, T4;

not (s0_n, s0), (s1_n, s1);
and (T1, a, s0, s1_n), (T2, b, s0_n, s1), (T3, c, s0, s1_n), (T4, d, s0, s1);
or (out, T1, T2, T3, T4);

endmodule
