`timescale 1ns/1ps
module tb_counter_12_bit();
  reg clk, reset;
  initial begin
    #0 clk = 1'b0;
    reset = 1'b1;
    $dumpfile("counter_test.vcd");
    $dumpvars(0,tb_counter_12_bit);
  end

  always #5 clk = ~clk;

  initial begin
    #2 reset = 1'b0;
    #20 reset = 1'b1;
  end
  wire [11:0] count;
  counter_12_bit c1 (clk, reset, count);
endmodule
