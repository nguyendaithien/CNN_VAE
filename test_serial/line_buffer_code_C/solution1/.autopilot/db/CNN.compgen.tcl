# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name padding \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_padding \
    op interface \
    ports { padding { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name width \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_width \
    op interface \
    ports { width { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name hight \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hight \
    op interface \
    ports { hight { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name image_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_image_r \
    op interface \
    ports { image_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name output_conv1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_conv1 \
    op interface \
    ports { output_conv1_i { I 64 vector } output_conv1_o { O 64 vector } output_conv1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name output_pooling1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_pooling1 \
    op interface \
    ports { output_pooling1_i { I 64 vector } output_pooling1_o { O 64 vector } output_pooling1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name output_conv2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_conv2 \
    op interface \
    ports { output_conv2_i { I 64 vector } output_conv2_o { O 64 vector } output_conv2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name output_pooling2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_pooling2 \
    op interface \
    ports { output_pooling2_i { I 64 vector } output_pooling2_o { O 64 vector } output_pooling2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name output_conv3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_conv3 \
    op interface \
    ports { output_conv3_i { I 64 vector } output_conv3_o { O 64 vector } output_conv3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name output_pooling3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_pooling3 \
    op interface \
    ports { output_pooling3_i { I 64 vector } output_pooling3_o { O 64 vector } output_pooling3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name output_conv4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_conv4 \
    op interface \
    ports { output_conv4_i { I 64 vector } output_conv4_o { O 64 vector } output_conv4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name output_upsampling1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_upsampling1 \
    op interface \
    ports { output_upsampling1_i { I 64 vector } output_upsampling1_o { O 64 vector } output_upsampling1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name output_conv5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_conv5 \
    op interface \
    ports { output_conv5_i { I 64 vector } output_conv5_o { O 64 vector } output_conv5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name output_upsampling2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_upsampling2 \
    op interface \
    ports { output_upsampling2_i { I 64 vector } output_upsampling2_o { O 64 vector } output_upsampling2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name output_conv6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_conv6 \
    op interface \
    ports { output_conv6_i { I 64 vector } output_conv6_o { O 64 vector } output_conv6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name output_upsampling3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_output_upsampling3 \
    op interface \
    ports { output_upsampling3_i { I 64 vector } output_upsampling3_o { O 64 vector } output_upsampling3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name output_conv7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_conv7 \
    op interface \
    ports { output_conv7 { O 64 vector } output_conv7_ap_vld { O 1 bit } } \
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


