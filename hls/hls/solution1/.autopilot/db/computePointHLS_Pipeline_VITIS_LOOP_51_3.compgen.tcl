# This script segment is generated automatically by AutoPilot

set name computePointHLS_fadd_32ns_32ns_32_4_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name computePointHLS_fmul_32ns_32ns_32_3_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 2 ALLOW_PRAGMA 1
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
    id 25 \
    name add25_31_lcssa104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_31_lcssa104 \
    op interface \
    ports { add25_31_lcssa104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name add25_30_lcssa102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_30_lcssa102 \
    op interface \
    ports { add25_30_lcssa102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name add25_29_lcssa100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_29_lcssa100 \
    op interface \
    ports { add25_29_lcssa100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name add25_28_lcssa98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_28_lcssa98 \
    op interface \
    ports { add25_28_lcssa98 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name add25_27_lcssa96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_27_lcssa96 \
    op interface \
    ports { add25_27_lcssa96 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name add25_26_lcssa94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_26_lcssa94 \
    op interface \
    ports { add25_26_lcssa94 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name add25_25_lcssa92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_25_lcssa92 \
    op interface \
    ports { add25_25_lcssa92 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name add25_24_lcssa90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_24_lcssa90 \
    op interface \
    ports { add25_24_lcssa90 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name add25_23_lcssa88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_23_lcssa88 \
    op interface \
    ports { add25_23_lcssa88 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name add25_22_lcssa86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_22_lcssa86 \
    op interface \
    ports { add25_22_lcssa86 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name add25_21_lcssa84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_21_lcssa84 \
    op interface \
    ports { add25_21_lcssa84 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name add25_20_lcssa82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_20_lcssa82 \
    op interface \
    ports { add25_20_lcssa82 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name add25_19_lcssa80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_19_lcssa80 \
    op interface \
    ports { add25_19_lcssa80 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name add25_18_lcssa78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_18_lcssa78 \
    op interface \
    ports { add25_18_lcssa78 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name add25_17_lcssa76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_17_lcssa76 \
    op interface \
    ports { add25_17_lcssa76 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name add25_16_lcssa74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_16_lcssa74 \
    op interface \
    ports { add25_16_lcssa74 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name add25_15_lcssa72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_15_lcssa72 \
    op interface \
    ports { add25_15_lcssa72 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name add25_14_lcssa70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_14_lcssa70 \
    op interface \
    ports { add25_14_lcssa70 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name add25_13_lcssa68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_13_lcssa68 \
    op interface \
    ports { add25_13_lcssa68 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name add25_12_lcssa66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_12_lcssa66 \
    op interface \
    ports { add25_12_lcssa66 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name add25_11_lcssa64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_11_lcssa64 \
    op interface \
    ports { add25_11_lcssa64 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name add25_10_lcssa62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_10_lcssa62 \
    op interface \
    ports { add25_10_lcssa62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name add25_9_lcssa60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_9_lcssa60 \
    op interface \
    ports { add25_9_lcssa60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name add25_8_lcssa58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_8_lcssa58 \
    op interface \
    ports { add25_8_lcssa58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name add25_7_lcssa56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_7_lcssa56 \
    op interface \
    ports { add25_7_lcssa56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name add25_6_lcssa54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_6_lcssa54 \
    op interface \
    ports { add25_6_lcssa54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name add25_5_lcssa52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_5_lcssa52 \
    op interface \
    ports { add25_5_lcssa52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name add25_4_lcssa50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_4_lcssa50 \
    op interface \
    ports { add25_4_lcssa50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name add25_3_lcssa48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_3_lcssa48 \
    op interface \
    ports { add25_3_lcssa48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name add25_2_lcssa46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_2_lcssa46 \
    op interface \
    ports { add25_2_lcssa46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name add25_1_lcssa44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_1_lcssa44 \
    op interface \
    ports { add25_1_lcssa44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name add25_lcssa42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_lcssa42 \
    op interface \
    ports { add25_lcssa42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name gmem1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem1 \
    op interface \
    ports { m_axi_gmem1_AWVALID { O 1 bit } m_axi_gmem1_AWREADY { I 1 bit } m_axi_gmem1_AWADDR { O 64 vector } m_axi_gmem1_AWID { O 1 vector } m_axi_gmem1_AWLEN { O 32 vector } m_axi_gmem1_AWSIZE { O 3 vector } m_axi_gmem1_AWBURST { O 2 vector } m_axi_gmem1_AWLOCK { O 2 vector } m_axi_gmem1_AWCACHE { O 4 vector } m_axi_gmem1_AWPROT { O 3 vector } m_axi_gmem1_AWQOS { O 4 vector } m_axi_gmem1_AWREGION { O 4 vector } m_axi_gmem1_AWUSER { O 1 vector } m_axi_gmem1_WVALID { O 1 bit } m_axi_gmem1_WREADY { I 1 bit } m_axi_gmem1_WDATA { O 512 vector } m_axi_gmem1_WSTRB { O 64 vector } m_axi_gmem1_WLAST { O 1 bit } m_axi_gmem1_WID { O 1 vector } m_axi_gmem1_WUSER { O 1 vector } m_axi_gmem1_ARVALID { O 1 bit } m_axi_gmem1_ARREADY { I 1 bit } m_axi_gmem1_ARADDR { O 64 vector } m_axi_gmem1_ARID { O 1 vector } m_axi_gmem1_ARLEN { O 32 vector } m_axi_gmem1_ARSIZE { O 3 vector } m_axi_gmem1_ARBURST { O 2 vector } m_axi_gmem1_ARLOCK { O 2 vector } m_axi_gmem1_ARCACHE { O 4 vector } m_axi_gmem1_ARPROT { O 3 vector } m_axi_gmem1_ARQOS { O 4 vector } m_axi_gmem1_ARREGION { O 4 vector } m_axi_gmem1_ARUSER { O 1 vector } m_axi_gmem1_RVALID { I 1 bit } m_axi_gmem1_RREADY { O 1 bit } m_axi_gmem1_RDATA { I 512 vector } m_axi_gmem1_RLAST { I 1 bit } m_axi_gmem1_RID { I 1 vector } m_axi_gmem1_RFIFONUM { I 9 vector } m_axi_gmem1_RUSER { I 1 vector } m_axi_gmem1_RRESP { I 2 vector } m_axi_gmem1_BVALID { I 1 bit } m_axi_gmem1_BREADY { O 1 bit } m_axi_gmem1_BRESP { I 2 vector } m_axi_gmem1_BID { I 1 vector } m_axi_gmem1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
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
    id 59 \
    name sext_ln49_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln49_1 \
    op interface \
    ports { sext_ln49_1 { I 58 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name sext_ln49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln49 \
    op interface \
    ports { sext_ln49 { I 58 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name add25_3140_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_3140_out \
    op interface \
    ports { add25_3140_out { O 32 vector } add25_3140_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name add25_3039_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_3039_out \
    op interface \
    ports { add25_3039_out { O 32 vector } add25_3039_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name add25_2938_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_2938_out \
    op interface \
    ports { add25_2938_out { O 32 vector } add25_2938_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name add25_2837_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_2837_out \
    op interface \
    ports { add25_2837_out { O 32 vector } add25_2837_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name add25_2736_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_2736_out \
    op interface \
    ports { add25_2736_out { O 32 vector } add25_2736_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name add25_2635_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_2635_out \
    op interface \
    ports { add25_2635_out { O 32 vector } add25_2635_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name add25_2534_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_2534_out \
    op interface \
    ports { add25_2534_out { O 32 vector } add25_2534_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name add25_2433_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_2433_out \
    op interface \
    ports { add25_2433_out { O 32 vector } add25_2433_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name add25_2332_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_2332_out \
    op interface \
    ports { add25_2332_out { O 32 vector } add25_2332_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name add25_2231_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_2231_out \
    op interface \
    ports { add25_2231_out { O 32 vector } add25_2231_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name add25_2130_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_2130_out \
    op interface \
    ports { add25_2130_out { O 32 vector } add25_2130_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name add25_2029_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_2029_out \
    op interface \
    ports { add25_2029_out { O 32 vector } add25_2029_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name add25_1928_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_1928_out \
    op interface \
    ports { add25_1928_out { O 32 vector } add25_1928_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name add25_1827_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_1827_out \
    op interface \
    ports { add25_1827_out { O 32 vector } add25_1827_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name add25_1726_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_1726_out \
    op interface \
    ports { add25_1726_out { O 32 vector } add25_1726_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name add25_1625_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_1625_out \
    op interface \
    ports { add25_1625_out { O 32 vector } add25_1625_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name add25_1524_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_1524_out \
    op interface \
    ports { add25_1524_out { O 32 vector } add25_1524_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name add25_1423_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_1423_out \
    op interface \
    ports { add25_1423_out { O 32 vector } add25_1423_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name add25_1322_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_1322_out \
    op interface \
    ports { add25_1322_out { O 32 vector } add25_1322_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name add25_1221_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_1221_out \
    op interface \
    ports { add25_1221_out { O 32 vector } add25_1221_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name add25_1120_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_1120_out \
    op interface \
    ports { add25_1120_out { O 32 vector } add25_1120_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name add25_1019_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_1019_out \
    op interface \
    ports { add25_1019_out { O 32 vector } add25_1019_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name add25_918_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_918_out \
    op interface \
    ports { add25_918_out { O 32 vector } add25_918_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name add25_817_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_817_out \
    op interface \
    ports { add25_817_out { O 32 vector } add25_817_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name add25_716_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_716_out \
    op interface \
    ports { add25_716_out { O 32 vector } add25_716_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name add25_615_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_615_out \
    op interface \
    ports { add25_615_out { O 32 vector } add25_615_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name add25_514_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_514_out \
    op interface \
    ports { add25_514_out { O 32 vector } add25_514_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name add25_413_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_413_out \
    op interface \
    ports { add25_413_out { O 32 vector } add25_413_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name add25_312_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_312_out \
    op interface \
    ports { add25_312_out { O 32 vector } add25_312_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name add25_211_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_211_out \
    op interface \
    ports { add25_211_out { O 32 vector } add25_211_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name add25_110_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add25_110_out \
    op interface \
    ports { add25_110_out { O 32 vector } add25_110_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name add256_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add256_out \
    op interface \
    ports { add256_out { O 32 vector } add256_out_ap_vld { O 1 bit } } \
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
set InstName computePointHLS_flow_control_loop_pipe_sequential_init_U
set CompName computePointHLS_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix computePointHLS_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


