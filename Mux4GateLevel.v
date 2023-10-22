module Mux4GateLevel(
output	 out, 
input     a, b, c, d,
input     s0, s1
);

wire      s0wire, s1wire;
wire      T1, T2, T3, T4;

not (s0wire, s0), (s1wire, s1);
and (T1, a, s0wire, s1wire), (T2, b, s0wire, s1),(T3, c, s0, s1wire), (T4, d, s0, s1);
or(out, T1, T2, T3, T4);

endmodule

