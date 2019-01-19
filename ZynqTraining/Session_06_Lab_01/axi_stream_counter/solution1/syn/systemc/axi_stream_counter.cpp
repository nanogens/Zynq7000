// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "axi_stream_counter.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic axi_stream_counter::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic axi_stream_counter::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> axi_stream_counter::ap_ST_fsm_state1 = "1";
const sc_lv<2> axi_stream_counter::ap_ST_fsm_state2 = "10";
const sc_lv<32> axi_stream_counter::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> axi_stream_counter::ap_const_lv1_0 = "0";
const sc_lv<1> axi_stream_counter::ap_const_lv1_1 = "1";
const sc_lv<2> axi_stream_counter::ap_const_lv2_0 = "00";
const sc_lv<2> axi_stream_counter::ap_const_lv2_2 = "10";
const sc_lv<2> axi_stream_counter::ap_const_lv2_3 = "11";
const sc_lv<2> axi_stream_counter::ap_const_lv2_1 = "1";
const sc_lv<32> axi_stream_counter::ap_const_lv32_1 = "1";
const bool axi_stream_counter::ap_const_boolean_1 = true;

axi_stream_counter::axi_stream_counter(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( counter_output_1_ack_in );
    sensitive << ( counter_output_1_state );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( counter_output_1_ack_in );
    sensitive << ( counter_output_1_state );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( counter_output_1_ack_in );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_counterValue_assign_fu_35_p2);
    sensitive << ( counterValue );

    SC_METHOD(thread_counter_output_1_ack_in);
    sensitive << ( counter_output_1_state );

    SC_METHOD(thread_counter_output_1_ack_out);
    sensitive << ( counter_output_TREADY );

    SC_METHOD(thread_counter_output_1_data_out);
    sensitive << ( counter_output_1_payload_A );
    sensitive << ( counter_output_1_payload_B );
    sensitive << ( counter_output_1_sel );

    SC_METHOD(thread_counter_output_1_load_A);
    sensitive << ( counter_output_1_sel_wr );
    sensitive << ( counter_output_1_state_cmp_full );

    SC_METHOD(thread_counter_output_1_load_B);
    sensitive << ( counter_output_1_sel_wr );
    sensitive << ( counter_output_1_state_cmp_full );

    SC_METHOD(thread_counter_output_1_sel);
    sensitive << ( counter_output_1_sel_rd );

    SC_METHOD(thread_counter_output_1_state_cmp_full);
    sensitive << ( counter_output_1_state );

    SC_METHOD(thread_counter_output_1_vld_in);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( counter_output_1_ack_in );

    SC_METHOD(thread_counter_output_1_vld_out);
    sensitive << ( counter_output_1_state );

    SC_METHOD(thread_counter_output_TDATA);
    sensitive << ( counter_output_1_data_out );

    SC_METHOD(thread_counter_output_TDATA_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( counter_output_1_state );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_counter_output_TVALID);
    sensitive << ( counter_output_1_state );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( counter_output_1_ack_in );
    sensitive << ( counter_output_1_state );
    sensitive << ( ap_CS_fsm_state2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "01";
    counter_output_1_sel_rd = SC_LOGIC_0;
    counter_output_1_sel_wr = SC_LOGIC_0;
    counter_output_1_state = "00";
    counterValue = "00000000000000000000000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "axi_stream_counter_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, counter_output_TDATA, "(port)counter_output_TDATA");
    sc_trace(mVcdFile, counter_output_TVALID, "(port)counter_output_TVALID");
    sc_trace(mVcdFile, counter_output_TREADY, "(port)counter_output_TREADY");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, counter_output_1_data_out, "counter_output_1_data_out");
    sc_trace(mVcdFile, counter_output_1_vld_in, "counter_output_1_vld_in");
    sc_trace(mVcdFile, counter_output_1_vld_out, "counter_output_1_vld_out");
    sc_trace(mVcdFile, counter_output_1_ack_in, "counter_output_1_ack_in");
    sc_trace(mVcdFile, counter_output_1_ack_out, "counter_output_1_ack_out");
    sc_trace(mVcdFile, counter_output_1_payload_A, "counter_output_1_payload_A");
    sc_trace(mVcdFile, counter_output_1_payload_B, "counter_output_1_payload_B");
    sc_trace(mVcdFile, counter_output_1_sel_rd, "counter_output_1_sel_rd");
    sc_trace(mVcdFile, counter_output_1_sel_wr, "counter_output_1_sel_wr");
    sc_trace(mVcdFile, counter_output_1_sel, "counter_output_1_sel");
    sc_trace(mVcdFile, counter_output_1_load_A, "counter_output_1_load_A");
    sc_trace(mVcdFile, counter_output_1_load_B, "counter_output_1_load_B");
    sc_trace(mVcdFile, counter_output_1_state, "counter_output_1_state");
    sc_trace(mVcdFile, counter_output_1_state_cmp_full, "counter_output_1_state_cmp_full");
    sc_trace(mVcdFile, counterValue, "counterValue");
    sc_trace(mVcdFile, counter_output_TDATA_blk_n, "counter_output_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, counterValue_assign_fu_35_p2, "counterValue_assign_fu_35_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("axi_stream_counter.hdltvin.dat");
    mHdltvoutHandle.open("axi_stream_counter.hdltvout.dat");
}

axi_stream_counter::~axi_stream_counter() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void axi_stream_counter::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        counter_output_1_sel_rd = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_ack_out.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_vld_out.read()))) {
            counter_output_1_sel_rd =  (sc_logic) (~counter_output_1_sel_rd.read());
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        counter_output_1_sel_wr = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_vld_in.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_ack_in.read()))) {
            counter_output_1_sel_wr =  (sc_logic) (~counter_output_1_sel_wr.read());
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        counter_output_1_state = ap_const_lv2_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_vld_in.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_ack_out.read()) && 
              esl_seteq<1,2,2>(counter_output_1_state.read(), ap_const_lv2_3)) || 
             (esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_vld_in.read()) && 
              esl_seteq<1,2,2>(counter_output_1_state.read(), ap_const_lv2_2)))) {
            counter_output_1_state = ap_const_lv2_2;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_vld_in.read()) && 
                     esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_ack_out.read()) && 
                     esl_seteq<1,2,2>(counter_output_1_state.read(), ap_const_lv2_3)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_ack_out.read()) && 
                     esl_seteq<1,2,2>(counter_output_1_state.read(), ap_const_lv2_1)))) {
            counter_output_1_state = ap_const_lv2_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_vld_in.read()) && 
                     esl_seteq<1,2,2>(counter_output_1_state.read(), ap_const_lv2_2)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_ack_out.read()) && 
                     esl_seteq<1,2,2>(counter_output_1_state.read(), ap_const_lv2_1)) || 
                    (esl_seteq<1,2,2>(counter_output_1_state.read(), ap_const_lv2_3) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_ack_out.read())) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_ack_out.read()))))) {
            counter_output_1_state = ap_const_lv2_3;
        } else {
            counter_output_1_state = ap_const_lv2_2;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_ack_in.read())))) {
        counterValue = counterValue_assign_fu_35_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_load_A.read())) {
        counter_output_1_payload_A = counterValue_assign_fu_35_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_load_B.read())) {
        counter_output_1_payload_B = counterValue_assign_fu_35_p2.read();
    }
}

void axi_stream_counter::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void axi_stream_counter::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void axi_stream_counter::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(counter_output_1_ack_in.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_state.read()[0]))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void axi_stream_counter::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void axi_stream_counter::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(counter_output_1_ack_in.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_state.read()[0]))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void axi_stream_counter::thread_ap_return() {
    ap_return = ap_const_lv32_0;
}

void axi_stream_counter::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void axi_stream_counter::thread_counterValue_assign_fu_35_p2() {
    counterValue_assign_fu_35_p2 = (!counterValue.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(counterValue.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void axi_stream_counter::thread_counter_output_1_ack_in() {
    counter_output_1_ack_in = counter_output_1_state.read()[1];
}

void axi_stream_counter::thread_counter_output_1_ack_out() {
    counter_output_1_ack_out = counter_output_TREADY.read();
}

void axi_stream_counter::thread_counter_output_1_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, counter_output_1_sel.read())) {
        counter_output_1_data_out = counter_output_1_payload_B.read();
    } else {
        counter_output_1_data_out = counter_output_1_payload_A.read();
    }
}

void axi_stream_counter::thread_counter_output_1_load_A() {
    counter_output_1_load_A = (counter_output_1_state_cmp_full.read() & ~counter_output_1_sel_wr.read());
}

void axi_stream_counter::thread_counter_output_1_load_B() {
    counter_output_1_load_B = (counter_output_1_sel_wr.read() & counter_output_1_state_cmp_full.read());
}

void axi_stream_counter::thread_counter_output_1_sel() {
    counter_output_1_sel = counter_output_1_sel_rd.read();
}

void axi_stream_counter::thread_counter_output_1_state_cmp_full() {
    counter_output_1_state_cmp_full =  (sc_logic) ((!counter_output_1_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(counter_output_1_state.read() != ap_const_lv2_1))[0];
}

void axi_stream_counter::thread_counter_output_1_vld_in() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_ack_in.read())))) {
        counter_output_1_vld_in = ap_const_logic_1;
    } else {
        counter_output_1_vld_in = ap_const_logic_0;
    }
}

void axi_stream_counter::thread_counter_output_1_vld_out() {
    counter_output_1_vld_out = counter_output_1_state.read()[0];
}

void axi_stream_counter::thread_counter_output_TDATA() {
    counter_output_TDATA = counter_output_1_data_out.read();
}

void axi_stream_counter::thread_counter_output_TDATA_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        counter_output_TDATA_blk_n = counter_output_1_state.read()[1];
    } else {
        counter_output_TDATA_blk_n = ap_const_logic_1;
    }
}

void axi_stream_counter::thread_counter_output_TVALID() {
    counter_output_TVALID = counter_output_1_state.read()[0];
}

void axi_stream_counter::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_ack_in.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(counter_output_1_ack_in.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_0, counter_output_1_state.read()[0]))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

void axi_stream_counter::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"counter_output_TDATA\" :  \"" << counter_output_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"counter_output_TVALID\" :  \"" << counter_output_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"counter_output_TREADY\" :  \"" << counter_output_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

