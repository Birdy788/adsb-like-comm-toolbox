// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _my_module1_HH_
#define _my_module1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ModuleCompute.h"
#include "Detecteur1.h"
#include "DownSampling.h"
#include "BitDecider.h"
#include "BitsToBytes.h"
#include "CRCCheck.h"
#include "FrameProcessing.h"
#include "fifo_w8_d1024_A_x.h"
#include "fifo_w8_d32_A.h"
#include "fifo_w1_d32_A.h"

namespace ap_rtl {

struct my_module1 : public sc_module {
    // Port declarations 11
    sc_in_clk clock;
    sc_in< sc_logic > reset;
    sc_in< sc_lv<8> > e_dout;
    sc_in< sc_logic > e_empty_n;
    sc_out< sc_logic > e_read;
    sc_out< sc_lv<32> > addr_din;
    sc_in< sc_logic > addr_full_n;
    sc_out< sc_logic > addr_write;
    sc_out< sc_lv<24> > rgbv_din;
    sc_in< sc_logic > rgbv_full_n;
    sc_out< sc_logic > rgbv_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    my_module1(sc_module_name name);
    SC_HAS_PROCESS(my_module1);

    ~my_module1();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    ModuleCompute* grp_ModuleCompute_fu_212;
    Detecteur1* grp_Detecteur1_fu_226;
    DownSampling* grp_DownSampling_fu_278;
    BitDecider* grp_BitDecider_fu_292;
    BitsToBytes* grp_BitsToBytes_fu_306;
    CRCCheck* grp_CRCCheck_fu_320;
    FrameProcessing* grp_FrameProcessing_fu_334;
    fifo_w8_d1024_A_x* mod2dbl_1_fifo_U;
    fifo_w8_d32_A* det2dow_1_fifo_U;
    fifo_w8_d32_A* dow2bit_1_fifo_U;
    fifo_w1_d32_A* bit2byt_1_fifo_U;
    fifo_w8_d32_A* byt2crc_1_fifo_U;
    fifo_w8_d32_A* crc2fra_1_fifo_U;
    sc_signal< sc_logic > grp_ModuleCompute_fu_212_e_read;
    sc_signal< sc_lv<8> > grp_ModuleCompute_fu_212_s_din;
    sc_signal< sc_logic > grp_ModuleCompute_fu_212_s_write;
    sc_signal< sc_logic > grp_Detecteur1_fu_226_e_read;
    sc_signal< sc_lv<8> > grp_Detecteur1_fu_226_s_din;
    sc_signal< sc_logic > grp_Detecteur1_fu_226_s_write;
    sc_signal< sc_logic > grp_DownSampling_fu_278_e_read;
    sc_signal< sc_lv<8> > grp_DownSampling_fu_278_s_din;
    sc_signal< sc_logic > grp_DownSampling_fu_278_s_write;
    sc_signal< sc_logic > grp_BitDecider_fu_292_e_read;
    sc_signal< sc_lv<1> > grp_BitDecider_fu_292_s_din;
    sc_signal< sc_logic > grp_BitDecider_fu_292_s_write;
    sc_signal< sc_logic > grp_BitsToBytes_fu_306_e_read;
    sc_signal< sc_lv<8> > grp_BitsToBytes_fu_306_s_din;
    sc_signal< sc_logic > grp_BitsToBytes_fu_306_s_write;
    sc_signal< sc_logic > grp_CRCCheck_fu_320_e_read;
    sc_signal< sc_lv<8> > grp_CRCCheck_fu_320_s_din;
    sc_signal< sc_logic > grp_CRCCheck_fu_320_s_write;
    sc_signal< sc_logic > grp_FrameProcessing_fu_334_e_read;
    sc_signal< sc_lv<32> > grp_FrameProcessing_fu_334_addr_din;
    sc_signal< sc_logic > grp_FrameProcessing_fu_334_addr_write;
    sc_signal< sc_lv<24> > grp_FrameProcessing_fu_334_rgbv_din;
    sc_signal< sc_logic > grp_FrameProcessing_fu_334_rgbv_write;
    sc_signal< sc_logic > mod2dbl_1_full_n;
    sc_signal< sc_lv<8> > mod2dbl_1_dout;
    sc_signal< sc_logic > mod2dbl_1_empty_n;
    sc_signal< sc_logic > det2dow_1_full_n;
    sc_signal< sc_lv<8> > det2dow_1_dout;
    sc_signal< sc_logic > det2dow_1_empty_n;
    sc_signal< sc_logic > dow2bit_1_full_n;
    sc_signal< sc_lv<8> > dow2bit_1_dout;
    sc_signal< sc_logic > dow2bit_1_empty_n;
    sc_signal< sc_logic > bit2byt_1_full_n;
    sc_signal< sc_lv<1> > bit2byt_1_dout;
    sc_signal< sc_logic > bit2byt_1_empty_n;
    sc_signal< sc_logic > byt2crc_1_full_n;
    sc_signal< sc_lv<8> > byt2crc_1_dout;
    sc_signal< sc_logic > byt2crc_1_empty_n;
    sc_signal< sc_logic > crc2fra_1_full_n;
    sc_signal< sc_lv<8> > crc2fra_1_dout;
    sc_signal< sc_logic > crc2fra_1_empty_n;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_addr_din();
    void thread_addr_write();
    void thread_e_read();
    void thread_rgbv_din();
    void thread_rgbv_write();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
