`timescale 1ns/1ps
module Mux4Behavioral (
input wire       a, b, c, d,
input wire       s0, s1,
output reg       out
 );

always @ (*) begin
  case ({s0,s1})
    2'b00 : out = a;
    2'b01 : out = b;
    2'b10 : out = c;
    2'b11 : out = d;
  endcase

end

endmodule
