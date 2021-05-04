// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _trames_separ_HH_
#define _trames_separ_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "trames_separ_do_gen.h"

namespace ap_rtl {

struct trames_separ : public sc_module {
    // Port declarations 11
    sc_in_clk clock;
    sc_in< sc_logic > reset;
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
    trames_separ(sc_module_name name);
    SC_HAS_PROCESS(trames_separ);

    ~trames_separ();

    sc_trace_file* mVcdFile;

    trames_separ_do_gen* grp_trames_separ_do_gen_fu_60;
    sc_signal< sc_logic > grp_trames_separ_do_gen_fu_60_e_read;
    sc_signal< sc_logic > grp_trames_separ_do_gen_fu_60_detect_read;
    sc_signal< sc_lv<8> > grp_trames_separ_do_gen_fu_60_s_din;
    sc_signal< sc_logic > grp_trames_separ_do_gen_fu_60_s_write;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_detect_read();
    void thread_e_read();
    void thread_s_din();
    void thread_s_write();
};

}

using namespace ap_rtl;

#endif