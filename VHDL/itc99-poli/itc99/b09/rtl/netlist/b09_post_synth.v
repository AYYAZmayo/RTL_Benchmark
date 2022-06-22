/* Generated by Yosys 0.16+65 (git sha1 051517d61, gcc 9.1.0 -fPIC -Os) */

module b09(reset, clock, x, y);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  input clock;
  wire clock;
  wire [8:0] d_in;
  input reset;
  wire reset;
  wire [1:0] stato;
  input x;
  wire x;
  output y;
  wire y;
  dffsre _051_ (
    .C(clock),
    .D(_002_),
    .E(_001_),
    .Q(_010_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _052_ (
    .C(clock),
    .D(_003_),
    .E(_001_),
    .Q(_011_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _053_ (
    .C(clock),
    .D(_004_),
    .E(_001_),
    .Q(_012_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _054_ (
    .C(clock),
    .D(_005_),
    .E(_001_),
    .Q(_013_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _055_ (
    .C(clock),
    .D(_006_),
    .E(_001_),
    .Q(_014_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _056_ (
    .C(clock),
    .D(_007_),
    .E(_001_),
    .Q(_015_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _057_ (
    .C(clock),
    .D(_008_),
    .E(_001_),
    .Q(_016_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _058_ (
    .C(clock),
    .D(_009_),
    .E(_001_),
    .Q(_017_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _059_ (
    .C(clock),
    .D(_019_),
    .E(_018_),
    .Q(_027_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _060_ (
    .C(clock),
    .D(_020_),
    .E(_018_),
    .Q(_028_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _061_ (
    .C(clock),
    .D(_021_),
    .E(_018_),
    .Q(_029_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _062_ (
    .C(clock),
    .D(_022_),
    .E(_018_),
    .Q(_030_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _063_ (
    .C(clock),
    .D(_023_),
    .E(_018_),
    .Q(_031_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _064_ (
    .C(clock),
    .D(_024_),
    .E(_018_),
    .Q(_032_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _065_ (
    .C(clock),
    .D(_025_),
    .E(_018_),
    .Q(_033_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _066_ (
    .C(clock),
    .D(_026_),
    .E(_018_),
    .Q(_034_),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _067_ (
    .C(clock),
    .D(_035_),
    .E(_000_),
    .Q(y),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _068_ (
    .C(clock),
    .D(_036_),
    .E(1'b1),
    .Q(stato[0]),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _069_ (
    .C(clock),
    .D(_037_),
    .E(1'b1),
    .Q(stato[1]),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _070_ (
    .C(clock),
    .D(_038_),
    .E(1'b1),
    .Q(d_in[0]),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _071_ (
    .C(clock),
    .D(_039_),
    .E(1'b1),
    .Q(d_in[1]),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _072_ (
    .C(clock),
    .D(_040_),
    .E(1'b1),
    .Q(d_in[2]),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _073_ (
    .C(clock),
    .D(_041_),
    .E(1'b1),
    .Q(d_in[3]),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _074_ (
    .C(clock),
    .D(_042_),
    .E(1'b1),
    .Q(d_in[4]),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _075_ (
    .C(clock),
    .D(_043_),
    .E(1'b1),
    .Q(d_in[5]),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _076_ (
    .C(clock),
    .D(_044_),
    .E(1'b1),
    .Q(d_in[6]),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _077_ (
    .C(clock),
    .D(_045_),
    .E(1'b1),
    .Q(d_in[7]),
    .R(_050_),
    .S(1'b1)
  );
  dffsre _078_ (
    .C(clock),
    .D(_046_),
    .E(1'b1),
    .Q(d_in[8]),
    .R(_050_),
    .S(1'b1)
  );
  assign _043_ = 8'b01110000 >> { d_in[6], d_in[0], stato[0] };
  assign _025_ = 32'd3772837376 >> { d_in[0], _033_, d_in[2], stato };
  assign _042_ = 8'b01110000 >> { d_in[5], d_in[0], stato[0] };
  assign _026_ = 32'd3772837376 >> { d_in[0], _034_, d_in[1], stato[0], stato[1] };
  assign _022_ = 32'd3772837376 >> { d_in[0], _030_, d_in[5], stato[0], stato[1] };
  assign _047_ = 64'b1001000000001001000000000000000000000000000000001001000000001001 >> { _029_, d_in[6], _031_, d_in[4:3], _032_ };
  assign _048_ = 64'b1001000000001001000000000000000000000000000000001001000000001001 >> { _034_, d_in[1], _028_, d_in[7], _027_, d_in[8] };
  assign _049_ = 64'b1001000000001001000000000000000000000000000000000000000000000000 >> { _048_, _047_, d_in[2], _033_, _030_, d_in[5] };
  assign _046_ = 32'd1560071168 >> { stato[0], stato[1], d_in[0], x, _049_ };
  assign _003_ = 16'b1111000010001000 >> { stato[0], d_in[7], _010_, stato[1] };
  assign _006_ = 16'b1111000010001000 >> { stato[0], d_in[4], _013_, stato[1] };
  assign _024_ = 32'd3772837376 >> { d_in[0], _032_, d_in[3], stato[0], stato[1] };
  assign _020_ = 32'd3772837376 >> { d_in[0], _028_, d_in[7], stato[0], stato[1] };
  assign _018_ = 4'b1011 >> stato;
  assign _035_ = 32'd822020608 >> { stato[0], stato[1], d_in[0], _049_, _017_ };
  assign _000_ = 8'b11101111 >> { stato[0], d_in[0], stato[1] };
  assign _009_ = 16'b1111000010001000 >> { stato[0], d_in[1], _016_, stato[1] };
  assign _002_ = 4'b1000 >> { d_in[8], stato[0] };
  assign _005_ = 16'b1111000010001000 >> { stato[0], d_in[5], _012_, stato[1] };
  assign _008_ = 16'b1111000010001000 >> { stato[0], d_in[2], _015_, stato[1] };
  assign _023_ = 32'd3772837376 >> { d_in[0], _031_, d_in[4], stato[0], stato[1] };
  assign _001_ = 16'b0111001100001111 >> { d_in[0], stato[0], stato[1], _049_ };
  assign _004_ = 16'b1111000010001000 >> { stato[0], d_in[6], _011_, stato[1] };
  assign _007_ = 16'b1111000010001000 >> { stato[0], d_in[3], _014_, stato[1] };
  assign _019_ = 32'd3772837376 >> { d_in[0], _027_, d_in[8], stato[0], stato[1] };
  assign _037_ = 8'b11111000 >> { stato[1], d_in[0], stato[0] };
  assign _045_ = 8'b01110000 >> { d_in[8], d_in[0], stato[0] };
  assign _044_ = 8'b01110000 >> { d_in[7], d_in[0], stato[0] };
  assign _036_ = 16'b1000111111110011 >> { d_in[0], stato[0], stato[1], _049_ };
  assign _038_ = 8'b01110000 >> { d_in[1:0], stato[0] };
  assign _039_ = 8'b01110000 >> { d_in[2], d_in[0], stato[0] };
  assign _040_ = 8'b01110000 >> { d_in[3], d_in[0], stato[0] };
  assign _041_ = 8'b01110000 >> { d_in[4], d_in[0], stato[0] };
  assign _021_ = 32'd3772837376 >> { d_in[0], _029_, d_in[6], stato };
  assign _050_ = 2'b01 >> reset;
endmodule
