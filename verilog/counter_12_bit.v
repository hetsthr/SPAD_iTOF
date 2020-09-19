`timescale 1ns/1ps
module counter_12_bit(clk, reset, count);
  input clk, reset;
  output reg [11:0] count;

  always@(posedge clk, posedge reset) begin
    if (reset == 1'b1) 
      count <= 12'b0;
    else 
      count <= count + 1'b1;
  end
endmodule // counter 
