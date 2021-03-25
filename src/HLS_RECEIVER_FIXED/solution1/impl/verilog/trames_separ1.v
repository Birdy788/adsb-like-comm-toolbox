// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="trames_separ1,hls_ip_2020_1,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100t-csg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.816000,HLS_SYN_LAT=579,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=34,HLS_SYN_LUT=179,HLS_VERSION=2020_1}" *)

module trames_separ1 (
        clock,
        reset,
        e_dout,
        e_empty_n,
        e_read,
        detect_dout,
        detect_empty_n,
        detect_read,
        s_din,
        s_full_n,
        s_write
);


input   clock;
input   reset;
input  [7:0] e_dout;
input   e_empty_n;
output   e_read;
input   detect_dout;
input   detect_empty_n;
output   detect_read;
output  [7:0] s_din;
input   s_full_n;
output   s_write;

wire    grp_trames_separ1_do_gen_fu_60_e_read;
wire    grp_trames_separ1_do_gen_fu_60_detect_read;
wire   [7:0] grp_trames_separ1_do_gen_fu_60_s_din;
wire    grp_trames_separ1_do_gen_fu_60_s_write;

trames_separ1_do_gen grp_trames_separ1_do_gen_fu_60(
    .ap_clk(clock),
    .ap_rst(reset),
    .e_dout(e_dout),
    .e_empty_n(e_empty_n),
    .e_read(grp_trames_separ1_do_gen_fu_60_e_read),
    .detect_dout(detect_dout),
    .detect_empty_n(detect_empty_n),
    .detect_read(grp_trames_separ1_do_gen_fu_60_detect_read),
    .s_din(grp_trames_separ1_do_gen_fu_60_s_din),
    .s_full_n(s_full_n),
    .s_write(grp_trames_separ1_do_gen_fu_60_s_write)
);

assign detect_read = grp_trames_separ1_do_gen_fu_60_detect_read;

assign e_read = grp_trames_separ1_do_gen_fu_60_e_read;

assign s_din = grp_trames_separ1_do_gen_fu_60_s_din;

assign s_write = grp_trames_separ1_do_gen_fu_60_s_write;

endmodule //trames_separ1
