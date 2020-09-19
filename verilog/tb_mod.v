`timescale 1ns/1ps
module tb_mod();
  wire counter1, counter2;
  reg photon_in, smod;
  initial begin
    #0 photon_in = 1'b0;
    smod = 1'b0;
    $dumpfile("mod_test.vcd");
    $dumpvars(0,tb_mod);
  end
  
  always #5 photon_in = ~photon_in;

  initial begin
    #2 smod = 1'b1;
    #15 smod = 1'b0;
  end
  mod m1(photon_in, smod, counter1, counter2);
endmodule
