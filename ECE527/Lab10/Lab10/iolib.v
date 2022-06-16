`timescale 1ns / 1ps

module I1025_NS(PADIO,VSS,VDDIO,VDD,R_EN,VSSIO,DOUT);

input PADIO;
inout VSS;
inout VDDIO;
inout VDD;
input R_EN;
inout VSSIO;
output DOUT; 

assign #1 DOUT =  R_EN ? PADIO : 1'bz ;


endmodule



module D12I1025_NS(PADIO,VSS,EN,VDDIO,VDD,VSSIO,DIN);

inout PADIO;
inout VSS;
input EN;
inout VDDIO;
inout VDD;
inout VSSIO;
input DIN; 

assign #1 PADIO =  EN ? DIN : 1'bz ;

endmodule