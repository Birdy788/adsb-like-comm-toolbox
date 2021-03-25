// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="FrameProcessing,hls_ip_2020_1,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100t-csg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.816000,HLS_SYN_LAT=36,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=176,HLS_SYN_LUT=378,HLS_VERSION=2020_1}" *)

module FrameProcessing (
        clock,
        reset,
        e_dout,
        e_empty_n,
        e_read,
        addr_din,
        addr_full_n,
        addr_write,
        rgbv_din,
        rgbv_full_n,
        rgbv_write
);


input   clock;
input   reset;
input  [7:0] e_dout;
input   e_empty_n;
output   e_read;
output  [31:0] addr_din;
input   addr_full_n;
output   addr_write;
output  [23:0] rgbv_din;
input   rgbv_full_n;
output   rgbv_write;

wire    grp_FrameProcessing_do_gen_fu_64_e_read;
wire   [31:0] grp_FrameProcessing_do_gen_fu_64_addr_din;
wire    grp_FrameProcessing_do_gen_fu_64_addr_write;
wire   [23:0] grp_FrameProcessing_do_gen_fu_64_rgbv_din;
wire    grp_FrameProcessing_do_gen_fu_64_rgbv_write;

FrameProcessing_do_gen grp_FrameProcessing_do_gen_fu_64(
    .ap_clk(clock),
    .ap_rst(reset),
    .e_dout(e_dout),
    .e_empty_n(e_empty_n),
    .e_read(grp_FrameProcessing_do_gen_fu_64_e_read),
    .addr_din(grp_FrameProcessing_do_gen_fu_64_addr_din),
    .addr_full_n(addr_full_n),
    .addr_write(grp_FrameProcessing_do_gen_fu_64_addr_write),
    .rgbv_din(grp_FrameProcessing_do_gen_fu_64_rgbv_din),
    .rgbv_full_n(rgbv_full_n),
    .rgbv_write(grp_FrameProcessing_do_gen_fu_64_rgbv_write)
);

assign addr_din = grp_FrameProcessing_do_gen_fu_64_addr_din;

assign addr_write = grp_FrameProcessing_do_gen_fu_64_addr_write;

assign e_read = grp_FrameProcessing_do_gen_fu_64_e_read;

assign rgbv_din = grp_FrameProcessing_do_gen_fu_64_rgbv_din;

assign rgbv_write = grp_FrameProcessing_do_gen_fu_64_rgbv_write;

endmodule //FrameProcessing
