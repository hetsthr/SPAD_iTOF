`timescale 1ns/1ps
module coincidence_detector(a,b,c,d,SPAD_valid);
input a,b,c,d;
output SPAD_valid;
wire [8:0] w;

nand(w[0],a,b);
nand(w[1],c,d);
nand(w[2],a,c);
nand(w[3],a,d);
nand(w[4],c,b);
nand(w[5],d,b);
nand(w[6],w[0],w[1]);
nand(w[7],w[2],w[3]);
nand(w[8],w[4],w[5]);
or(SPAD_valid,w[6],w[7],w[8]);

endmodule
