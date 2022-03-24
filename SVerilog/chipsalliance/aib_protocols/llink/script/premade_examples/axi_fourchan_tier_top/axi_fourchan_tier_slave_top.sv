module axi_fourchan_tier_slave_top (/*AUTOARG*/
   // Outputs
   tx_rx_debug_status, tx_phy0, rx_tx_debug_status, ch3_user_wvalid,
   ch3_user_wlast, ch3_user_wid, ch3_user_wdata, ch3_user_rready,
   ch3_user_bready, ch3_user_awvalid, ch3_user_awsize, ch3_user_awlen,
   ch3_user_awid, ch3_user_awburst, ch3_user_awaddr, ch3_user_arvalid,
   ch3_user_arsize, ch3_user_arlen, ch3_user_arid, ch3_user_arburst,
   ch3_user_araddr, ch3_tx_r_debug_status, ch3_tx_data,
   ch3_tx_b_debug_status, ch3_rx_w_debug_status,
   ch3_rx_aw_debug_status, ch3_rx_ar_debug_status, ch2_user_wvalid,
   ch2_user_wlast, ch2_user_wid, ch2_user_wdata, ch2_user_rready,
   ch2_user_bready, ch2_user_awvalid, ch2_user_awsize, ch2_user_awlen,
   ch2_user_awid, ch2_user_awburst, ch2_user_awaddr, ch2_user_arvalid,
   ch2_user_arsize, ch2_user_arlen, ch2_user_arid, ch2_user_arburst,
   ch2_user_araddr, ch2_tx_r_debug_status, ch2_tx_data,
   ch2_tx_b_debug_status, ch2_rx_w_debug_status,
   ch2_rx_aw_debug_status, ch2_rx_ar_debug_status, ch1_user_wvalid,
   ch1_user_wlast, ch1_user_wid, ch1_user_wdata, ch1_user_rready,
   ch1_user_bready, ch1_user_awvalid, ch1_user_awsize, ch1_user_awlen,
   ch1_user_awid, ch1_user_awburst, ch1_user_awaddr, ch1_user_arvalid,
   ch1_user_arsize, ch1_user_arlen, ch1_user_arid, ch1_user_arburst,
   ch1_user_araddr, ch1_tx_r_debug_status, ch1_tx_data,
   ch1_tx_b_debug_status, ch1_rx_w_debug_status,
   ch1_rx_aw_debug_status, ch1_rx_ar_debug_status, ch0_user_wvalid,
   ch0_user_wlast, ch0_user_wid, ch0_user_wdata, ch0_user_rready,
   ch0_user_bready, ch0_user_awvalid, ch0_user_awsize, ch0_user_awlen,
   ch0_user_awid, ch0_user_awburst, ch0_user_awaddr, ch0_user_arvalid,
   ch0_user_arsize, ch0_user_arlen, ch0_user_arid, ch0_user_arburst,
   ch0_user_araddr, ch0_tx_r_debug_status, ch0_tx_data,
   ch0_tx_b_debug_status, ch0_rx_w_debug_status,
   ch0_rx_aw_debug_status, ch0_rx_ar_debug_status,
   // Inputs
   tx_stb_userbit, tx_online, tx_mrk_userbit, rx_phy0, rx_online,
   rst_wr_n, m_gen2_mode, init_rx_credit, delay_z_value,
   delay_y_value, delay_x_value, clk_wr, ch3_user_wready,
   ch3_user_rvalid, ch3_user_rresp, ch3_user_rlast, ch3_user_rid,
   ch3_user_rdata, ch3_user_bvalid, ch3_user_bresp, ch3_user_bid,
   ch3_user_awready, ch3_user_arready, ch3_rx_data, ch2_user_wready,
   ch2_user_rvalid, ch2_user_rresp, ch2_user_rlast, ch2_user_rid,
   ch2_user_rdata, ch2_user_bvalid, ch2_user_bresp, ch2_user_bid,
   ch2_user_awready, ch2_user_arready, ch2_rx_data, ch1_user_wready,
   ch1_user_rvalid, ch1_user_rresp, ch1_user_rlast, ch1_user_rid,
   ch1_user_rdata, ch1_user_bvalid, ch1_user_bresp, ch1_user_bid,
   ch1_user_awready, ch1_user_arready, ch1_rx_data, ch0_user_wready,
   ch0_user_rvalid, ch0_user_rresp, ch0_user_rlast, ch0_user_rid,
   ch0_user_rdata, ch0_user_bvalid, ch0_user_bresp, ch0_user_bid,
   ch0_user_awready, ch0_user_arready, ch0_rx_data
   );

  /*AUTOOUTPUT*/
  // Beginning of automatic outputs (from unused autoinst outputs)
  output logic [31:0]	ch0_rx_ar_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch0_rx_aw_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch0_rx_w_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch0_tx_b_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [73:0]	ch0_tx_data;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  output logic [31:0]	ch0_tx_r_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [47:0]	ch0_user_araddr;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch0_user_arburst;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch0_user_arid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [7:0]	ch0_user_arlen;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch0_user_arsize;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch0_user_arvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [47:0]	ch0_user_awaddr;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch0_user_awburst;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch0_user_awid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [7:0]	ch0_user_awlen;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch0_user_awsize;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch0_user_awvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch0_user_bready;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch0_user_rready;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [63:0]	ch0_user_wdata;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch0_user_wid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch0_user_wlast;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch0_user_wvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch1_rx_ar_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch1_rx_aw_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch1_rx_w_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch1_tx_b_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [73:0]	ch1_tx_data;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  output logic [31:0]	ch1_tx_r_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [47:0]	ch1_user_araddr;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch1_user_arburst;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch1_user_arid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [7:0]	ch1_user_arlen;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch1_user_arsize;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch1_user_arvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [47:0]	ch1_user_awaddr;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch1_user_awburst;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch1_user_awid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [7:0]	ch1_user_awlen;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch1_user_awsize;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch1_user_awvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch1_user_bready;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch1_user_rready;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [63:0]	ch1_user_wdata;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch1_user_wid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch1_user_wlast;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch1_user_wvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch2_rx_ar_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch2_rx_aw_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch2_rx_w_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch2_tx_b_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [73:0]	ch2_tx_data;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  output logic [31:0]	ch2_tx_r_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [47:0]	ch2_user_araddr;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch2_user_arburst;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch2_user_arid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [7:0]	ch2_user_arlen;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch2_user_arsize;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch2_user_arvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [47:0]	ch2_user_awaddr;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch2_user_awburst;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch2_user_awid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [7:0]	ch2_user_awlen;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch2_user_awsize;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch2_user_awvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch2_user_bready;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch2_user_rready;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [63:0]	ch2_user_wdata;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch2_user_wid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch2_user_wlast;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch2_user_wvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch3_rx_ar_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch3_rx_aw_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch3_rx_w_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	ch3_tx_b_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [73:0]	ch3_tx_data;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  output logic [31:0]	ch3_tx_r_debug_status;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [47:0]	ch3_user_araddr;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch3_user_arburst;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch3_user_arid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [7:0]	ch3_user_arlen;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch3_user_arsize;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch3_user_arvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [47:0]	ch3_user_awaddr;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch3_user_awburst;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch3_user_awid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [7:0]	ch3_user_awlen;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [1:0]	ch3_user_awsize;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch3_user_awvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch3_user_bready;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch3_user_rready;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [63:0]	ch3_user_wdata;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [3:0]	ch3_user_wid;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch3_user_wlast;		// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic		ch3_user_wvalid;	// From axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  output logic [31:0]	rx_tx_debug_status;	// From axi_fourchan_tier2_slave_top_i0 of axi_fourchan_tier2_slave_top.v
  output logic [319:0]	tx_phy0;		// From axi_fourchan_tier2_slave_top_i0 of axi_fourchan_tier2_slave_top.v
  output logic [31:0]	tx_rx_debug_status;	// From axi_fourchan_tier2_slave_top_i0 of axi_fourchan_tier2_slave_top.v
  // End of automatics

  /*AUTOINPUT*/
  // Beginning of automatic inputs (from unused autoinst inputs)
  input logic [73:0]	ch0_rx_data;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic		ch0_user_arready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch0_user_awready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [3:0]	ch0_user_bid;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [1:0]	ch0_user_bresp;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch0_user_bvalid;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [63:0]	ch0_user_rdata;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [3:0]	ch0_user_rid;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch0_user_rlast;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [1:0]	ch0_user_rresp;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch0_user_rvalid;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch0_user_wready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [73:0]	ch1_rx_data;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic		ch1_user_arready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch1_user_awready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [3:0]	ch1_user_bid;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [1:0]	ch1_user_bresp;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch1_user_bvalid;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [63:0]	ch1_user_rdata;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [3:0]	ch1_user_rid;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch1_user_rlast;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [1:0]	ch1_user_rresp;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch1_user_rvalid;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch1_user_wready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i1 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [73:0]	ch2_rx_data;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic		ch2_user_arready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch2_user_awready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [3:0]	ch2_user_bid;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [1:0]	ch2_user_bresp;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch2_user_bvalid;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [63:0]	ch2_user_rdata;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [3:0]	ch2_user_rid;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch2_user_rlast;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [1:0]	ch2_user_rresp;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch2_user_rvalid;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch2_user_wready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i2 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [73:0]	ch3_rx_data;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic		ch3_user_arready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch3_user_awready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [3:0]	ch3_user_bid;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [1:0]	ch3_user_bresp;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch3_user_bvalid;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [63:0]	ch3_user_rdata;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [3:0]	ch3_user_rid;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch3_user_rlast;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic [1:0]	ch3_user_rresp;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch3_user_rvalid;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		ch3_user_wready;	// To axi_fourchan_tier1_a32_d32_packet_slave_top_i3 of axi_fourchan_tier1_a32_d32_packet_slave_top.v
  input logic		clk_wr;			// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic [15:0]	delay_x_value;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic [15:0]	delay_y_value;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic [15:0]	delay_z_value;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic [7:0]	init_rx_credit;		// To axi_fourchan_tier2_slave_top_i0 of axi_fourchan_tier2_slave_top.v
  input logic		m_gen2_mode;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic		rst_wr_n;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic		rx_online;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic [319:0]	rx_phy0;		// To axi_fourchan_tier2_slave_top_i0 of axi_fourchan_tier2_slave_top.v
  input logic [3:0]	tx_mrk_userbit;		// To axi_fourchan_tier2_slave_top_i0 of axi_fourchan_tier2_slave_top.v
  input logic		tx_online;		// To axi_fourchan_tier1_a32_d32_packet_slave_top_i0 of axi_fourchan_tier1_a32_d32_packet_slave_top.v, ...
  input logic		tx_stb_userbit;		// To axi_fourchan_tier2_slave_top_i0 of axi_fourchan_tier2_slave_top.v
  // End of automatics

  //-----------------------
  //-- WIRE DECLARATIONS --
  //-----------------------
  /*AUTOWIRE*/

   /* axi_fourchan_tier1_a32_d32_packet_slave_top AUTO_TEMPLATE ".*_i\(.+\)"  (
      .user_\(.*\)      		(ch@_user_\1[]),
      .user_\(.*\)      		(ch@_user_\1[]),
      .\(.*\)_debug_status		(ch@_\1_debug_status[]),
      .init_\(.*\)_credit		(8'h0),
      .rx_phy0				(ch@_rx_data[73:0]),
      .tx_phy0				(ch@_tx_data[73:0]),
    );
    */
   axi_fourchan_tier1_a32_d32_packet_slave_top axi_fourchan_tier1_a32_d32_packet_slave_top_i0
     (/*AUTOINST*/
      // Outputs
      .tx_phy0				(ch0_tx_data[73:0]),	 // Templated
      .user_arid			(ch0_user_arid[3:0]),	 // Templated
      .user_arsize			(ch0_user_arsize[1:0]),	 // Templated
      .user_arlen			(ch0_user_arlen[7:0]),	 // Templated
      .user_arburst			(ch0_user_arburst[1:0]), // Templated
      .user_araddr			(ch0_user_araddr[47:0]), // Templated
      .user_arvalid			(ch0_user_arvalid),	 // Templated
      .user_awid			(ch0_user_awid[3:0]),	 // Templated
      .user_awsize			(ch0_user_awsize[1:0]),	 // Templated
      .user_awlen			(ch0_user_awlen[7:0]),	 // Templated
      .user_awburst			(ch0_user_awburst[1:0]), // Templated
      .user_awaddr			(ch0_user_awaddr[47:0]), // Templated
      .user_awvalid			(ch0_user_awvalid),	 // Templated
      .user_wid				(ch0_user_wid[3:0]),	 // Templated
      .user_wdata			(ch0_user_wdata[63:0]),	 // Templated
      .user_wlast			(ch0_user_wlast),	 // Templated
      .user_wvalid			(ch0_user_wvalid),	 // Templated
      .user_rready			(ch0_user_rready),	 // Templated
      .user_bready			(ch0_user_bready),	 // Templated
      .rx_ar_debug_status		(ch0_rx_ar_debug_status[31:0]), // Templated
      .rx_aw_debug_status		(ch0_rx_aw_debug_status[31:0]), // Templated
      .rx_w_debug_status		(ch0_rx_w_debug_status[31:0]), // Templated
      .tx_r_debug_status		(ch0_tx_r_debug_status[31:0]), // Templated
      .tx_b_debug_status		(ch0_tx_b_debug_status[31:0]), // Templated
      // Inputs
      .clk_wr				(clk_wr),
      .rst_wr_n				(rst_wr_n),
      .tx_online			(tx_online),
      .rx_online			(rx_online),
      .init_r_credit			(8'h0),			 // Templated
      .init_b_credit			(8'h0),			 // Templated
      .rx_phy0				(ch0_rx_data[73:0]),	 // Templated
      .user_arready			(ch0_user_arready),	 // Templated
      .user_awready			(ch0_user_awready),	 // Templated
      .user_wready			(ch0_user_wready),	 // Templated
      .user_rid				(ch0_user_rid[3:0]),	 // Templated
      .user_rdata			(ch0_user_rdata[63:0]),	 // Templated
      .user_rlast			(ch0_user_rlast),	 // Templated
      .user_rresp			(ch0_user_rresp[1:0]),	 // Templated
      .user_rvalid			(ch0_user_rvalid),	 // Templated
      .user_bid				(ch0_user_bid[3:0]),	 // Templated
      .user_bresp			(ch0_user_bresp[1:0]),	 // Templated
      .user_bvalid			(ch0_user_bvalid),	 // Templated
      .m_gen2_mode			(m_gen2_mode),
      .delay_x_value			(delay_x_value[15:0]),
      .delay_y_value			(delay_y_value[15:0]),
      .delay_z_value			(delay_z_value[15:0]));

   axi_fourchan_tier1_a32_d32_packet_slave_top axi_fourchan_tier1_a32_d32_packet_slave_top_i1
     (/*AUTOINST*/
      // Outputs
      .tx_phy0				(ch1_tx_data[73:0]),	 // Templated
      .user_arid			(ch1_user_arid[3:0]),	 // Templated
      .user_arsize			(ch1_user_arsize[1:0]),	 // Templated
      .user_arlen			(ch1_user_arlen[7:0]),	 // Templated
      .user_arburst			(ch1_user_arburst[1:0]), // Templated
      .user_araddr			(ch1_user_araddr[47:0]), // Templated
      .user_arvalid			(ch1_user_arvalid),	 // Templated
      .user_awid			(ch1_user_awid[3:0]),	 // Templated
      .user_awsize			(ch1_user_awsize[1:0]),	 // Templated
      .user_awlen			(ch1_user_awlen[7:0]),	 // Templated
      .user_awburst			(ch1_user_awburst[1:0]), // Templated
      .user_awaddr			(ch1_user_awaddr[47:0]), // Templated
      .user_awvalid			(ch1_user_awvalid),	 // Templated
      .user_wid				(ch1_user_wid[3:0]),	 // Templated
      .user_wdata			(ch1_user_wdata[63:0]),	 // Templated
      .user_wlast			(ch1_user_wlast),	 // Templated
      .user_wvalid			(ch1_user_wvalid),	 // Templated
      .user_rready			(ch1_user_rready),	 // Templated
      .user_bready			(ch1_user_bready),	 // Templated
      .rx_ar_debug_status		(ch1_rx_ar_debug_status[31:0]), // Templated
      .rx_aw_debug_status		(ch1_rx_aw_debug_status[31:0]), // Templated
      .rx_w_debug_status		(ch1_rx_w_debug_status[31:0]), // Templated
      .tx_r_debug_status		(ch1_tx_r_debug_status[31:0]), // Templated
      .tx_b_debug_status		(ch1_tx_b_debug_status[31:0]), // Templated
      // Inputs
      .clk_wr				(clk_wr),
      .rst_wr_n				(rst_wr_n),
      .tx_online			(tx_online),
      .rx_online			(rx_online),
      .init_r_credit			(8'h0),			 // Templated
      .init_b_credit			(8'h0),			 // Templated
      .rx_phy0				(ch1_rx_data[73:0]),	 // Templated
      .user_arready			(ch1_user_arready),	 // Templated
      .user_awready			(ch1_user_awready),	 // Templated
      .user_wready			(ch1_user_wready),	 // Templated
      .user_rid				(ch1_user_rid[3:0]),	 // Templated
      .user_rdata			(ch1_user_rdata[63:0]),	 // Templated
      .user_rlast			(ch1_user_rlast),	 // Templated
      .user_rresp			(ch1_user_rresp[1:0]),	 // Templated
      .user_rvalid			(ch1_user_rvalid),	 // Templated
      .user_bid				(ch1_user_bid[3:0]),	 // Templated
      .user_bresp			(ch1_user_bresp[1:0]),	 // Templated
      .user_bvalid			(ch1_user_bvalid),	 // Templated
      .m_gen2_mode			(m_gen2_mode),
      .delay_x_value			(delay_x_value[15:0]),
      .delay_y_value			(delay_y_value[15:0]),
      .delay_z_value			(delay_z_value[15:0]));

   axi_fourchan_tier1_a32_d32_packet_slave_top axi_fourchan_tier1_a32_d32_packet_slave_top_i2
     (/*AUTOINST*/
      // Outputs
      .tx_phy0				(ch2_tx_data[73:0]),	 // Templated
      .user_arid			(ch2_user_arid[3:0]),	 // Templated
      .user_arsize			(ch2_user_arsize[1:0]),	 // Templated
      .user_arlen			(ch2_user_arlen[7:0]),	 // Templated
      .user_arburst			(ch2_user_arburst[1:0]), // Templated
      .user_araddr			(ch2_user_araddr[47:0]), // Templated
      .user_arvalid			(ch2_user_arvalid),	 // Templated
      .user_awid			(ch2_user_awid[3:0]),	 // Templated
      .user_awsize			(ch2_user_awsize[1:0]),	 // Templated
      .user_awlen			(ch2_user_awlen[7:0]),	 // Templated
      .user_awburst			(ch2_user_awburst[1:0]), // Templated
      .user_awaddr			(ch2_user_awaddr[47:0]), // Templated
      .user_awvalid			(ch2_user_awvalid),	 // Templated
      .user_wid				(ch2_user_wid[3:0]),	 // Templated
      .user_wdata			(ch2_user_wdata[63:0]),	 // Templated
      .user_wlast			(ch2_user_wlast),	 // Templated
      .user_wvalid			(ch2_user_wvalid),	 // Templated
      .user_rready			(ch2_user_rready),	 // Templated
      .user_bready			(ch2_user_bready),	 // Templated
      .rx_ar_debug_status		(ch2_rx_ar_debug_status[31:0]), // Templated
      .rx_aw_debug_status		(ch2_rx_aw_debug_status[31:0]), // Templated
      .rx_w_debug_status		(ch2_rx_w_debug_status[31:0]), // Templated
      .tx_r_debug_status		(ch2_tx_r_debug_status[31:0]), // Templated
      .tx_b_debug_status		(ch2_tx_b_debug_status[31:0]), // Templated
      // Inputs
      .clk_wr				(clk_wr),
      .rst_wr_n				(rst_wr_n),
      .tx_online			(tx_online),
      .rx_online			(rx_online),
      .init_r_credit			(8'h0),			 // Templated
      .init_b_credit			(8'h0),			 // Templated
      .rx_phy0				(ch2_rx_data[73:0]),	 // Templated
      .user_arready			(ch2_user_arready),	 // Templated
      .user_awready			(ch2_user_awready),	 // Templated
      .user_wready			(ch2_user_wready),	 // Templated
      .user_rid				(ch2_user_rid[3:0]),	 // Templated
      .user_rdata			(ch2_user_rdata[63:0]),	 // Templated
      .user_rlast			(ch2_user_rlast),	 // Templated
      .user_rresp			(ch2_user_rresp[1:0]),	 // Templated
      .user_rvalid			(ch2_user_rvalid),	 // Templated
      .user_bid				(ch2_user_bid[3:0]),	 // Templated
      .user_bresp			(ch2_user_bresp[1:0]),	 // Templated
      .user_bvalid			(ch2_user_bvalid),	 // Templated
      .m_gen2_mode			(m_gen2_mode),
      .delay_x_value			(delay_x_value[15:0]),
      .delay_y_value			(delay_y_value[15:0]),
      .delay_z_value			(delay_z_value[15:0]));

   axi_fourchan_tier1_a32_d32_packet_slave_top axi_fourchan_tier1_a32_d32_packet_slave_top_i3
     (/*AUTOINST*/
      // Outputs
      .tx_phy0				(ch3_tx_data[73:0]),	 // Templated
      .user_arid			(ch3_user_arid[3:0]),	 // Templated
      .user_arsize			(ch3_user_arsize[1:0]),	 // Templated
      .user_arlen			(ch3_user_arlen[7:0]),	 // Templated
      .user_arburst			(ch3_user_arburst[1:0]), // Templated
      .user_araddr			(ch3_user_araddr[47:0]), // Templated
      .user_arvalid			(ch3_user_arvalid),	 // Templated
      .user_awid			(ch3_user_awid[3:0]),	 // Templated
      .user_awsize			(ch3_user_awsize[1:0]),	 // Templated
      .user_awlen			(ch3_user_awlen[7:0]),	 // Templated
      .user_awburst			(ch3_user_awburst[1:0]), // Templated
      .user_awaddr			(ch3_user_awaddr[47:0]), // Templated
      .user_awvalid			(ch3_user_awvalid),	 // Templated
      .user_wid				(ch3_user_wid[3:0]),	 // Templated
      .user_wdata			(ch3_user_wdata[63:0]),	 // Templated
      .user_wlast			(ch3_user_wlast),	 // Templated
      .user_wvalid			(ch3_user_wvalid),	 // Templated
      .user_rready			(ch3_user_rready),	 // Templated
      .user_bready			(ch3_user_bready),	 // Templated
      .rx_ar_debug_status		(ch3_rx_ar_debug_status[31:0]), // Templated
      .rx_aw_debug_status		(ch3_rx_aw_debug_status[31:0]), // Templated
      .rx_w_debug_status		(ch3_rx_w_debug_status[31:0]), // Templated
      .tx_r_debug_status		(ch3_tx_r_debug_status[31:0]), // Templated
      .tx_b_debug_status		(ch3_tx_b_debug_status[31:0]), // Templated
      // Inputs
      .clk_wr				(clk_wr),
      .rst_wr_n				(rst_wr_n),
      .tx_online			(tx_online),
      .rx_online			(rx_online),
      .init_r_credit			(8'h0),			 // Templated
      .init_b_credit			(8'h0),			 // Templated
      .rx_phy0				(ch3_rx_data[73:0]),	 // Templated
      .user_arready			(ch3_user_arready),	 // Templated
      .user_awready			(ch3_user_awready),	 // Templated
      .user_wready			(ch3_user_wready),	 // Templated
      .user_rid				(ch3_user_rid[3:0]),	 // Templated
      .user_rdata			(ch3_user_rdata[63:0]),	 // Templated
      .user_rlast			(ch3_user_rlast),	 // Templated
      .user_rresp			(ch3_user_rresp[1:0]),	 // Templated
      .user_rvalid			(ch3_user_rvalid),	 // Templated
      .user_bid				(ch3_user_bid[3:0]),	 // Templated
      .user_bresp			(ch3_user_bresp[1:0]),	 // Templated
      .user_bvalid			(ch3_user_bvalid),	 // Templated
      .m_gen2_mode			(m_gen2_mode),
      .delay_x_value			(delay_x_value[15:0]),
      .delay_y_value			(delay_y_value[15:0]),
      .delay_z_value			(delay_z_value[15:0]));


   /* axi_fourchan_tier2_slave_top AUTO_TEMPLATE ".*_i\(.+\)"  (
      .init_tx_credit			(8'h0),
      .tx_tx_debug_status		(),
      .rx_rx_debug_status		(),
    );
    */
   axi_fourchan_tier2_slave_top axi_fourchan_tier2_slave_top_i0
     (/*AUTOINST*/
      // Outputs
      .tx_phy0				(tx_phy0[319:0]),
      .ch0_tx_data			(ch0_tx_data[73:0]),
      .ch1_tx_data			(ch1_tx_data[73:0]),
      .ch2_tx_data			(ch2_tx_data[73:0]),
      .ch3_tx_data			(ch3_tx_data[73:0]),
      .rx_tx_debug_status		(rx_tx_debug_status[31:0]),
      .tx_rx_debug_status		(tx_rx_debug_status[31:0]),
      // Inputs
      .clk_wr				(clk_wr),
      .rst_wr_n				(rst_wr_n),
      .tx_online			(tx_online),
      .rx_online			(rx_online),
      .init_rx_credit			(init_rx_credit[7:0]),
      .rx_phy0				(rx_phy0[319:0]),
      .ch0_rx_data			(ch0_rx_data[73:0]),
      .ch1_rx_data			(ch1_rx_data[73:0]),
      .ch2_rx_data			(ch2_rx_data[73:0]),
      .ch3_rx_data			(ch3_rx_data[73:0]),
      .m_gen2_mode			(m_gen2_mode),
      .tx_mrk_userbit			(tx_mrk_userbit[3:0]),
      .tx_stb_userbit			(tx_stb_userbit),
      .delay_x_value			(delay_x_value[15:0]),
      .delay_y_value			(delay_y_value[15:0]),
      .delay_z_value			(delay_z_value[15:0]));


endmodule




// Local Variables:
// verilog-library-directories:("../*" )
// verilog-auto-inst-param-value:()
// End:
//
