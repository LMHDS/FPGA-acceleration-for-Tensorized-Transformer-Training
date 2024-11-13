# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler MatrixMultiplicationKernel_ProcessingElement_12_aBuffer_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler MatrixMultiplicationKernel_ProcessingElement_12_cBuffer_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 729 \
    name aPipes_11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aPipes_11 \
    op interface \
    ports { aPipes_11_dout { I 32 vector } aPipes_11_num_data_valid { I 3 vector } aPipes_11_fifo_cap { I 3 vector } aPipes_11_empty_n { I 1 bit } aPipes_11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 730 \
    name aPipes_12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_aPipes_12 \
    op interface \
    ports { aPipes_12_din { O 32 vector } aPipes_12_num_data_valid { I 3 vector } aPipes_12_fifo_cap { I 3 vector } aPipes_12_full_n { I 1 bit } aPipes_12_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name bPipes_11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bPipes_11 \
    op interface \
    ports { bPipes_11_dout { I 256 vector } bPipes_11_num_data_valid { I 3 vector } bPipes_11_fifo_cap { I 3 vector } bPipes_11_empty_n { I 1 bit } bPipes_11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 732 \
    name bPipes_12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bPipes_12 \
    op interface \
    ports { bPipes_12_din { O 256 vector } bPipes_12_num_data_valid { I 3 vector } bPipes_12_fifo_cap { I 3 vector } bPipes_12_full_n { I 1 bit } bPipes_12_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name cPipes_11 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cPipes_11 \
    op interface \
    ports { cPipes_11_din { O 256 vector } cPipes_11_num_data_valid { I 3 vector } cPipes_11_fifo_cap { I 3 vector } cPipes_11_full_n { I 1 bit } cPipes_11_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 734 \
    name cPipes_12 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cPipes_12 \
    op interface \
    ports { cPipes_12_dout { I 256 vector } cPipes_12_num_data_valid { I 3 vector } cPipes_12_fifo_cap { I 3 vector } cPipes_12_empty_n { I 1 bit } cPipes_12_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
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
    id 736 \
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
    id 737 \
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

