`timescale 1ns/1ps
module tb_memory();
  reg [11:0] count_in;
  reg read;
  wire [11:0] count_out;

  initial begin
    $dumpfile("memory_test.vcd");
    $dumpvars(0,tb_memory);
    #0 read = 1'b0;
    count_in = 12'd150;
    #1 read = 1'b1;
    #3 read = 1'b0;
    #5 count_in = 12'd600;
    #7 read = 1'b1;
    #8 read = 1'b0;
  end
  memory m1 (count_in, read, count_out);
endmodule
