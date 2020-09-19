`timescale 1ns/1ps
module mod(photon_in, smod, counter1, counter2);
  input photon_in, smod;
  output reg counter1, counter2;
  always@(smod, photon_in) begin
    if(smod == 1'b1) begin
      counter1 = photon_in;
      counter2 = 1'b0;
    end
    else if (smod == 1'b0) begin
      counter2 = photon_in;
      counter1 = 1'b0;
    end
  end
endmodule // mod circuit
