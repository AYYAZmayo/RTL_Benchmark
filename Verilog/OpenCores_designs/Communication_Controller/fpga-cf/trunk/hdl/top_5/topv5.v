// Top Module

module top
(
   // SGMII Interface - EMAC0
   TXP_0,
   TXN_0,
   RXP_0,
   RXN_0,

   // SGMII MGT Clock buffer inputs 
   MGTCLK_N,
   MGTCLK_P, 

   // reset for ethernet phy
   PHY_RESET_0,

   // GTP link status
   GTP_READY,

   // Asynchronous Reset
   RESET,

	// LED Status
	LEDS,
	
	// DIP Switch
	DIP,
	
	// CPU RESET
	RESET_CPU
);

//-----------------------------------------------------------------------------
// Port Declarations 
//-----------------------------------------------------------------------------

   // SGMII Interface - EMAC0
   output          TXP_0;
   output          TXN_0;
   input           RXP_0;
   input           RXN_0;
   
   // SGMII MGT Clock buffer inputs 
   input           MGTCLK_N;
   input           MGTCLK_P;

   // reset for ethernet phy
   output          PHY_RESET_0; 

   // GTP link status
   output          GTP_READY;

   // Asynchronous Reset
   input           RESET;

	// LED Status
	output	[7:0]		LEDS;
	
	// DIP Switches
	input	[7:0]		DIP;
	
	// CPU RESET
	input 				RESET_CPU;
	
//-----------------------------------------------------------------------------


//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------
//                                                       User Signals
//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------

reg [7:0] DIP_r;
wire reset_cpu_p;
wire reset_cpu_i;
reg [7:0] LEDr;

IBUF cpu_reset_ibuf (.I(RESET_CPU), .O(reset_cpu_i));
	
assign reset_cpu_p = ~reset_cpu_i;


//-----------------------------------------------------------------------------
// Ethernet Platform Instance
//-----------------------------------------------------------------------------

wire in_src_rdy_usr;
wire out_dst_rdy_usr;
wire [7:0] in_data_usr;
wire in_sof_usr;
wire in_eof_usr;
wire in_dst_rdy_usr;
wire out_src_rdy_usr;
wire [7:0] out_data_usr;
wire out_sof_usr;
wire out_eof_usr;
wire [3:0] outport_usr;
wire [3:0] inport_usr;
wire clk_local;
wire rst_local;


enetplatform enet_inst
(
   .TXP_0(TXP_0),
   .TXN_0(TXN_0),
   .RXP_0(RXP_0),
   .RXN_0(RXN_0),
   .MGTCLK_N(MGTCLK_N),
   .MGTCLK_P(MGTCLK_P), 
   .PHY_RESET_0(PHY_RESET_0),
   .GTP_READY(GTP_READY),
   .RESET(RESET),
	.RESET_CPU(reset_cpu_p),
	.in_src_rdy_usr(in_src_rdy_usr),
	.out_dst_rdy_usr(out_dst_rdy_usr),
	.in_data_usr(in_data_usr),
	.in_sof_usr(in_sof_usr),
	.in_eof_usr(in_eof_usr),
	.in_dst_rdy_usr(in_dst_rdy_usr),
	.out_src_rdy_usr(out_src_rdy_usr),
	.out_data_usr(out_data_usr),
	.out_sof_usr(out_sof_usr),
	.out_eof_usr(out_eof_usr),
	.outport_usr(outport_usr),
	.inport_usr(inport_usr),
	.clk_local(clk_local),
	.rst_local(rst_local)
);

//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------


//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------
//                                                       ICAP Logic
//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------

wire icap_en_wr;
wire icap_en_rd;
wire icap_out_src_rdy;
wire icap_out_dst_rdy;
wire icap_in_src_rdy;
wire icap_in_dst_rdy;
wire icap_out_sof;
wire icap_out_eof;
wire icap_in_sof;
wire icap_in_eof;
wire [7:0] icap_dataout;
wire [7:0] icap_datain;

port_icap_buf the_picap
(
	.clk(clk_local),
	.rst(rst_local),
	.en_wr(icap_en_wr),
	.en_rd(icap_en_rd),
	.in_data(icap_datain),
	.in_sof(icap_in_sof),
	.in_eof(icap_in_eof),
	.in_src_rdy(icap_in_src_rdy),
	.out_dst_rdy(icap_out_dst_rdy),
	.out_data(icap_dataout),
	.out_sof(icap_out_sof),
	.out_eof(icap_out_eof),
	.out_src_rdy(icap_out_src_rdy),
	.in_dst_rdy(icap_in_dst_rdy)
);

assign icap_en_wr = ((outport_usr == 3 && out_src_rdy_usr == 1) || (inport_usr == 3 && in_dst_rdy_usr == 1)) ? 1 : 0;
assign icap_en_rd = ((outport_usr == 4 && out_src_rdy_usr == 1) || (inport_usr == 4 && in_dst_rdy_usr == 1)) ? 1 : 0;


//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------
//                                                       Channel Routing
//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------

wire ch1_in_sof;
wire ch1_in_eof;
wire ch1_in_src_rdy;
wire ch1_in_dst_rdy;
wire [7:0] ch1_in_data;
wire ch1_out_sof;
wire ch1_out_eof;
wire ch1_out_src_rdy;
wire ch1_out_dst_rdy;
wire [7:0] ch1_out_data;
wire ch1_wen;
wire ch1_ren;

wire ch2_in_sof;
wire ch2_in_eof;
wire ch2_in_src_rdy;
wire ch2_in_dst_rdy;
wire [7:0] ch2_in_data;
wire ch2_out_sof;
wire ch2_out_eof;
wire ch2_out_src_rdy;
wire ch2_out_dst_rdy;
wire [7:0] ch2_out_data;
wire ch2_wen;
wire ch2_ren;

wire ch3_in_sof;
wire ch3_in_eof;
wire ch3_in_src_rdy;
wire ch3_in_dst_rdy;
wire [7:0] ch3_in_data;
wire ch3_out_sof;
wire ch3_out_eof;
wire ch3_out_src_rdy;
wire ch3_out_dst_rdy;
wire [7:0] ch3_out_data;
wire ch3_wen;
wire ch3_ren;

wire ch4_in_sof;
wire ch4_in_eof;
wire ch4_in_src_rdy;
wire ch4_in_dst_rdy;
wire [7:0] ch4_in_data;
wire ch4_out_sof;
wire ch4_out_eof;
wire ch4_out_src_rdy;
wire ch4_out_dst_rdy;
wire [7:0] ch4_out_data;
wire ch4_wen;
wire ch4_ren;

channelif4 channelif_inst
(
	.in_sof(out_sof_usr),
	.in_eof(out_eof_usr),
	.in_src_rdy(out_src_rdy_usr),
	.in_dst_rdy(out_dst_rdy_usr),
	.in_data(out_data_usr),
	.inport_addr(outport_usr),
	.out_sof(in_sof_usr),
	.out_eof(in_eof_usr),
	.out_src_rdy(in_src_rdy_usr),
	.out_dst_rdy(in_dst_rdy_usr),
	.out_data(in_data_usr),
	.outport_addr(inport_usr),
	.wenables(),
	.renables(),
	
	.ch1_in_sof(ch1_in_sof),
	.ch1_in_eof(ch1_in_eof),
	.ch1_in_src_rdy(ch1_in_src_rdy),
	.ch1_in_dst_rdy(ch1_in_dst_rdy),
	.ch1_in_data(ch1_in_data),
	.ch1_out_sof(ch1_out_sof),
	.ch1_out_eof(ch1_out_eof),
	.ch1_out_src_rdy(ch1_out_src_rdy),
	.ch1_out_dst_rdy(ch1_out_dst_rdy),
	.ch1_out_data(ch1_out_data),
	.ch1_wen(ch1_wen),
	.ch1_ren(ch1_ren),
	
	.ch2_in_sof(ch2_in_sof),
	.ch2_in_eof(ch2_in_eof),
	.ch2_in_src_rdy(ch2_in_src_rdy),
	.ch2_in_dst_rdy(ch2_in_dst_rdy),
	.ch2_in_data(ch2_in_data),
	.ch2_out_sof(ch2_out_sof),
	.ch2_out_eof(ch2_out_eof),
	.ch2_out_src_rdy(ch2_out_src_rdy),
	.ch2_out_dst_rdy(ch2_out_dst_rdy),
	.ch2_out_data(ch2_out_data),
	.ch2_wen(ch2_wen),
	.ch2_ren(ch2_ren),
	
	.ch3_in_sof(ch3_in_sof),
	.ch3_in_eof(ch3_in_eof),
	.ch3_in_src_rdy(ch3_in_src_rdy),
	.ch3_in_dst_rdy(ch3_in_dst_rdy),
	.ch3_in_data(ch3_in_data),
	.ch3_out_sof(ch3_out_sof),
	.ch3_out_eof(ch3_out_eof),
	.ch3_out_src_rdy(ch3_out_src_rdy),
	.ch3_out_dst_rdy(ch3_out_dst_rdy),
	.ch3_out_data(ch3_out_data),
	.ch3_wen(ch3_wen),
	.ch3_ren(ch3_ren),
	
	.ch4_in_sof(ch4_in_sof),
	.ch4_in_eof(ch4_in_eof),
	.ch4_in_src_rdy(ch4_in_src_rdy),
	.ch4_in_dst_rdy(ch4_in_dst_rdy),
	.ch4_in_data(ch4_in_data),
	.ch4_out_sof(ch4_out_sof),
	.ch4_out_eof(ch4_out_eof),
	.ch4_out_src_rdy(ch4_out_src_rdy),
	.ch4_out_dst_rdy(ch4_out_dst_rdy),
	.ch4_out_data(ch4_out_data),
	.ch4_wen(ch4_wen),
	.ch4_ren(ch4_ren)
);


//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------
//                                                       User Logic
//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------

wire [7:0] LEDnext;

assign LEDS = LEDr;
	
always @(posedge clk_local)
begin
	DIP_r <= DIP;
end

always @(posedge clk_local)
begin
	if (rst_local)
		LEDr <= 0;
	else if (ch2_wen & ch2_out_src_rdy)
		LEDr <= ch2_out_data;
end

// LED Status
//moving_led pr_mod_inst (
//	.clk(clk_local),
//	.rst(reset_cpu_p),
//	.leds(LEDS)
//);


//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------
//                                                       Channel Assignments
//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------

assign ch3_in_sof = icap_out_sof;
assign ch3_in_eof = icap_out_eof;
assign ch3_in_src_rdy = icap_out_src_rdy;
assign ch3_in_data = icap_dataout;
assign ch3_out_dst_rdy = icap_in_dst_rdy;
assign icap_datain = ch3_out_data | ch4_out_data;
assign icap_out_dst_rdy = ch3_in_dst_rdy | ch4_in_dst_rdy;
assign icap_in_src_rdy = ch3_out_src_rdy | ch4_out_src_rdy;
assign icap_in_sof = ch3_out_sof | ch4_out_sof;
assign icap_in_eof = ch3_out_eof | ch4_out_eof;

assign ch4_in_sof = icap_out_sof;
assign ch4_in_eof = icap_out_eof;
assign ch4_in_src_rdy = icap_out_src_rdy;
assign ch4_in_data = icap_dataout;
assign ch4_out_dst_rdy = icap_in_dst_rdy;

assign ch1_in_sof = 1;
assign ch1_in_eof = 1;
assign ch1_in_src_rdy = 1;
assign ch1_out_dst_rdy = 1;
assign ch1_in_data = DIP_r;

assign ch2_in_sof = 1;
assign ch2_in_eof = 1;
assign ch2_in_src_rdy = 1;
assign ch2_in_dst_rdy = 1;
assign ch2_in_data = LEDr;
assign LEDnext = ch2_out_data;



endmodule






module IBUF(
    output O,
    (* iopad_external_pin *)
    input I);
  parameter IOSTANDARD = "default";
  parameter IBUF_LOW_PWR = 0;
  assign O = I;
  specify
    (I => O) = 0;
  endspecify
endmodule



module BUFG(
    (* clkbuf_driver *)
    output O,
    input I);
  assign O = I;
  specify
    // https://github.com/SymbiFlow/prjxray-db/blob/4bc6385ab300b1819848371f508185f57b649a0e/artix7/timings/CLK_BUFG_TOP_R.sdf#L11
    (I => O) = 96;
  endspecify
endmodule



module IBUFG(
    output O,
    (* iopad_external_pin *)
    input I);
  parameter CAPACITANCE = "DONT_CARE";
  parameter IBUF_DELAY_VALUE = "0";
  parameter IBUF_LOW_PWR = "TRUE";
  parameter IOSTANDARD = "DEFAULT";
  assign O = I;
endmodule
