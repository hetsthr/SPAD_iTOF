`timescale 1ns/1ps
module coincidence_test;
  reg a,b,c,d;
  initial begin
   $dumpfile("coincidence_test.vcd");
   $dumpvars(0,coincidence_test);
   a=0;
   b=0;
   c=0;
   d=0;
   #5 a = 1;
   #5 b = 1;
   #5 c = 1;
      a = 0;
   #6 d = 1;
   #1 c = 0;
   #2 b = 0;
   #1 a = 1;
  end
  wire out;
  coincidence_detector d1 (a,b,c,d,out);
endmodule

