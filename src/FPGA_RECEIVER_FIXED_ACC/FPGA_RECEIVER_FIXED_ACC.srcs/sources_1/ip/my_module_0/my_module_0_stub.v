// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Mar 25 14:00:49 2021
// Host        : JARVIS running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/oasa/Documents/ef/adsb-like-comm-toolbox/src/FPGA_RECEIVER_FLOAT/FPGA_RECEIVER_FLOAT.srcs/sources_1/ip/my_module_0/my_module_0_stub.v
// Design      : my_module_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "my_module,Vivado 2020.1" *)
module my_module_0(clock, reset, e_dout, e_empty_n, e_read, addr_din, 
  addr_full_n, addr_write, rgbv_din, rgbv_full_n, rgbv_write)
/* synthesis syn_black_box black_box_pad_pin="clock,reset,e_dout[7:0],e_empty_n,e_read,addr_din[31:0],addr_full_n,addr_write,rgbv_din[23:0],rgbv_full_n,rgbv_write" */;
  input clock;
  input reset;
  input [7:0]e_dout;
  input e_empty_n;
  output e_read;
  output [31:0]addr_din;
  input addr_full_n;
  output addr_write;
  output [23:0]rgbv_din;
  input rgbv_full_n;
  output rgbv_write;
endmodule
