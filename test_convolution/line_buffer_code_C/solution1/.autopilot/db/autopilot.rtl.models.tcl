set SynModuleInfo {
  {SRCNAME {convolution<double, double, double, double, 28, 28, 1, 16, 28, 28, 3, 3, 1, 1>_Pipeline_VITIS_LOOP_46_3} MODELNAME convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3 RTLNAME CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_VITIS_LOOP_46_3
    SUBMODULES {
      {MODELNAME CNN_flow_control_loop_pipe_sequential_init RTLNAME CNN_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME CNN_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {convolution<double, double, double, double, 28, 28, 1, 16, 28, 28, 3, 3, 1, 1>_Pipeline_Shift_win_right} MODELNAME convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right RTLNAME CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_Pipeline_Shift_win_right
    SUBMODULES {
      {MODELNAME CNN_dadd_64ns_64ns_64_4_full_dsp_1 RTLNAME CNN_dadd_64ns_64ns_64_4_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME CNN_dmul_64ns_64ns_64_4_max_dsp_1 RTLNAME CNN_dmul_64ns_64ns_64_4_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME CNN_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME CNN_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {convolution<double, double, double, double, 28, 28, 1, 16, 28, 28, 3, 3, 1, 1>} MODELNAME convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s RTLNAME CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s
    SUBMODULES {
      {MODELNAME CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_line_buffebkb RTLNAME CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_line_buffebkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg RTLNAME CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_bias_conv1eOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_kernel_confYi RTLNAME CNN_convolution_double_double_double_double_28_28_1_16_28_28_3_3_1_1_s_kernel_confYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3 MODELNAME CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3 RTLNAME CNN_CNN_Pipeline_VITIS_LOOP_118_1_VITIS_LOOP_119_2_VITIS_LOOP_120_3}
  {SRCNAME {convolution<double, double, double, double, 14, 14, 16, 8, 14, 14, 3, 3, 1, 1>} MODELNAME convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s RTLNAME CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s
    SUBMODULES {
      {MODELNAME CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffeg8j RTLNAME CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffeg8j BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi RTLNAME CNN_convolution_double_double_double_double_14_14_16_8_14_14_3_3_1_1_s_line_buffehbi BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME CNN MODELNAME CNN RTLNAME CNN IS_TOP 1
    SUBMODULES {
      {MODELNAME CNN_mul_32ns_32ns_126_1_1 RTLNAME CNN_mul_32ns_32ns_126_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
}
