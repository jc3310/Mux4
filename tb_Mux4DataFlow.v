`timescale 1ns/1ps
module tb_Mux4DataFlow;

wire  out;
reg  a;
reg  b;
reg  c;
reg  d;
reg s0, s1;

Mux4DataFlow name(.out(out), .a(a), .b(b), .c(c), .d(d), .s0(s0), .s1(s1));
 initial
 begin

 a=1'b0; 
 b=1'b0; 
 c=1'b0; 
 d=1'b0;
 s0=1'b0; 
 s1=1'b0;
 #500 $finish;

end

always #40 a=~a;
always #20 b=~b;
always #10 c=~c;
always #5 d=~d;
always #80 s0=~s0;
always #160 s1=~s1;

always@(*) 
$monitor("At time = %t, Output = %d", $time, out);

endmodule;