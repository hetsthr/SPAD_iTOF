`timescale 1ns/1ps
module output_buffer(memory1, memory2, en, phase_out);
  input [11:0] memory1,memory2;
  input en;
  output reg [23:0] phase_out;

  always@(posedge en) begin
    phase_out <= {memory1,memory2};
  end
endmodule // output_buffer
