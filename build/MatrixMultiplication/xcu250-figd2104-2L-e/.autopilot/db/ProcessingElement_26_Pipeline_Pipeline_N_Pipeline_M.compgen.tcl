# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1399 \
    name cBuffer \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename cBuffer \
    op interface \
    ports { cBuffer_address0 { O 10 vector } cBuffer_ce0 { O 1 bit } cBuffer_we0 { O 1 bit } cBuffer_d0 { O 256 vector } cBuffer_address1 { O 10 vector } cBuffer_ce1 { O 1 bit } cBuffer_q1 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cBuffer'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1403 \
    name aBuffer \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename aBuffer \
    op interface \
    ports { aBuffer_address0 { O 5 vector } aBuffer_ce0 { O 1 bit } aBuffer_we0 { O 1 bit } aBuffer_d0 { O 32 vector } aBuffer_address1 { O 5 vector } aBuffer_ce1 { O 1 bit } aBuffer_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'aBuffer'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1396 \
    name bPipes_25 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bPipes_25 \
    op interface \
    ports { bPipes_25_dout { I 256 vector } bPipes_25_num_data_valid { I 3 vector } bPipes_25_fifo_cap { I 3 vector } bPipes_25_empty_n { I 1 bit } bPipes_25_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1397 \
    name bPipes_26 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bPipes_26 \
    op interface \
    ports { bPipes_26_din { O 256 vector } bPipes_26_num_data_valid { I 3 vector } bPipes_26_fifo_cap { I 3 vector } bPipes_26_full_n { I 1 bit } bPipes_26_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1398 \
    name m0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m0 \
    op interface \
    ports { m0 { I 23 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1400 \
    name cmp111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp111 \
    op interface \
    ports { cmp111 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1401 \
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
    id 1402 \
    name cond90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cond90 \
    op interface \
    ports { cond90 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1404 \
    name mul \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul \
    op interface \
    ports { mul { I 27 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1405 \
    name cond \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cond \
    op interface \
    ports { cond { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1406 \
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
    id 1407 \
    name brmerge282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_brmerge282 \
    op interface \
    ports { brmerge282 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1408 \
    name aPipes_25 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aPipes_25 \
    op interface \
    ports { aPipes_25_dout { I 32 vector } aPipes_25_num_data_valid { I 3 vector } aPipes_25_fifo_cap { I 3 vector } aPipes_25_empty_n { I 1 bit } aPipes_25_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1409 \
    name aPipes_26 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aPipes_26 \
    op interface \
    ports { aPipes_26_din { O 32 vector } aPipes_26_num_data_valid { I 3 vector } aPipes_26_fifo_cap { I 3 vector } aPipes_26_full_n { I 1 bit } aPipes_26_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


# flow_control definition:
set InstName MatrixMultiplicationKernel_flow_control_loop_pipe_sequential_init_U
set CompName MatrixMultiplicationKernel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix MatrixMultiplicationKernel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}

