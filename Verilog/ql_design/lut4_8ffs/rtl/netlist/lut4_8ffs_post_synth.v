/* Generated by Yosys 0.16+65 (git sha1 7987105a9, gcc 9.1.0 -fPIC -Os) */

module lut4_8ffs(qck, qst, qrt, d_out, c);
  wire _0_;
  wire \abc[0].dut.CQZ ;
  wire \abc[1].dut.CQZ ;
  wire \abc[2].dut.CQZ ;
  wire \abc[3].dut.CQZ ;
  wire \abc[4].dut.CQZ ;
  wire \abc[5].dut.CQZ ;
  wire \abc[6].dut.CQZ ;
  wire \abc[7].dut.CQZ ;
  input [7:0] c;
  wire [7:0] c;
  output [7:0] d_out;
  wire [7:0] d_out;
  input qck;
  wire qck;
  input qrt;
  wire qrt;
  input qst;
  wire qst;
  dffsre _ref1r_ (
    .C(qck),
    .D(c[7]),
    .E(1'b1),
    .Q(\abc[7].dut.CQZ ),
    .R(1'b1),
    .S(_0_)
  );
  dffsre _ref2r_ (
    .C(qck),
    .D(c[6]),
    .E(1'b1),
    .Q(\abc[6].dut.CQZ ),
    .R(1'b1),
    .S(_0_)
  );
  dffsre _ref3r_ (
    .C(qck),
    .D(c[5]),
    .E(1'b1),
    .Q(\abc[5].dut.CQZ ),
    .R(1'b1),
    .S(_0_)
  );
  dffsre _ref4r_ (
    .C(qck),
    .D(c[4]),
    .E(1'b1),
    .Q(\abc[4].dut.CQZ ),
    .R(1'b1),
    .S(_0_)
  );
  dffsre _ref5r_ (
    .C(qck),
    .D(c[3]),
    .E(1'b1),
    .Q(\abc[3].dut.CQZ ),
    .R(1'b1),
    .S(_0_)
  );
  dffsre _ref6r_ (
    .C(qck),
    .D(c[2]),
    .E(1'b1),
    .Q(\abc[2].dut.CQZ ),
    .R(1'b1),
    .S(_0_)
  );
  dffsre _ref7r_ (
    .C(qck),
    .D(c[1]),
    .E(1'b1),
    .Q(\abc[1].dut.CQZ ),
    .R(1'b1),
    .S(_0_)
  );
  dffsre _ref8r_ (
    .C(qck),
    .D(c[0]),
    .E(1'b1),
    .Q(\abc[0].dut.CQZ ),
    .R(1'b1),
    .S(_0_)
  );
  assign _0_ = 4'b0001 >> { qst, qrt };
  assign d_out = { \abc[7].dut.CQZ , \abc[6].dut.CQZ , \abc[5].dut.CQZ , \abc[4].dut.CQZ , \abc[3].dut.CQZ , \abc[2].dut.CQZ , \abc[1].dut.CQZ , \abc[0].dut.CQZ  };
endmodule
