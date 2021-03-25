// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _trames_separ1_do_gen_HH_
#define _trames_separ1_do_gen_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct trames_separ1_do_gen : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<8> > e_dout;
    sc_in< sc_logic > e_empty_n;
    sc_out< sc_logic > e_read;
    sc_in< sc_logic > detect_dout;
    sc_in< sc_logic > detect_empty_n;
    sc_out< sc_logic > detect_read;
    sc_out< sc_lv<8> > s_din;
    sc_in< sc_logic > s_full_n;
    sc_out< sc_logic > s_write;


    // Module declarations
    trames_separ1_do_gen(sc_module_name name);
    SC_HAS_PROCESS(trames_separ1_do_gen);

    ~trames_separ1_do_gen();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > e_blk_n;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln50_fu_137_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln55_fu_149_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_reg_173;
    sc_signal< sc_lv<1> > icmp_ln60_fu_161_p2;
    sc_signal< sc_logic > detect_blk_n;
    sc_signal< sc_logic > s_blk_n;
    sc_signal< sc_lv<1> > grp_read_fu_90_p2;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<9> > i_fu_143_p2;
    sc_signal< bool > ap_block_state3;
    sc_signal< sc_lv<11> > i_1_fu_155_p2;
    sc_signal< bool > ap_block_state4;
    sc_signal< sc_lv<8> > i_2_fu_167_p2;
    sc_signal< bool > ap_predicate_op53_read_state5;
    sc_signal< bool > ap_predicate_op54_write_state5;
    sc_signal< bool > ap_predicate_op55_read_state5;
    sc_signal< bool > ap_block_state5;
    sc_signal< sc_lv<9> > i_0_reg_104;
    sc_signal< sc_lv<11> > i1_0_reg_115;
    sc_signal< sc_lv<8> > i2_0_reg_126;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<11> ap_const_lv11_780;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<8> ap_const_lv8_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_state2();
    void thread_ap_block_state3();
    void thread_ap_block_state4();
    void thread_ap_block_state5();
    void thread_ap_predicate_op53_read_state5();
    void thread_ap_predicate_op54_write_state5();
    void thread_ap_predicate_op55_read_state5();
    void thread_detect_blk_n();
    void thread_detect_read();
    void thread_e_blk_n();
    void thread_e_read();
    void thread_grp_read_fu_90_p2();
    void thread_i_1_fu_155_p2();
    void thread_i_2_fu_167_p2();
    void thread_i_fu_143_p2();
    void thread_icmp_ln50_fu_137_p2();
    void thread_icmp_ln55_fu_149_p2();
    void thread_icmp_ln60_fu_161_p2();
    void thread_s_blk_n();
    void thread_s_din();
    void thread_s_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
