# This script segment is generated automatically by AutoPilot

set name MatrixMultiplicationKernel_mul_24ns_37ns_60_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name MatrixMultiplicationKernel_mul_24ns_60ns_83_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name gmem0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem0 \
    op interface \
    ports { m_axi_gmem0_AWVALID { O 1 bit } m_axi_gmem0_AWREADY { I 1 bit } m_axi_gmem0_AWADDR { O 64 vector } m_axi_gmem0_AWID { O 1 vector } m_axi_gmem0_AWLEN { O 32 vector } m_axi_gmem0_AWSIZE { O 3 vector } m_axi_gmem0_AWBURST { O 2 vector } m_axi_gmem0_AWLOCK { O 2 vector } m_axi_gmem0_AWCACHE { O 4 vector } m_axi_gmem0_AWPROT { O 3 vector } m_axi_gmem0_AWQOS { O 4 vector } m_axi_gmem0_AWREGION { O 4 vector } m_axi_gmem0_AWUSER { O 1 vector } m_axi_gmem0_WVALID { O 1 bit } m_axi_gmem0_WREADY { I 1 bit } m_axi_gmem0_WDATA { O 512 vector } m_axi_gmem0_WSTRB { O 64 vector } m_axi_gmem0_WLAST { O 1 bit } m_axi_gmem0_WID { O 1 vector } m_axi_gmem0_WUSER { O 1 vector } m_axi_gmem0_ARVALID { O 1 bit } m_axi_gmem0_ARREADY { I 1 bit } m_axi_gmem0_ARADDR { O 64 vector } m_axi_gmem0_ARID { O 1 vector } m_axi_gmem0_ARLEN { O 32 vector } m_axi_gmem0_ARSIZE { O 3 vector } m_axi_gmem0_ARBURST { O 2 vector } m_axi_gmem0_ARLOCK { O 2 vector } m_axi_gmem0_ARCACHE { O 4 vector } m_axi_gmem0_ARPROT { O 3 vector } m_axi_gmem0_ARQOS { O 4 vector } m_axi_gmem0_ARREGION { O 4 vector } m_axi_gmem0_ARUSER { O 1 vector } m_axi_gmem0_RVALID { I 1 bit } m_axi_gmem0_RREADY { O 1 bit } m_axi_gmem0_RDATA { I 512 vector } m_axi_gmem0_RLAST { I 1 bit } m_axi_gmem0_RID { I 1 vector } m_axi_gmem0_RFIFONUM { I 9 vector } m_axi_gmem0_RUSER { I 1 vector } m_axi_gmem0_RRESP { I 2 vector } m_axi_gmem0_BVALID { I 1 bit } m_axi_gmem0_BREADY { O 1 bit } m_axi_gmem0_BRESP { I 2 vector } m_axi_gmem0_BID { I 1 vector } m_axi_gmem0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name a \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a \
    op interface \
    ports { a { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name aSplit_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_0 \
    op interface \
    ports { aSplit_0_din { O 32 vector } aSplit_0_num_data_valid { I 11 vector } aSplit_0_fifo_cap { I 11 vector } aSplit_0_full_n { I 1 bit } aSplit_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name aSplit_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_1 \
    op interface \
    ports { aSplit_1_din { O 32 vector } aSplit_1_num_data_valid { I 11 vector } aSplit_1_fifo_cap { I 11 vector } aSplit_1_full_n { I 1 bit } aSplit_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name aSplit_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_2 \
    op interface \
    ports { aSplit_2_din { O 32 vector } aSplit_2_num_data_valid { I 11 vector } aSplit_2_fifo_cap { I 11 vector } aSplit_2_full_n { I 1 bit } aSplit_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name aSplit_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_3 \
    op interface \
    ports { aSplit_3_din { O 32 vector } aSplit_3_num_data_valid { I 11 vector } aSplit_3_fifo_cap { I 11 vector } aSplit_3_full_n { I 1 bit } aSplit_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name aSplit_4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_4 \
    op interface \
    ports { aSplit_4_din { O 32 vector } aSplit_4_num_data_valid { I 11 vector } aSplit_4_fifo_cap { I 11 vector } aSplit_4_full_n { I 1 bit } aSplit_4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name aSplit_5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_5 \
    op interface \
    ports { aSplit_5_din { O 32 vector } aSplit_5_num_data_valid { I 11 vector } aSplit_5_fifo_cap { I 11 vector } aSplit_5_full_n { I 1 bit } aSplit_5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name aSplit_6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_6 \
    op interface \
    ports { aSplit_6_din { O 32 vector } aSplit_6_num_data_valid { I 11 vector } aSplit_6_fifo_cap { I 11 vector } aSplit_6_full_n { I 1 bit } aSplit_6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name aSplit_7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_7 \
    op interface \
    ports { aSplit_7_din { O 32 vector } aSplit_7_num_data_valid { I 11 vector } aSplit_7_fifo_cap { I 11 vector } aSplit_7_full_n { I 1 bit } aSplit_7_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name aSplit_8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_8 \
    op interface \
    ports { aSplit_8_din { O 32 vector } aSplit_8_num_data_valid { I 11 vector } aSplit_8_fifo_cap { I 11 vector } aSplit_8_full_n { I 1 bit } aSplit_8_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name aSplit_9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_9 \
    op interface \
    ports { aSplit_9_din { O 32 vector } aSplit_9_num_data_valid { I 11 vector } aSplit_9_fifo_cap { I 11 vector } aSplit_9_full_n { I 1 bit } aSplit_9_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name aSplit_10 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_10 \
    op interface \
    ports { aSplit_10_din { O 32 vector } aSplit_10_num_data_valid { I 11 vector } aSplit_10_fifo_cap { I 11 vector } aSplit_10_full_n { I 1 bit } aSplit_10_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name aSplit_11 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_11 \
    op interface \
    ports { aSplit_11_din { O 32 vector } aSplit_11_num_data_valid { I 11 vector } aSplit_11_fifo_cap { I 11 vector } aSplit_11_full_n { I 1 bit } aSplit_11_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name aSplit_12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_12 \
    op interface \
    ports { aSplit_12_din { O 32 vector } aSplit_12_num_data_valid { I 11 vector } aSplit_12_fifo_cap { I 11 vector } aSplit_12_full_n { I 1 bit } aSplit_12_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name aSplit_13 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_13 \
    op interface \
    ports { aSplit_13_din { O 32 vector } aSplit_13_num_data_valid { I 11 vector } aSplit_13_fifo_cap { I 11 vector } aSplit_13_full_n { I 1 bit } aSplit_13_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name aSplit_14 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_14 \
    op interface \
    ports { aSplit_14_din { O 32 vector } aSplit_14_num_data_valid { I 11 vector } aSplit_14_fifo_cap { I 11 vector } aSplit_14_full_n { I 1 bit } aSplit_14_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name aSplit_15 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aSplit_15 \
    op interface \
    ports { aSplit_15_din { O 32 vector } aSplit_15_num_data_valid { I 11 vector } aSplit_15_fifo_cap { I 11 vector } aSplit_15_full_n { I 1 bit } aSplit_15_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name size_n \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size_n \
    op interface \
    ports { size_n { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name size_k \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size_k \
    op interface \
    ports { size_k { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name size_m \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size_m \
    op interface \
    ports { size_m { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name size_n_c5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_size_n_c5 \
    op interface \
    ports { size_n_c5_din { O 32 vector } size_n_c5_num_data_valid { I 3 vector } size_n_c5_fifo_cap { I 3 vector } size_n_c5_full_n { I 1 bit } size_n_c5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name size_k_c8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_size_k_c8 \
    op interface \
    ports { size_k_c8_din { O 32 vector } size_k_c8_num_data_valid { I 3 vector } size_k_c8_fifo_cap { I 3 vector } size_k_c8_full_n { I 1 bit } size_k_c8_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name size_m_c13 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_size_m_c13 \
    op interface \
    ports { size_m_c13_din { O 32 vector } size_m_c13_num_data_valid { I 3 vector } size_m_c13_fifo_cap { I 3 vector } size_m_c13_full_n { I 1 bit } size_m_c13_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}

