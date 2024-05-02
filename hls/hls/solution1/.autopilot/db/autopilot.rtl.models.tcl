set SynModuleInfo {
  {SRCNAME computePointHLS_Pipeline_VITIS_LOOP_51_3 MODELNAME computePointHLS_Pipeline_VITIS_LOOP_51_3 RTLNAME computePointHLS_computePointHLS_Pipeline_VITIS_LOOP_51_3
    SUBMODULES {
      {MODELNAME computePointHLS_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME computePointHLS_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME computePointHLS_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME computePointHLS_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME computePointHLS_flow_control_loop_pipe_sequential_init RTLNAME computePointHLS_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME computePointHLS_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME computePointHLS MODELNAME computePointHLS RTLNAME computePointHLS IS_TOP 1
    SUBMODULES {
      {MODELNAME computePointHLS_gmem0_m_axi RTLNAME computePointHLS_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME computePointHLS_gmem1_m_axi RTLNAME computePointHLS_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME computePointHLS_control_s_axi RTLNAME computePointHLS_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
