; ModuleID = '/home/edabk/cu_cai_2k1/CNN_VAE/test_convolution/line_buffer_code_C/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_CNN_ir(i32 %padding, i32 %width, i32 %hight, double* %image, double* %output_conv1, double* %output_pooling1, double* %output_conv2) local_unnamed_addr #0 {
entry:
  %image_copy = alloca double, align 512
  %output_conv1_copy = alloca double, align 512
  %output_pooling1_copy = alloca double, align 512
  %output_conv2_copy = alloca double, align 512
  call fastcc void @copy_in(double* %image, double* nonnull align 512 %image_copy, double* %output_conv1, double* nonnull align 512 %output_conv1_copy, double* %output_pooling1, double* nonnull align 512 %output_pooling1_copy, double* %output_conv2, double* nonnull align 512 %output_conv2_copy)
  call void @apatb_CNN_hw(i32 %padding, i32 %width, i32 %hight, double* %image_copy, double* %output_conv1_copy, double* %output_pooling1_copy, double* %output_conv2_copy)
  call fastcc void @copy_out(double* %image, double* nonnull align 512 %image_copy, double* %output_conv1, double* nonnull align 512 %output_conv1_copy, double* %output_pooling1, double* nonnull align 512 %output_pooling1_copy, double* %output_conv2, double* nonnull align 512 %output_conv2_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(double* readonly, double* noalias align 512, double* readonly, double* noalias align 512, double* readonly, double* noalias align 512, double* readonly, double* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0f64(double* align 512 %1, double* %0)
  call fastcc void @onebyonecpy_hls.p0f64(double* align 512 %3, double* %2)
  call fastcc void @onebyonecpy_hls.p0f64(double* align 512 %5, double* %4)
  call fastcc void @onebyonecpy_hls.p0f64(double* align 512 %7, double* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0f64(double* noalias align 512, double* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq double* %0, null
  %3 = icmp eq double* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load double, double* %1, align 8
  store double %5, double* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(double*, double* noalias readonly align 512, double*, double* noalias readonly align 512, double*, double* noalias readonly align 512, double*, double* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0f64(double* %0, double* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0f64(double* %2, double* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0f64(double* %4, double* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0f64(double* %6, double* align 512 %7)
  ret void
}

declare void @apatb_CNN_hw(i32, i32, i32, double*, double*, double*, double*)

define void @CNN_hw_stub_wrapper(i32, i32, i32, double*, double*, double*, double*) #4 {
entry:
  call void @copy_out(double* null, double* %3, double* null, double* %4, double* null, double* %5, double* null, double* %6)
  call void @CNN_hw_stub(i32 %0, i32 %1, i32 %2, double* %3, double* %4, double* %5, double* %6)
  call void @copy_in(double* null, double* %3, double* null, double* %4, double* null, double* %5, double* null, double* %6)
  ret void
}

declare void @CNN_hw_stub(i32, i32, i32, double*, double*, double*, double*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
