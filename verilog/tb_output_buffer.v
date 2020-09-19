`timescale 1ns/1ps
module tb_output_buffer();
  reg [11:0] memory1, memory2;
  reg en;
  wire [23:0] phase_out;

  initial begin
    $dumpfile("output_buffer_test.vcd");
    $dumpvars(0,tb_output_buffer);
    #0 en = 1'b0;
    memory1 = 12'd100;
    memory2 = 12'd200;
    #2 en = 1'b1;
    #3
    memory1 = 12'd5;
    memory2 = 12'd4;
    #5 en = 1'b0;
  end
  output_buffer ob1 (memory1, memory2, en, phase_out);
endmodule
