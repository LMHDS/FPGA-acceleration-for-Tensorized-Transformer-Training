// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module MatrixMultiplicationKernel_ConvertWidthB (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        bMemory_dout,
        bMemory_num_data_valid,
        bMemory_fifo_cap,
        bMemory_empty_n,
        bMemory_read,
        bFeed_din,
        bFeed_num_data_valid,
        bFeed_fifo_cap,
        bFeed_full_n,
        bFeed_write,
        size_n_dout,
        size_n_num_data_valid,
        size_n_fifo_cap,
        size_n_empty_n,
        size_n_read,
        size_k_dout,
        size_k_num_data_valid,
        size_k_fifo_cap,
        size_k_empty_n,
        size_k_read,
        size_m_dout,
        size_m_num_data_valid,
        size_m_fifo_cap,
        size_m_empty_n,
        size_m_read,
        size_n_c3_din,
        size_n_c3_num_data_valid,
        size_n_c3_fifo_cap,
        size_n_c3_full_n,
        size_n_c3_write,
        size_k_c6_din,
        size_k_c6_num_data_valid,
        size_k_c6_fifo_cap,
        size_k_c6_full_n,
        size_k_c6_write,
        size_m_c11_din,
        size_m_c11_num_data_valid,
        size_m_c11_fifo_cap,
        size_m_c11_full_n,
        size_m_c11_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [511:0] bMemory_dout;
input  [6:0] bMemory_num_data_valid;
input  [6:0] bMemory_fifo_cap;
input   bMemory_empty_n;
output   bMemory_read;
output  [255:0] bFeed_din;
input  [2:0] bFeed_num_data_valid;
input  [2:0] bFeed_fifo_cap;
input   bFeed_full_n;
output   bFeed_write;
input  [31:0] size_n_dout;
input  [2:0] size_n_num_data_valid;
input  [2:0] size_n_fifo_cap;
input   size_n_empty_n;
output   size_n_read;
input  [31:0] size_k_dout;
input  [2:0] size_k_num_data_valid;
input  [2:0] size_k_fifo_cap;
input   size_k_empty_n;
output   size_k_read;
input  [31:0] size_m_dout;
input  [2:0] size_m_num_data_valid;
input  [2:0] size_m_fifo_cap;
input   size_m_empty_n;
output   size_m_read;
output  [31:0] size_n_c3_din;
input  [2:0] size_n_c3_num_data_valid;
input  [2:0] size_n_c3_fifo_cap;
input   size_n_c3_full_n;
output   size_n_c3_write;
output  [31:0] size_k_c6_din;
input  [2:0] size_k_c6_num_data_valid;
input  [2:0] size_k_c6_fifo_cap;
input   size_k_c6_full_n;
output   size_k_c6_write;
output  [31:0] size_m_c11_din;
input  [2:0] size_m_c11_num_data_valid;
input  [2:0] size_m_c11_fifo_cap;
input   size_m_c11_full_n;
output   size_m_c11_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg bMemory_read;
reg bFeed_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    size_n_blk_n;
reg    size_k_blk_n;
reg    size_m_blk_n;
reg    size_n_c3_blk_n;
reg    size_k_c6_blk_n;
reg    size_m_c11_blk_n;
reg   [23:0] lshr_ln_reg_178;
reg    ap_block_state1;
wire  signed [54:0] mul_ln132_fu_107_p2;
reg  signed [54:0] mul_ln132_reg_183;
wire   [60:0] tmp_s_fu_169_p3;
reg   [60:0] tmp_s_reg_188;
wire    ap_CS_fsm_state2;
wire    grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_start;
wire    grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_done;
wire    grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_idle;
wire    grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_ready;
wire    grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_bMemory_read;
wire   [255:0] grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_bFeed_din;
wire    grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_bFeed_write;
reg    grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    size_m_read_local;
reg    size_m_c11_write_local;
reg    size_k_read_local;
reg    size_k_c6_write_local;
reg    size_n_read_local;
reg    size_n_c3_write_local;
wire   [23:0] mul_ln132_fu_107_p0;
wire   [31:0] mul_ln132_fu_107_p1;
wire   [23:0] mul_ln132_1_fu_111_p1;
wire   [32:0] zext_ln111_fu_115_p1;
wire   [32:0] add_ln111_fu_119_p2;
wire   [32:0] zext_ln116_fu_135_p1;
wire   [32:0] add_ln116_fu_139_p2;
wire   [23:0] lshr_ln3_fu_145_p4;
wire   [54:0] mul_ln132_1_fu_111_p2;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire   [54:0] mul_ln132_1_fu_111_p10;
wire   [54:0] mul_ln132_fu_107_p00;
wire   [54:0] mul_ln132_fu_107_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_start_reg = 1'b0;
end

MatrixMultiplicationKernel_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_start),
    .ap_done(grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_done),
    .ap_idle(grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_idle),
    .ap_ready(grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_ready),
    .bMemory_dout(bMemory_dout),
    .bMemory_num_data_valid(7'd0),
    .bMemory_fifo_cap(7'd0),
    .bMemory_empty_n(bMemory_empty_n),
    .bMemory_read(grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_bMemory_read),
    .bFeed_din(grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_bFeed_din),
    .bFeed_num_data_valid(3'd0),
    .bFeed_fifo_cap(3'd0),
    .bFeed_full_n(bFeed_full_n),
    .bFeed_write(grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_bFeed_write),
    .bound(tmp_s_reg_188)
);

MatrixMultiplicationKernel_mul_24ns_32ns_55_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 24 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 55 ))
mul_24ns_32ns_55_1_1_U124(
    .din0(mul_ln132_fu_107_p0),
    .din1(mul_ln132_fu_107_p1),
    .dout(mul_ln132_fu_107_p2)
);

MatrixMultiplicationKernel_mul_55s_24ns_55_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 55 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 55 ))
mul_55s_24ns_55_1_1_U125(
    .din0(mul_ln132_reg_183),
    .din1(mul_ln132_1_fu_111_p1),
    .dout(mul_ln132_1_fu_111_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state3) & (grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_start_reg <= 1'b1;
        end else if ((grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_ready == 1'b1)) begin
            grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        lshr_ln_reg_178 <= {{add_ln111_fu_119_p2[32:9]}};
        mul_ln132_reg_183 <= mul_ln132_fu_107_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_s_reg_188[60 : 6] <= tmp_s_fu_169_p3[60 : 6];
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        bFeed_write = grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_bFeed_write;
    end else begin
        bFeed_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        bMemory_read = grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_bMemory_read;
    end else begin
        bMemory_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_done == 1'b1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        size_k_blk_n = size_k_empty_n;
    end else begin
        size_k_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        size_k_c6_blk_n = size_k_c6_full_n;
    end else begin
        size_k_c6_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        size_k_c6_write_local = 1'b1;
    end else begin
        size_k_c6_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        size_k_read_local = 1'b1;
    end else begin
        size_k_read_local = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        size_m_blk_n = size_m_empty_n;
    end else begin
        size_m_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        size_m_c11_blk_n = size_m_c11_full_n;
    end else begin
        size_m_c11_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        size_m_c11_write_local = 1'b1;
    end else begin
        size_m_c11_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        size_m_read_local = 1'b1;
    end else begin
        size_m_read_local = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        size_n_blk_n = size_n_empty_n;
    end else begin
        size_n_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        size_n_c3_blk_n = size_n_c3_full_n;
    end else begin
        size_n_c3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        size_n_c3_write_local = 1'b1;
    end else begin
        size_n_c3_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        size_n_read_local = 1'b1;
    end else begin
        size_n_read_local = 1'b0;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln111_fu_119_p2 = (zext_ln111_fu_115_p1 + 33'd511);

assign add_ln116_fu_139_p2 = (zext_ln116_fu_135_p1 + 33'd511);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (size_m_c11_full_n == 1'b0) | (size_k_c6_full_n == 1'b0) | (size_n_c3_full_n == 1'b0) | (size_m_empty_n == 1'b0) | (size_k_empty_n == 1'b0) | (size_n_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign bFeed_din = grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_bFeed_din;

assign grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_start = grp_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory_fu_98_ap_start_reg;

assign lshr_ln3_fu_145_p4 = {{add_ln116_fu_139_p2[32:9]}};

assign mul_ln132_1_fu_111_p1 = mul_ln132_1_fu_111_p10;

assign mul_ln132_1_fu_111_p10 = lshr_ln_reg_178;

assign mul_ln132_fu_107_p0 = mul_ln132_fu_107_p00;

assign mul_ln132_fu_107_p00 = lshr_ln3_fu_145_p4;

assign mul_ln132_fu_107_p1 = mul_ln132_fu_107_p10;

assign mul_ln132_fu_107_p10 = size_k_dout;

assign size_k_c6_din = size_k_dout;

assign size_k_c6_write = size_k_c6_write_local;

assign size_k_read = size_k_read_local;

assign size_m_c11_din = size_m_dout;

assign size_m_c11_write = size_m_c11_write_local;

assign size_m_read = size_m_read_local;

assign size_n_c3_din = size_n_dout;

assign size_n_c3_write = size_n_c3_write_local;

assign size_n_read = size_n_read_local;

assign start_out = real_start;

assign tmp_s_fu_169_p3 = {{mul_ln132_1_fu_111_p2}, {6'd0}};

assign zext_ln111_fu_115_p1 = size_n_dout;

assign zext_ln116_fu_135_p1 = size_m_dout;

always @ (posedge ap_clk) begin
    tmp_s_reg_188[5:0] <= 6'b000000;
end

endmodule //MatrixMultiplicationKernel_ConvertWidthB