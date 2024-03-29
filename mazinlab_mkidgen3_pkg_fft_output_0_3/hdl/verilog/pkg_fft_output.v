// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="pkg_fft_output_pkg_fft_output,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu28dr-ffvg1517-2-e,HLS_INPUT_CLOCK=1.818000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=0.849000,HLS_SYN_LAT=1,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=551,HLS_SYN_LUT=655,HLS_VERSION=2021_1}" *)

module pkg_fft_output (
// synthesis translate_off
    kernel_block,
// synthesis translate_on
        ap_clk,
        ap_rst_n,
        iq00,
        iq00_ap_vld,
        iq01,
        iq01_ap_vld,
        iq02,
        iq02_ap_vld,
        iq03,
        iq03_ap_vld,
        iq04,
        iq04_ap_vld,
        iq05,
        iq05_ap_vld,
        iq06,
        iq06_ap_vld,
        iq07,
        iq07_ap_vld,
        iq08,
        iq08_ap_vld,
        iq09,
        iq09_ap_vld,
        iq10,
        iq10_ap_vld,
        iq11,
        iq11_ap_vld,
        iq12,
        iq12_ap_vld,
        iq13,
        iq13_ap_vld,
        iq14,
        iq14_ap_vld,
        iq15,
        iq15_ap_vld,
        scale,
        scale_ap_vld,
        output_r_TDATA,
        output_r_TVALID,
        output_r_TREADY,
        output_r_TKEEP,
        output_r_TSTRB,
        output_r_TUSER,
        output_r_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
parameter    ap_const_lv512_lc_1 = 512'd0;

// synthesis translate_off
output kernel_block;
// synthesis translate_on
input   ap_clk;
input   ap_rst_n;
input  [31:0] iq00;
input   iq00_ap_vld;
input  [31:0] iq01;
input   iq01_ap_vld;
input  [31:0] iq02;
input   iq02_ap_vld;
input  [31:0] iq03;
input   iq03_ap_vld;
input  [31:0] iq04;
input   iq04_ap_vld;
input  [31:0] iq05;
input   iq05_ap_vld;
input  [31:0] iq06;
input   iq06_ap_vld;
input  [31:0] iq07;
input   iq07_ap_vld;
input  [31:0] iq08;
input   iq08_ap_vld;
input  [31:0] iq09;
input   iq09_ap_vld;
input  [31:0] iq10;
input   iq10_ap_vld;
input  [31:0] iq11;
input   iq11_ap_vld;
input  [31:0] iq12;
input   iq12_ap_vld;
input  [31:0] iq13;
input   iq13_ap_vld;
input  [31:0] iq14;
input   iq14_ap_vld;
input  [31:0] iq15;
input   iq15_ap_vld;
input  [11:0] scale;
input   scale_ap_vld;
output  [511:0] output_r_TDATA;
output   output_r_TVALID;
input   output_r_TREADY;
output  [63:0] output_r_TKEEP;
output  [63:0] output_r_TSTRB;
output  [15:0] output_r_TUSER;
output  [0:0] output_r_TLAST;

 reg    ap_rst_n_inv;
reg   [31:0] iq00_preg;
reg   [31:0] iq00_in_sig;
reg    iq00_ap_vld_preg;
reg    iq00_ap_vld_in_sig;
reg   [31:0] iq01_preg;
reg   [31:0] iq01_in_sig;
reg    iq01_ap_vld_preg;
reg    iq01_ap_vld_in_sig;
reg   [31:0] iq02_preg;
reg   [31:0] iq02_in_sig;
reg    iq02_ap_vld_preg;
reg    iq02_ap_vld_in_sig;
reg   [31:0] iq03_preg;
reg   [31:0] iq03_in_sig;
reg    iq03_ap_vld_preg;
reg    iq03_ap_vld_in_sig;
reg   [31:0] iq04_preg;
reg   [31:0] iq04_in_sig;
reg    iq04_ap_vld_preg;
reg    iq04_ap_vld_in_sig;
reg   [31:0] iq05_preg;
reg   [31:0] iq05_in_sig;
reg    iq05_ap_vld_preg;
reg    iq05_ap_vld_in_sig;
reg   [31:0] iq06_preg;
reg   [31:0] iq06_in_sig;
reg    iq06_ap_vld_preg;
reg    iq06_ap_vld_in_sig;
reg   [31:0] iq07_preg;
reg   [31:0] iq07_in_sig;
reg    iq07_ap_vld_preg;
reg    iq07_ap_vld_in_sig;
reg   [31:0] iq08_preg;
reg   [31:0] iq08_in_sig;
reg    iq08_ap_vld_preg;
reg    iq08_ap_vld_in_sig;
reg   [31:0] iq09_preg;
reg   [31:0] iq09_in_sig;
reg    iq09_ap_vld_preg;
reg    iq09_ap_vld_in_sig;
reg   [31:0] iq10_preg;
reg   [31:0] iq10_in_sig;
reg    iq10_ap_vld_preg;
reg    iq10_ap_vld_in_sig;
reg   [31:0] iq11_preg;
reg   [31:0] iq11_in_sig;
reg    iq11_ap_vld_preg;
reg    iq11_ap_vld_in_sig;
reg   [31:0] iq12_preg;
reg   [31:0] iq12_in_sig;
reg    iq12_ap_vld_preg;
reg    iq12_ap_vld_in_sig;
reg   [31:0] iq13_preg;
reg   [31:0] iq13_in_sig;
reg    iq13_ap_vld_preg;
reg    iq13_ap_vld_in_sig;
reg   [31:0] iq14_preg;
reg   [31:0] iq14_in_sig;
reg    iq14_ap_vld_preg;
reg    iq14_ap_vld_in_sig;
reg   [31:0] iq15_preg;
reg   [31:0] iq15_in_sig;
reg    iq15_ap_vld_preg;
reg    iq15_ap_vld_in_sig;
reg   [11:0] scale_preg;
reg   [11:0] scale_in_sig;
reg    scale_ap_vld_preg;
reg    scale_ap_vld_in_sig;
reg   [7:0] group_r;
reg    iq00_blk_n;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0;
reg    iq01_blk_n;
reg    iq02_blk_n;
reg    iq03_blk_n;
reg    iq04_blk_n;
reg    iq05_blk_n;
reg    iq06_blk_n;
reg    iq07_blk_n;
reg    iq08_blk_n;
reg    iq09_blk_n;
reg    iq10_blk_n;
reg    iq11_blk_n;
reg    iq12_blk_n;
reg    iq13_blk_n;
reg    iq14_blk_n;
reg    iq15_blk_n;
reg    scale_blk_n;
reg    output_r_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_state1_pp0_stage0_iter0;
wire    regslice_forward_output_V_data_V_U_apdone_blk;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg    ap_block_pp0_stage0_subdone;
wire   [7:0] add_ln870_fu_568_p2;
reg    ap_block_pp0_stage0_01001;
wire   [32:0] zext_ln254_fu_304_p1;
wire   [511:0] p_Result_s_fu_308_p5;
wire   [511:0] p_Result_1_fu_320_p5;
wire   [30:0] trunc_ln254_fu_332_p1;
wire   [511:0] p_Result_2_fu_336_p5;
wire   [29:0] trunc_ln254_1_fu_348_p1;
wire   [511:0] p_Result_3_fu_352_p5;
wire   [28:0] trunc_ln254_2_fu_364_p1;
wire   [511:0] p_Result_4_fu_368_p5;
wire   [27:0] trunc_ln254_3_fu_380_p1;
wire   [511:0] p_Result_5_fu_384_p5;
wire   [26:0] trunc_ln254_4_fu_396_p1;
wire   [511:0] p_Result_6_fu_400_p5;
wire   [25:0] trunc_ln254_5_fu_412_p1;
wire   [511:0] p_Result_7_fu_416_p5;
wire   [24:0] trunc_ln254_6_fu_428_p1;
wire   [511:0] p_Result_8_fu_432_p5;
wire   [23:0] trunc_ln254_7_fu_444_p1;
wire   [511:0] p_Result_9_fu_448_p5;
wire   [22:0] trunc_ln254_8_fu_460_p1;
wire   [511:0] p_Result_10_fu_464_p5;
wire   [21:0] trunc_ln254_9_fu_476_p1;
wire   [511:0] p_Result_11_fu_480_p5;
wire   [20:0] trunc_ln254_10_fu_492_p1;
wire   [511:0] p_Result_12_fu_496_p5;
wire   [19:0] trunc_ln254_11_fu_508_p1;
wire   [511:0] p_Result_13_fu_512_p5;
wire   [18:0] trunc_ln254_12_fu_524_p1;
wire   [511:0] p_Result_14_fu_528_p5;
wire   [17:0] trunc_ln254_13_fu_540_p1;
reg   [0:0] ap_NS_fsm;
wire    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [511:0] output_r_TDATA_int_regslice;
reg    output_r_TVALID_int_regslice;
wire    output_r_TREADY_int_regslice;
wire    regslice_forward_output_V_data_V_U_vld_out;
wire    regslice_forward_output_V_keep_V_U_apdone_blk;
wire    regslice_forward_output_V_keep_V_U_ack_in_dummy;
wire    regslice_forward_output_V_keep_V_U_vld_out;
wire    regslice_forward_output_V_strb_V_U_apdone_blk;
wire    regslice_forward_output_V_strb_V_U_ack_in_dummy;
wire    regslice_forward_output_V_strb_V_U_vld_out;
wire    regslice_forward_output_V_user_V_U_apdone_blk;
wire   [15:0] output_r_TUSER_int_regslice;
wire    regslice_forward_output_V_user_V_U_ack_in_dummy;
wire    regslice_forward_output_V_user_V_U_vld_out;
wire    regslice_forward_output_V_last_V_U_apdone_blk;
wire   [0:0] output_r_TLAST_int_regslice;
wire    regslice_forward_output_V_last_V_U_ack_in_dummy;
wire    regslice_forward_output_V_last_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 iq00_preg = 32'd0;
#0 iq00_ap_vld_preg = 1'b0;
#0 iq01_preg = 32'd0;
#0 iq01_ap_vld_preg = 1'b0;
#0 iq02_preg = 32'd0;
#0 iq02_ap_vld_preg = 1'b0;
#0 iq03_preg = 32'd0;
#0 iq03_ap_vld_preg = 1'b0;
#0 iq04_preg = 32'd0;
#0 iq04_ap_vld_preg = 1'b0;
#0 iq05_preg = 32'd0;
#0 iq05_ap_vld_preg = 1'b0;
#0 iq06_preg = 32'd0;
#0 iq06_ap_vld_preg = 1'b0;
#0 iq07_preg = 32'd0;
#0 iq07_ap_vld_preg = 1'b0;
#0 iq08_preg = 32'd0;
#0 iq08_ap_vld_preg = 1'b0;
#0 iq09_preg = 32'd0;
#0 iq09_ap_vld_preg = 1'b0;
#0 iq10_preg = 32'd0;
#0 iq10_ap_vld_preg = 1'b0;
#0 iq11_preg = 32'd0;
#0 iq11_ap_vld_preg = 1'b0;
#0 iq12_preg = 32'd0;
#0 iq12_ap_vld_preg = 1'b0;
#0 iq13_preg = 32'd0;
#0 iq13_ap_vld_preg = 1'b0;
#0 iq14_preg = 32'd0;
#0 iq14_ap_vld_preg = 1'b0;
#0 iq15_preg = 32'd0;
#0 iq15_ap_vld_preg = 1'b0;
#0 scale_preg = 12'd0;
#0 scale_ap_vld_preg = 1'b0;
#0 group_r = 8'd0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

pkg_fft_output_regslice_forward #(
    .DataWidth( 512 ))
regslice_forward_output_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output_r_TDATA_int_regslice),
    .vld_in(output_r_TVALID_int_regslice),
    .ack_in(output_r_TREADY_int_regslice),
    .data_out(output_r_TDATA),
    .vld_out(regslice_forward_output_V_data_V_U_vld_out),
    .ack_out(output_r_TREADY),
    .apdone_blk(regslice_forward_output_V_data_V_U_apdone_blk)
);

pkg_fft_output_regslice_forward #(
    .DataWidth( 64 ))
regslice_forward_output_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(64'd0),
    .vld_in(output_r_TVALID_int_regslice),
    .ack_in(regslice_forward_output_V_keep_V_U_ack_in_dummy),
    .data_out(output_r_TKEEP),
    .vld_out(regslice_forward_output_V_keep_V_U_vld_out),
    .ack_out(output_r_TREADY),
    .apdone_blk(regslice_forward_output_V_keep_V_U_apdone_blk)
);

pkg_fft_output_regslice_forward #(
    .DataWidth( 64 ))
regslice_forward_output_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(64'd0),
    .vld_in(output_r_TVALID_int_regslice),
    .ack_in(regslice_forward_output_V_strb_V_U_ack_in_dummy),
    .data_out(output_r_TSTRB),
    .vld_out(regslice_forward_output_V_strb_V_U_vld_out),
    .ack_out(output_r_TREADY),
    .apdone_blk(regslice_forward_output_V_strb_V_U_apdone_blk)
);

pkg_fft_output_regslice_forward #(
    .DataWidth( 16 ))
regslice_forward_output_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output_r_TUSER_int_regslice),
    .vld_in(output_r_TVALID_int_regslice),
    .ack_in(regslice_forward_output_V_user_V_U_ack_in_dummy),
    .data_out(output_r_TUSER),
    .vld_out(regslice_forward_output_V_user_V_U_vld_out),
    .ack_out(output_r_TREADY),
    .apdone_blk(regslice_forward_output_V_user_V_U_apdone_blk)
);

pkg_fft_output_regslice_forward #(
    .DataWidth( 1 ))
regslice_forward_output_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output_r_TLAST_int_regslice),
    .vld_in(output_r_TVALID_int_regslice),
    .ack_in(regslice_forward_output_V_last_V_U_ack_in_dummy),
    .data_out(output_r_TLAST),
    .vld_out(regslice_forward_output_V_last_V_U_vld_out),
    .ack_out(output_r_TREADY),
    .apdone_blk(regslice_forward_output_V_last_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq00_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq00_ap_vld_preg <= 1'b0;
        end else if ((iq00_ap_vld == 1'b1)) begin
            iq00_ap_vld_preg <= iq00_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq00_preg <= 32'd0;
    end else begin
        if ((iq00_ap_vld == 1'b1)) begin
            iq00_preg <= iq00;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq01_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq01_ap_vld_preg <= 1'b0;
        end else if ((iq01_ap_vld == 1'b1)) begin
            iq01_ap_vld_preg <= iq01_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq01_preg <= 32'd0;
    end else begin
        if ((iq01_ap_vld == 1'b1)) begin
            iq01_preg <= iq01;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq02_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq02_ap_vld_preg <= 1'b0;
        end else if ((iq02_ap_vld == 1'b1)) begin
            iq02_ap_vld_preg <= iq02_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq02_preg <= 32'd0;
    end else begin
        if ((iq02_ap_vld == 1'b1)) begin
            iq02_preg <= iq02;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq03_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq03_ap_vld_preg <= 1'b0;
        end else if ((iq03_ap_vld == 1'b1)) begin
            iq03_ap_vld_preg <= iq03_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq03_preg <= 32'd0;
    end else begin
        if ((iq03_ap_vld == 1'b1)) begin
            iq03_preg <= iq03;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq04_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq04_ap_vld_preg <= 1'b0;
        end else if ((iq04_ap_vld == 1'b1)) begin
            iq04_ap_vld_preg <= iq04_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq04_preg <= 32'd0;
    end else begin
        if ((iq04_ap_vld == 1'b1)) begin
            iq04_preg <= iq04;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq05_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq05_ap_vld_preg <= 1'b0;
        end else if ((iq05_ap_vld == 1'b1)) begin
            iq05_ap_vld_preg <= iq05_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq05_preg <= 32'd0;
    end else begin
        if ((iq05_ap_vld == 1'b1)) begin
            iq05_preg <= iq05;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq06_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq06_ap_vld_preg <= 1'b0;
        end else if ((iq06_ap_vld == 1'b1)) begin
            iq06_ap_vld_preg <= iq06_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq06_preg <= 32'd0;
    end else begin
        if ((iq06_ap_vld == 1'b1)) begin
            iq06_preg <= iq06;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq07_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq07_ap_vld_preg <= 1'b0;
        end else if ((iq07_ap_vld == 1'b1)) begin
            iq07_ap_vld_preg <= iq07_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq07_preg <= 32'd0;
    end else begin
        if ((iq07_ap_vld == 1'b1)) begin
            iq07_preg <= iq07;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq08_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq08_ap_vld_preg <= 1'b0;
        end else if ((iq08_ap_vld == 1'b1)) begin
            iq08_ap_vld_preg <= iq08_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq08_preg <= 32'd0;
    end else begin
        if ((iq08_ap_vld == 1'b1)) begin
            iq08_preg <= iq08;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq09_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq09_ap_vld_preg <= 1'b0;
        end else if ((iq09_ap_vld == 1'b1)) begin
            iq09_ap_vld_preg <= iq09_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq09_preg <= 32'd0;
    end else begin
        if ((iq09_ap_vld == 1'b1)) begin
            iq09_preg <= iq09;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq10_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq10_ap_vld_preg <= 1'b0;
        end else if ((iq10_ap_vld == 1'b1)) begin
            iq10_ap_vld_preg <= iq10_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq10_preg <= 32'd0;
    end else begin
        if ((iq10_ap_vld == 1'b1)) begin
            iq10_preg <= iq10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq11_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq11_ap_vld_preg <= 1'b0;
        end else if ((iq11_ap_vld == 1'b1)) begin
            iq11_ap_vld_preg <= iq11_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq11_preg <= 32'd0;
    end else begin
        if ((iq11_ap_vld == 1'b1)) begin
            iq11_preg <= iq11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq12_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq12_ap_vld_preg <= 1'b0;
        end else if ((iq12_ap_vld == 1'b1)) begin
            iq12_ap_vld_preg <= iq12_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq12_preg <= 32'd0;
    end else begin
        if ((iq12_ap_vld == 1'b1)) begin
            iq12_preg <= iq12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq13_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq13_ap_vld_preg <= 1'b0;
        end else if ((iq13_ap_vld == 1'b1)) begin
            iq13_ap_vld_preg <= iq13_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq13_preg <= 32'd0;
    end else begin
        if ((iq13_ap_vld == 1'b1)) begin
            iq13_preg <= iq13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq14_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq14_ap_vld_preg <= 1'b0;
        end else if ((iq14_ap_vld == 1'b1)) begin
            iq14_ap_vld_preg <= iq14_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq14_preg <= 32'd0;
    end else begin
        if ((iq14_ap_vld == 1'b1)) begin
            iq14_preg <= iq14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq15_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            iq15_ap_vld_preg <= 1'b0;
        end else if ((iq15_ap_vld == 1'b1)) begin
            iq15_ap_vld_preg <= iq15_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        iq15_preg <= 32'd0;
    end else begin
        if ((iq15_ap_vld == 1'b1)) begin
            iq15_preg <= iq15;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        scale_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
            scale_ap_vld_preg <= 1'b0;
        end else if ((scale_ap_vld == 1'b1)) begin
            scale_ap_vld_preg <= scale_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        scale_preg <= 12'd0;
    end else begin
        if ((scale_ap_vld == 1'b1)) begin
            scale_preg <= scale;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
        group_r <= add_ln870_fu_568_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

assign ap_reset_idle_pp0 = 1'b0;

always @ (*) begin
    if ((iq00_ap_vld == 1'b1)) begin
        iq00_ap_vld_in_sig = iq00_ap_vld;
    end else begin
        iq00_ap_vld_in_sig = iq00_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq00_blk_n = iq00_ap_vld;
    end else begin
        iq00_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq00_ap_vld == 1'b1)) begin
        iq00_in_sig = iq00;
    end else begin
        iq00_in_sig = iq00_preg;
    end
end

always @ (*) begin
    if ((iq01_ap_vld == 1'b1)) begin
        iq01_ap_vld_in_sig = iq01_ap_vld;
    end else begin
        iq01_ap_vld_in_sig = iq01_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq01_blk_n = iq01_ap_vld;
    end else begin
        iq01_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq01_ap_vld == 1'b1)) begin
        iq01_in_sig = iq01;
    end else begin
        iq01_in_sig = iq01_preg;
    end
end

always @ (*) begin
    if ((iq02_ap_vld == 1'b1)) begin
        iq02_ap_vld_in_sig = iq02_ap_vld;
    end else begin
        iq02_ap_vld_in_sig = iq02_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq02_blk_n = iq02_ap_vld;
    end else begin
        iq02_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq02_ap_vld == 1'b1)) begin
        iq02_in_sig = iq02;
    end else begin
        iq02_in_sig = iq02_preg;
    end
end

always @ (*) begin
    if ((iq03_ap_vld == 1'b1)) begin
        iq03_ap_vld_in_sig = iq03_ap_vld;
    end else begin
        iq03_ap_vld_in_sig = iq03_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq03_blk_n = iq03_ap_vld;
    end else begin
        iq03_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq03_ap_vld == 1'b1)) begin
        iq03_in_sig = iq03;
    end else begin
        iq03_in_sig = iq03_preg;
    end
end

always @ (*) begin
    if ((iq04_ap_vld == 1'b1)) begin
        iq04_ap_vld_in_sig = iq04_ap_vld;
    end else begin
        iq04_ap_vld_in_sig = iq04_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq04_blk_n = iq04_ap_vld;
    end else begin
        iq04_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq04_ap_vld == 1'b1)) begin
        iq04_in_sig = iq04;
    end else begin
        iq04_in_sig = iq04_preg;
    end
end

always @ (*) begin
    if ((iq05_ap_vld == 1'b1)) begin
        iq05_ap_vld_in_sig = iq05_ap_vld;
    end else begin
        iq05_ap_vld_in_sig = iq05_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq05_blk_n = iq05_ap_vld;
    end else begin
        iq05_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq05_ap_vld == 1'b1)) begin
        iq05_in_sig = iq05;
    end else begin
        iq05_in_sig = iq05_preg;
    end
end

always @ (*) begin
    if ((iq06_ap_vld == 1'b1)) begin
        iq06_ap_vld_in_sig = iq06_ap_vld;
    end else begin
        iq06_ap_vld_in_sig = iq06_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq06_blk_n = iq06_ap_vld;
    end else begin
        iq06_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq06_ap_vld == 1'b1)) begin
        iq06_in_sig = iq06;
    end else begin
        iq06_in_sig = iq06_preg;
    end
end

always @ (*) begin
    if ((iq07_ap_vld == 1'b1)) begin
        iq07_ap_vld_in_sig = iq07_ap_vld;
    end else begin
        iq07_ap_vld_in_sig = iq07_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq07_blk_n = iq07_ap_vld;
    end else begin
        iq07_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq07_ap_vld == 1'b1)) begin
        iq07_in_sig = iq07;
    end else begin
        iq07_in_sig = iq07_preg;
    end
end

always @ (*) begin
    if ((iq08_ap_vld == 1'b1)) begin
        iq08_ap_vld_in_sig = iq08_ap_vld;
    end else begin
        iq08_ap_vld_in_sig = iq08_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq08_blk_n = iq08_ap_vld;
    end else begin
        iq08_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq08_ap_vld == 1'b1)) begin
        iq08_in_sig = iq08;
    end else begin
        iq08_in_sig = iq08_preg;
    end
end

always @ (*) begin
    if ((iq09_ap_vld == 1'b1)) begin
        iq09_ap_vld_in_sig = iq09_ap_vld;
    end else begin
        iq09_ap_vld_in_sig = iq09_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq09_blk_n = iq09_ap_vld;
    end else begin
        iq09_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq09_ap_vld == 1'b1)) begin
        iq09_in_sig = iq09;
    end else begin
        iq09_in_sig = iq09_preg;
    end
end

always @ (*) begin
    if ((iq10_ap_vld == 1'b1)) begin
        iq10_ap_vld_in_sig = iq10_ap_vld;
    end else begin
        iq10_ap_vld_in_sig = iq10_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq10_blk_n = iq10_ap_vld;
    end else begin
        iq10_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq10_ap_vld == 1'b1)) begin
        iq10_in_sig = iq10;
    end else begin
        iq10_in_sig = iq10_preg;
    end
end

always @ (*) begin
    if ((iq11_ap_vld == 1'b1)) begin
        iq11_ap_vld_in_sig = iq11_ap_vld;
    end else begin
        iq11_ap_vld_in_sig = iq11_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq11_blk_n = iq11_ap_vld;
    end else begin
        iq11_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq11_ap_vld == 1'b1)) begin
        iq11_in_sig = iq11;
    end else begin
        iq11_in_sig = iq11_preg;
    end
end

always @ (*) begin
    if ((iq12_ap_vld == 1'b1)) begin
        iq12_ap_vld_in_sig = iq12_ap_vld;
    end else begin
        iq12_ap_vld_in_sig = iq12_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq12_blk_n = iq12_ap_vld;
    end else begin
        iq12_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq12_ap_vld == 1'b1)) begin
        iq12_in_sig = iq12;
    end else begin
        iq12_in_sig = iq12_preg;
    end
end

always @ (*) begin
    if ((iq13_ap_vld == 1'b1)) begin
        iq13_ap_vld_in_sig = iq13_ap_vld;
    end else begin
        iq13_ap_vld_in_sig = iq13_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq13_blk_n = iq13_ap_vld;
    end else begin
        iq13_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq13_ap_vld == 1'b1)) begin
        iq13_in_sig = iq13;
    end else begin
        iq13_in_sig = iq13_preg;
    end
end

always @ (*) begin
    if ((iq14_ap_vld == 1'b1)) begin
        iq14_ap_vld_in_sig = iq14_ap_vld;
    end else begin
        iq14_ap_vld_in_sig = iq14_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq14_blk_n = iq14_ap_vld;
    end else begin
        iq14_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq14_ap_vld == 1'b1)) begin
        iq14_in_sig = iq14;
    end else begin
        iq14_in_sig = iq14_preg;
    end
end

always @ (*) begin
    if ((iq15_ap_vld == 1'b1)) begin
        iq15_ap_vld_in_sig = iq15_ap_vld;
    end else begin
        iq15_ap_vld_in_sig = iq15_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        iq15_blk_n = iq15_ap_vld;
    end else begin
        iq15_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((iq15_ap_vld == 1'b1)) begin
        iq15_in_sig = iq15;
    end else begin
        iq15_in_sig = iq15_preg;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1)))) begin
        output_r_TDATA_blk_n = output_r_TREADY_int_regslice;
    end else begin
        output_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1))) begin
        output_r_TVALID_int_regslice = 1'b1;
    end else begin
        output_r_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((scale_ap_vld == 1'b1)) begin
        scale_ap_vld_in_sig = scale_ap_vld;
    end else begin
        scale_ap_vld_in_sig = scale_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1))) begin
        scale_blk_n = scale_ap_vld;
    end else begin
        scale_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((scale_ap_vld == 1'b1)) begin
        scale_in_sig = scale;
    end else begin
        scale_in_sig = scale_preg;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln870_fu_568_p2 = (group_r + 8'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((output_r_TREADY_int_regslice == 1'b0) | (regslice_forward_output_V_data_V_U_apdone_blk == 1'b1))) | ((1'b1 == 1'b1) & ((iq11_ap_vld_in_sig == 1'b0) | (iq10_ap_vld_in_sig == 1'b0) | (iq09_ap_vld_in_sig == 1'b0) | (iq08_ap_vld_in_sig == 1'b0) | (iq07_ap_vld_in_sig == 1'b0) | (iq06_ap_vld_in_sig == 1'b0) | (iq05_ap_vld_in_sig == 1'b0) | (iq04_ap_vld_in_sig == 1'b0) | (output_r_TREADY_int_regslice == 1'b0) | (iq03_ap_vld_in_sig == 1'b0) | (iq02_ap_vld_in_sig == 1'b0) | (iq01_ap_vld_in_sig == 1'b0) | (iq00_ap_vld_in_sig == 1'b0) | (scale_ap_vld_in_sig == 1'b0) | (iq15_ap_vld_in_sig == 1'b0) | (iq14_ap_vld_in_sig == 1'b0) | (iq13_ap_vld_in_sig == 1'b0) | (iq12_ap_vld_in_sig == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((output_r_TREADY_int_regslice == 1'b0) | (regslice_forward_output_V_data_V_U_apdone_blk == 1'b1))) | ((1'b1 == 1'b1) & ((iq11_ap_vld_in_sig == 1'b0) | (iq10_ap_vld_in_sig == 1'b0) | (iq09_ap_vld_in_sig == 1'b0) | (iq08_ap_vld_in_sig == 1'b0) | (iq07_ap_vld_in_sig == 1'b0) | (iq06_ap_vld_in_sig == 1'b0) | (iq05_ap_vld_in_sig == 1'b0) | (iq04_ap_vld_in_sig == 1'b0) | (output_r_TREADY_int_regslice == 1'b0) | (iq03_ap_vld_in_sig == 1'b0) | (iq02_ap_vld_in_sig == 1'b0) | (iq01_ap_vld_in_sig == 1'b0) | (iq00_ap_vld_in_sig == 1'b0) | (scale_ap_vld_in_sig == 1'b0) | (iq15_ap_vld_in_sig == 1'b0) | (iq14_ap_vld_in_sig == 1'b0) | (iq13_ap_vld_in_sig == 1'b0) | (iq12_ap_vld_in_sig == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((output_r_TREADY_int_regslice == 1'b0) | (regslice_forward_output_V_data_V_U_apdone_blk == 1'b1))) | ((1'b1 == 1'b1) & ((iq11_ap_vld_in_sig == 1'b0) | (iq10_ap_vld_in_sig == 1'b0) | (iq09_ap_vld_in_sig == 1'b0) | (iq08_ap_vld_in_sig == 1'b0) | (iq07_ap_vld_in_sig == 1'b0) | (iq06_ap_vld_in_sig == 1'b0) | (iq05_ap_vld_in_sig == 1'b0) | (iq04_ap_vld_in_sig == 1'b0) | (output_r_TREADY_int_regslice == 1'b0) | (iq03_ap_vld_in_sig == 1'b0) | (iq02_ap_vld_in_sig == 1'b0) | (iq01_ap_vld_in_sig == 1'b0) | (iq00_ap_vld_in_sig == 1'b0) | (scale_ap_vld_in_sig == 1'b0) | (iq15_ap_vld_in_sig == 1'b0) | (iq14_ap_vld_in_sig == 1'b0) | (iq13_ap_vld_in_sig == 1'b0) | (iq12_ap_vld_in_sig == 1'b0))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((iq11_ap_vld_in_sig == 1'b0) | (iq10_ap_vld_in_sig == 1'b0) | (iq09_ap_vld_in_sig == 1'b0) | (iq08_ap_vld_in_sig == 1'b0) | (iq07_ap_vld_in_sig == 1'b0) | (iq06_ap_vld_in_sig == 1'b0) | (iq05_ap_vld_in_sig == 1'b0) | (iq04_ap_vld_in_sig == 1'b0) | (output_r_TREADY_int_regslice == 1'b0) | (iq03_ap_vld_in_sig == 1'b0) | (iq02_ap_vld_in_sig == 1'b0) | (iq01_ap_vld_in_sig == 1'b0) | (iq00_ap_vld_in_sig == 1'b0) | (scale_ap_vld_in_sig == 1'b0) | (iq15_ap_vld_in_sig == 1'b0) | (iq14_ap_vld_in_sig == 1'b0) | (iq13_ap_vld_in_sig == 1'b0) | (iq12_ap_vld_in_sig == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((output_r_TREADY_int_regslice == 1'b0) | (regslice_forward_output_V_data_V_U_apdone_blk == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign output_r_TDATA_int_regslice = {{p_Result_14_fu_528_p5[511:498]}, {trunc_ln254_13_fu_540_p1}, {p_Result_14_fu_528_p5[479:0]}};

assign output_r_TLAST_int_regslice = ((group_r == 8'd255) ? 1'b1 : 1'b0);

assign output_r_TUSER_int_regslice = scale_in_sig;

assign output_r_TVALID = regslice_forward_output_V_data_V_U_vld_out;

assign p_Result_10_fu_464_p5 = {{p_Result_9_fu_448_p5[511:343]}, {trunc_ln254_8_fu_460_p1}, {p_Result_9_fu_448_p5[319:0]}};

assign p_Result_11_fu_480_p5 = {{p_Result_10_fu_464_p5[511:374]}, {trunc_ln254_9_fu_476_p1}, {p_Result_10_fu_464_p5[351:0]}};

assign p_Result_12_fu_496_p5 = {{p_Result_11_fu_480_p5[511:405]}, {trunc_ln254_10_fu_492_p1}, {p_Result_11_fu_480_p5[383:0]}};

assign p_Result_13_fu_512_p5 = {{p_Result_12_fu_496_p5[511:436]}, {trunc_ln254_11_fu_508_p1}, {p_Result_12_fu_496_p5[415:0]}};

assign p_Result_14_fu_528_p5 = {{p_Result_13_fu_512_p5[511:467]}, {trunc_ln254_12_fu_524_p1}, {p_Result_13_fu_512_p5[447:0]}};

assign p_Result_1_fu_320_p5 = {{p_Result_s_fu_308_p5[511:64]}, {iq01_in_sig}, {p_Result_s_fu_308_p5[31:0]}};

assign p_Result_2_fu_336_p5 = {{p_Result_1_fu_320_p5[511:95]}, {trunc_ln254_fu_332_p1}, {p_Result_1_fu_320_p5[63:0]}};

assign p_Result_3_fu_352_p5 = {{p_Result_2_fu_336_p5[511:126]}, {trunc_ln254_1_fu_348_p1}, {p_Result_2_fu_336_p5[95:0]}};

assign p_Result_4_fu_368_p5 = {{p_Result_3_fu_352_p5[511:157]}, {trunc_ln254_2_fu_364_p1}, {p_Result_3_fu_352_p5[127:0]}};

assign p_Result_5_fu_384_p5 = {{p_Result_4_fu_368_p5[511:188]}, {trunc_ln254_3_fu_380_p1}, {p_Result_4_fu_368_p5[159:0]}};

assign p_Result_6_fu_400_p5 = {{p_Result_5_fu_384_p5[511:219]}, {trunc_ln254_4_fu_396_p1}, {p_Result_5_fu_384_p5[191:0]}};

assign p_Result_7_fu_416_p5 = {{p_Result_6_fu_400_p5[511:250]}, {trunc_ln254_5_fu_412_p1}, {p_Result_6_fu_400_p5[223:0]}};

assign p_Result_8_fu_432_p5 = {{p_Result_7_fu_416_p5[511:281]}, {trunc_ln254_6_fu_428_p1}, {p_Result_7_fu_416_p5[255:0]}};

assign p_Result_9_fu_448_p5 = {{p_Result_8_fu_432_p5[511:312]}, {trunc_ln254_7_fu_444_p1}, {p_Result_8_fu_432_p5[287:0]}};

assign p_Result_s_fu_308_p5 = {{ap_const_lv512_lc_1[511:33]}, {zext_ln254_fu_304_p1}};

assign trunc_ln254_10_fu_492_p1 = iq12_in_sig[20:0];

assign trunc_ln254_11_fu_508_p1 = iq13_in_sig[19:0];

assign trunc_ln254_12_fu_524_p1 = iq14_in_sig[18:0];

assign trunc_ln254_13_fu_540_p1 = iq15_in_sig[17:0];

assign trunc_ln254_1_fu_348_p1 = iq03_in_sig[29:0];

assign trunc_ln254_2_fu_364_p1 = iq04_in_sig[28:0];

assign trunc_ln254_3_fu_380_p1 = iq05_in_sig[27:0];

assign trunc_ln254_4_fu_396_p1 = iq06_in_sig[26:0];

assign trunc_ln254_5_fu_412_p1 = iq07_in_sig[25:0];

assign trunc_ln254_6_fu_428_p1 = iq08_in_sig[24:0];

assign trunc_ln254_7_fu_444_p1 = iq09_in_sig[23:0];

assign trunc_ln254_8_fu_460_p1 = iq10_in_sig[22:0];

assign trunc_ln254_9_fu_476_p1 = iq11_in_sig[21:0];

assign trunc_ln254_fu_332_p1 = iq02_in_sig[30:0];

assign zext_ln254_fu_304_p1 = iq00_in_sig;


// synthesis translate_off
`include "pkg_fft_output_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on

endmodule //pkg_fft_output

