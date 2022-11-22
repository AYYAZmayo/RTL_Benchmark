/* Generated by Yosys 0.16+65 (git sha1 051517d61, gcc 9.1.0 -fPIC -Os) */

module routing_test(IN0, IN1, IN2, clk, OUT0, OUT1, OUT2);
  input IN0;
  wire IN0;
  input IN1;
  wire IN1;
  input IN2;
  wire IN2;
  output OUT0;
  wire OUT0;
  output OUT1;
  wire OUT1;
  output OUT2;
  wire OUT2;
  input clk;
  wire clk;
  dffsre _0_ (
    .C(clk),
    .D(IN2),
    .E(1'b1),
    .Q(OUT2),
    .R(1'b1),
    .S(1'b1)
  );
  dffsre _1_ (
    .C(clk),
    .D(IN0),
    .E(1'b1),
    .Q(OUT0),
    .R(1'b1),
    .S(1'b1)
  );
  dffsre _2_ (
    .C(clk),
    .D(IN1),
    .E(1'b1),
    .Q(OUT1),
    .R(1'b1),
    .S(1'b1)
  );
endmodule