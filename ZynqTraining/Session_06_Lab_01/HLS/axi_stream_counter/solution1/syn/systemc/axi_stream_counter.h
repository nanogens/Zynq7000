// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _axi_stream_counter_HH_
#define _axi_stream_counter_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct axi_stream_counter : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > counter_output_TDATA;
    sc_out< sc_logic > counter_output_TVALID;
    sc_in< sc_logic > counter_output_TREADY;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    axi_stream_counter(sc_module_name name);
    SC_HAS_PROCESS(axi_stream_counter);

    ~axi_stream_counter();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > counter_output_1_data_out;
    sc_signal< sc_logic > counter_output_1_vld_in;
    sc_signal< sc_logic > counter_output_1_vld_out;
    sc_signal< sc_logic > counter_output_1_ack_in;
    sc_signal< sc_logic > counter_output_1_ack_out;
    sc_signal< sc_lv<32> > counter_output_1_payload_A;
    sc_signal< sc_lv<32> > counter_output_1_payload_B;
    sc_signal< sc_logic > counter_output_1_sel_rd;
    sc_signal< sc_logic > counter_output_1_sel_wr;
    sc_signal< sc_logic > counter_output_1_sel;
    sc_signal< sc_logic > counter_output_1_load_A;
    sc_signal< sc_logic > counter_output_1_load_B;
    sc_signal< sc_lv<2> > counter_output_1_state;
    sc_signal< sc_logic > counter_output_1_state_cmp_full;
    sc_signal< sc_lv<32> > counterValue;
    sc_signal< sc_logic > counter_output_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > counterValue_assign_fu_35_p2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_rst_n_inv();
    void thread_counterValue_assign_fu_35_p2();
    void thread_counter_output_1_ack_in();
    void thread_counter_output_1_ack_out();
    void thread_counter_output_1_data_out();
    void thread_counter_output_1_load_A();
    void thread_counter_output_1_load_B();
    void thread_counter_output_1_sel();
    void thread_counter_output_1_state_cmp_full();
    void thread_counter_output_1_vld_in();
    void thread_counter_output_1_vld_out();
    void thread_counter_output_TDATA();
    void thread_counter_output_TDATA_blk_n();
    void thread_counter_output_TVALID();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif