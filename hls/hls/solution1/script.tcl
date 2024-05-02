############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls
set_top computePointHLS
add_files ../base/src/layers/Compute_HLS.cpp
add_files ../base/src/layers/Compute_HLS.h
open_solution "solution1" -flow_target vitis
set_part {xcku15p-ffva1156-2L-e}
create_clock -period 10 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
config_export -flow impl -format ip_catalog -rtl verilog -vivado_clock 10
source "./hls/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
