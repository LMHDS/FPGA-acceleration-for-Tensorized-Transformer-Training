// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module MatrixMultiplicationKernel_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
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
        bound
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
input  [60:0] bound;

reg ap_idle;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln309_reg_414;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln303_fu_111_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    bFeed_blk_n;
wire    ap_block_pp0_stage0;
reg    bMemory_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln306_fu_125_p2;
reg   [0:0] icmp_ln306_reg_409;
wire   [0:0] icmp_ln309_fu_139_p2;
wire   [0:0] empty_fu_145_p1;
reg   [0:0] empty_reg_418;
reg   [0:0] empty_reg_418_pp0_iter2_reg;
reg   [1:0] j_2_fu_62;
wire   [1:0] j_fu_149_p2;
wire    ap_loop_init;
reg   [511:0] p_0_0_06_fu_66;
wire   [511:0] select_ln302_fu_168_p3;
reg   [60:0] indvar_flatten_fu_70;
wire   [60:0] add_ln303_fu_119_p2;
reg    bMemory_read_local;
wire   [255:0] tmp_s_fu_356_p9;
reg    ap_block_pp0_stage0_01001;
reg    bFeed_write_local;
wire   [1:0] select_ln302_1_fu_131_p3;
wire   [8:0] i_assign_fu_188_p3;
wire   [511:0] zext_ln170_fu_195_p1;
wire   [511:0] lshr_ln170_fu_199_p2;
wire   [8:0] or_ln_fu_209_p3;
wire   [511:0] zext_ln170_1_fu_216_p1;
wire   [511:0] lshr_ln170_1_fu_220_p2;
wire   [8:0] or_ln170_1_fu_230_p3;
wire   [511:0] zext_ln170_2_fu_237_p1;
wire   [511:0] lshr_ln170_2_fu_241_p2;
wire   [8:0] or_ln170_2_fu_251_p3;
wire   [511:0] zext_ln170_3_fu_258_p1;
wire   [511:0] lshr_ln170_3_fu_262_p2;
wire   [8:0] or_ln170_3_fu_272_p3;
wire   [511:0] zext_ln170_4_fu_279_p1;
wire   [511:0] lshr_ln170_4_fu_283_p2;
wire   [8:0] or_ln170_4_fu_293_p3;
wire   [511:0] zext_ln170_5_fu_300_p1;
wire   [511:0] lshr_ln170_5_fu_304_p2;
wire   [8:0] or_ln170_5_fu_314_p3;
wire   [511:0] zext_ln170_6_fu_321_p1;
wire   [511:0] lshr_ln170_6_fu_325_p2;
wire   [8:0] or_ln170_6_fu_335_p3;
wire   [511:0] zext_ln170_7_fu_342_p1;
wire   [511:0] lshr_ln170_7_fu_346_p2;
wire   [31:0] trunc_ln170_39_fu_352_p1;
wire   [31:0] trunc_ln170_38_fu_331_p1;
wire   [31:0] trunc_ln170_37_fu_310_p1;
wire   [31:0] trunc_ln170_36_fu_289_p1;
wire   [31:0] trunc_ln170_35_fu_268_p1;
wire   [31:0] trunc_ln170_34_fu_247_p1;
wire   [31:0] trunc_ln170_33_fu_226_p1;
wire   [31:0] trunc_ln170_fu_205_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 j_2_fu_62 = 2'd0;
#0 p_0_0_06_fu_66 = 512'd0;
#0 indvar_flatten_fu_70 = 61'd0;
#0 ap_done_reg = 1'b0;
end

MatrixMultiplicationKernel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready_sig),
    .ap_done(ap_done_sig),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_70 <= 61'd0;
        end else if (((icmp_ln303_fu_111_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten_fu_70 <= add_ln303_fu_119_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_2_fu_62 <= 2'd0;
        end else if (((icmp_ln303_fu_111_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            j_2_fu_62 <= j_fu_149_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            p_0_0_06_fu_66 <= 512'd0;
        end else if (((icmp_ln309_reg_414 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            p_0_0_06_fu_66 <= bMemory_dout;
        end else if (((icmp_ln309_reg_414 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            p_0_0_06_fu_66 <= select_ln302_fu_168_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_reg_418 <= empty_fu_145_p1;
        icmp_ln306_reg_409 <= icmp_ln306_fu_125_p2;
        icmp_ln309_reg_414 <= icmp_ln309_fu_139_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        empty_reg_418_pp0_iter2_reg <= empty_reg_418;
    end
end

always @ (*) begin
    if (((icmp_ln303_fu_111_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        bFeed_blk_n = bFeed_full_n;
    end else begin
        bFeed_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        bFeed_write_local = 1'b1;
    end else begin
        bFeed_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln309_reg_414 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        bMemory_blk_n = bMemory_empty_n;
    end else begin
        bMemory_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln309_reg_414 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        bMemory_read_local = 1'b1;
    end else begin
        bMemory_read_local = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln303_fu_119_p2 = (indvar_flatten_fu_70 + 61'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((icmp_ln309_reg_414 == 1'd1) & (bMemory_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = (bFeed_full_n == 1'b0);
end

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign ap_ready = ap_ready_sig;

assign bFeed_din = tmp_s_fu_356_p9;

assign bFeed_write = bFeed_write_local;

assign bMemory_read = bMemory_read_local;

assign empty_fu_145_p1 = select_ln302_1_fu_131_p3[0:0];

assign i_assign_fu_188_p3 = {{empty_reg_418_pp0_iter2_reg}, {8'd0}};

assign icmp_ln303_fu_111_p2 = ((indvar_flatten_fu_70 == bound) ? 1'b1 : 1'b0);

assign icmp_ln306_fu_125_p2 = ((j_2_fu_62 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln309_fu_139_p2 = ((select_ln302_1_fu_131_p3 == 2'd0) ? 1'b1 : 1'b0);

assign j_fu_149_p2 = (select_ln302_1_fu_131_p3 + 2'd1);

assign lshr_ln170_1_fu_220_p2 = p_0_0_06_fu_66 >> zext_ln170_1_fu_216_p1;

assign lshr_ln170_2_fu_241_p2 = p_0_0_06_fu_66 >> zext_ln170_2_fu_237_p1;

assign lshr_ln170_3_fu_262_p2 = p_0_0_06_fu_66 >> zext_ln170_3_fu_258_p1;

assign lshr_ln170_4_fu_283_p2 = p_0_0_06_fu_66 >> zext_ln170_4_fu_279_p1;

assign lshr_ln170_5_fu_304_p2 = p_0_0_06_fu_66 >> zext_ln170_5_fu_300_p1;

assign lshr_ln170_6_fu_325_p2 = p_0_0_06_fu_66 >> zext_ln170_6_fu_321_p1;

assign lshr_ln170_7_fu_346_p2 = p_0_0_06_fu_66 >> zext_ln170_7_fu_342_p1;

assign lshr_ln170_fu_199_p2 = p_0_0_06_fu_66 >> zext_ln170_fu_195_p1;

assign or_ln170_1_fu_230_p3 = {{empty_reg_418_pp0_iter2_reg}, {8'd64}};

assign or_ln170_2_fu_251_p3 = {{empty_reg_418_pp0_iter2_reg}, {8'd96}};

assign or_ln170_3_fu_272_p3 = {{empty_reg_418_pp0_iter2_reg}, {8'd128}};

assign or_ln170_4_fu_293_p3 = {{empty_reg_418_pp0_iter2_reg}, {8'd160}};

assign or_ln170_5_fu_314_p3 = {{empty_reg_418_pp0_iter2_reg}, {8'd192}};

assign or_ln170_6_fu_335_p3 = {{empty_reg_418_pp0_iter2_reg}, {8'd224}};

assign or_ln_fu_209_p3 = {{empty_reg_418_pp0_iter2_reg}, {8'd32}};

assign select_ln302_1_fu_131_p3 = ((icmp_ln306_fu_125_p2[0:0] == 1'b1) ? 2'd0 : j_2_fu_62);

assign select_ln302_fu_168_p3 = ((icmp_ln306_reg_409[0:0] == 1'b1) ? 512'd0 : p_0_0_06_fu_66);

assign tmp_s_fu_356_p9 = {{{{{{{{trunc_ln170_39_fu_352_p1}, {trunc_ln170_38_fu_331_p1}}, {trunc_ln170_37_fu_310_p1}}, {trunc_ln170_36_fu_289_p1}}, {trunc_ln170_35_fu_268_p1}}, {trunc_ln170_34_fu_247_p1}}, {trunc_ln170_33_fu_226_p1}}, {trunc_ln170_fu_205_p1}};

assign trunc_ln170_33_fu_226_p1 = lshr_ln170_1_fu_220_p2[31:0];

assign trunc_ln170_34_fu_247_p1 = lshr_ln170_2_fu_241_p2[31:0];

assign trunc_ln170_35_fu_268_p1 = lshr_ln170_3_fu_262_p2[31:0];

assign trunc_ln170_36_fu_289_p1 = lshr_ln170_4_fu_283_p2[31:0];

assign trunc_ln170_37_fu_310_p1 = lshr_ln170_5_fu_304_p2[31:0];

assign trunc_ln170_38_fu_331_p1 = lshr_ln170_6_fu_325_p2[31:0];

assign trunc_ln170_39_fu_352_p1 = lshr_ln170_7_fu_346_p2[31:0];

assign trunc_ln170_fu_205_p1 = lshr_ln170_fu_199_p2[31:0];

assign zext_ln170_1_fu_216_p1 = or_ln_fu_209_p3;

assign zext_ln170_2_fu_237_p1 = or_ln170_1_fu_230_p3;

assign zext_ln170_3_fu_258_p1 = or_ln170_2_fu_251_p3;

assign zext_ln170_4_fu_279_p1 = or_ln170_3_fu_272_p3;

assign zext_ln170_5_fu_300_p1 = or_ln170_4_fu_293_p3;

assign zext_ln170_6_fu_321_p1 = or_ln170_5_fu_314_p3;

assign zext_ln170_7_fu_342_p1 = or_ln170_6_fu_335_p3;

assign zext_ln170_fu_195_p1 = i_assign_fu_188_p3;

endmodule //MatrixMultiplicationKernel_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory