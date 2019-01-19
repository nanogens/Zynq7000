// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="axi_stream_counter,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.552000,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=102,HLS_SYN_LUT=99,HLS_VERSION=2018_3}" *)

module axi_stream_counter (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        counter_output_TDATA,
        counter_output_TVALID,
        counter_output_TREADY,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] counter_output_TDATA;
output   counter_output_TVALID;
input   counter_output_TREADY;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] counter_output_1_data_out;
reg    counter_output_1_vld_in;
wire    counter_output_1_vld_out;
wire    counter_output_1_ack_in;
wire    counter_output_1_ack_out;
reg   [31:0] counter_output_1_payload_A;
reg   [31:0] counter_output_1_payload_B;
reg    counter_output_1_sel_rd;
reg    counter_output_1_sel_wr;
wire    counter_output_1_sel;
wire    counter_output_1_load_A;
wire    counter_output_1_load_B;
reg   [1:0] counter_output_1_state;
wire    counter_output_1_state_cmp_full;
reg   [31:0] counterValue;
reg    counter_output_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [31:0] counterValue_assign_fu_35_p2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 counter_output_1_sel_rd = 1'b0;
#0 counter_output_1_sel_wr = 1'b0;
#0 counter_output_1_state = 2'd0;
#0 counterValue = 32'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        counter_output_1_sel_rd <= 1'b0;
    end else begin
        if (((counter_output_1_ack_out == 1'b1) & (counter_output_1_vld_out == 1'b1))) begin
            counter_output_1_sel_rd <= ~counter_output_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        counter_output_1_sel_wr <= 1'b0;
    end else begin
        if (((counter_output_1_ack_in == 1'b1) & (counter_output_1_vld_in == 1'b1))) begin
            counter_output_1_sel_wr <= ~counter_output_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        counter_output_1_state <= 2'd0;
    end else begin
        if ((((counter_output_1_state == 2'd2) & (counter_output_1_vld_in == 1'b0)) | ((counter_output_1_state == 2'd3) & (counter_output_1_vld_in == 1'b0) & (counter_output_1_ack_out == 1'b1)))) begin
            counter_output_1_state <= 2'd2;
        end else if ((((counter_output_1_state == 2'd1) & (counter_output_1_ack_out == 1'b0)) | ((counter_output_1_state == 2'd3) & (counter_output_1_ack_out == 1'b0) & (counter_output_1_vld_in == 1'b1)))) begin
            counter_output_1_state <= 2'd1;
        end else if (((~((counter_output_1_vld_in == 1'b0) & (counter_output_1_ack_out == 1'b1)) & ~((counter_output_1_ack_out == 1'b0) & (counter_output_1_vld_in == 1'b1)) & (counter_output_1_state == 2'd3)) | ((counter_output_1_state == 2'd1) & (counter_output_1_ack_out == 1'b1)) | ((counter_output_1_state == 2'd2) & (counter_output_1_vld_in == 1'b1)))) begin
            counter_output_1_state <= 2'd3;
        end else begin
            counter_output_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (counter_output_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        counterValue <= counterValue_assign_fu_35_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((counter_output_1_load_A == 1'b1)) begin
        counter_output_1_payload_A <= counterValue_assign_fu_35_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((counter_output_1_load_B == 1'b1)) begin
        counter_output_1_payload_B <= counterValue_assign_fu_35_p2;
    end
end

always @ (*) begin
    if (((counter_output_1_ack_in == 1'b1) & (counter_output_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((counter_output_1_ack_in == 1'b1) & (counter_output_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((counter_output_1_sel == 1'b1)) begin
        counter_output_1_data_out = counter_output_1_payload_B;
    end else begin
        counter_output_1_data_out = counter_output_1_payload_A;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (counter_output_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        counter_output_1_vld_in = 1'b1;
    end else begin
        counter_output_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        counter_output_TDATA_blk_n = counter_output_1_state[1'd1];
    end else begin
        counter_output_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (counter_output_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((counter_output_1_ack_in == 1'b1) & (counter_output_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_return = 32'd0;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign counterValue_assign_fu_35_p2 = (counterValue + 32'd1);

assign counter_output_1_ack_in = counter_output_1_state[1'd1];

assign counter_output_1_ack_out = counter_output_TREADY;

assign counter_output_1_load_A = (~counter_output_1_sel_wr & counter_output_1_state_cmp_full);

assign counter_output_1_load_B = (counter_output_1_state_cmp_full & counter_output_1_sel_wr);

assign counter_output_1_sel = counter_output_1_sel_rd;

assign counter_output_1_state_cmp_full = ((counter_output_1_state != 2'd1) ? 1'b1 : 1'b0);

assign counter_output_1_vld_out = counter_output_1_state[1'd0];

assign counter_output_TDATA = counter_output_1_data_out;

assign counter_output_TVALID = counter_output_1_state[1'd0];

endmodule //axi_stream_counter
