vlib work
vlib riviera

vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_16
vlib riviera/floating_point_v7_1_10
vlib riviera/xil_defaultlib

vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 riviera/mult_gen_v12_0_16
vmap floating_point_v7_1_10 riviera/floating_point_v7_1_10
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xbip_utils_v3_0_10 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_10 -93 \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../ipstatic/hdl/vhdl/BitDecider.vhd" \
"../../../ipstatic/hdl/vhdl/BitDecider_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/BitsToBytes.vhd" \
"../../../ipstatic/hdl/vhdl/BitsToBytes_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/CRCCheck.vhd" \
"../../../ipstatic/hdl/vhdl/CRCCheck_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/CRCCheck_do_gen_ibkb.vhd" \
"../../../ipstatic/hdl/vhdl/CRCCheck_mux_42_8cud.vhd" \
"../../../ipstatic/hdl/vhdl/Detecteur1.vhd" \
"../../../ipstatic/hdl/vhdl/DOUBLEUR_U.vhd" \
"../../../ipstatic/hdl/vhdl/DOUBLEUR_U_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/DownSampling.vhd" \
"../../../ipstatic/hdl/vhdl/DownSampling_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w1_d32_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w1_d4096_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w8_d32_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w8_d4096_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w8_d4096_A_x.vhd" \
"../../../ipstatic/hdl/vhdl/FrameProcessing.vhd" \
"../../../ipstatic/hdl/vhdl/FrameProcessing_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/ModuleCompute.vhd" \
"../../../ipstatic/hdl/vhdl/ModuleCompute_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/ModuleCompute_macjbC.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc1.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc1_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc1_fmul_dEe.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc1_fpextfYi.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc1_mac_mhbi.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc1_mul_mibs.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc1_udiv_g8j.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc1_uitofeOg.vhd" \
"../../../ipstatic/hdl/vhdl/trames_separ1.vhd" \
"../../../ipstatic/hdl/vhdl/trames_separ1_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/my_module1.vhd" \
"../../../ipstatic/hdl/ip/my_module1_ap_fmul_2_max_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/my_module1_ap_fpext_0_no_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/my_module1_ap_uitofp_4_no_dsp_32.vhd" \
"../../../../receiver_adsb_fpga.srcs/sources_1/ip/my_module1_0_7/sim/my_module1_0.vhd" \

