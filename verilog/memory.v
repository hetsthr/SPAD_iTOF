`timescale 1ns/1ps
module memory(count_in, read, count_out);
  input [11:0] count_in;
  input read;
  output reg [11:0] count_out;

  always@(posedge read) begin
    count_out <= count_in;
  end
endmodule // memory
