export PATH=/tools/Xilinx/Vivado/2019.2/tps/lnx64/binutils-2.26/bin:/tools/Xilinx/Vivado/2019.2/tps/lnx64/gcc-6.2.0/bin:/tools/Xilinxs/Vitis/2019.2/tps/win64/msys64/usr/bin:/tools/Xilinxs/Vitis/2019.2/tps/win64/msys64/mingw64/bin:/tools/Xilinxs/Vitis/2019.2/bin:/tools/Xilinxs/Vitis/2019.2/lnx64/bin:/tools/Xilinxs/Vitis/2019.2/lnx64/tools/bin:/tools/Xilinx/Vivado/2019.2/gnu/microblaze/lin/bin:/tools/Xilinxs/Vitis/2019.2/bin:/tools/Xilinxs/Vitis/2019.2/tps/lnx64/jre9.0.4/bin:/home/snn/Documents/duong_openpiton/openpiton/piton/tools/bin:/tools/Xilinx/Vivado/2019.2/bin:/tools/Xilinx/DocNav:/home/snn/Downloads/riscv64-unknown-elf-gcc-8.3.0-2020.04.1-x86_64-linux-ubuntu14/bin:/home/snn/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export LD_LIBRARY_PATH=/tools/Xilinxs/Vitis/2019.2/lnx64/tools/gdb_v7_2:/tools/Xilinxs/Vitis/2019.2/tps/lnx64/dot-2.28/lib:/tools/Xilinxs/Vitis/2019.2/lnx64/bin:/tools/Xilinxs/Vitis/2019.2/lib/lnx64.o/Ubuntu:/tools/Xilinxs/Vitis/2019.2/lib/lnx64.o:/tools/Xilinxs/Vitis/2019.2/tps/lnx64/jre9.0.4/lib/:/tools/Xilinxs/Vitis/2019.2/tps/lnx64/jre9.0.4/lib//server:/tools/Xilinxs/Vitis/2019.2/bin/../lnx64/tools/dot/lib:/tools/Xilinxs/Vitis/2019.2/lnx64/tools/fpo_v7_0:/tools/Xilinxs/Vitis/2019.2/lnx64/tools/fft_v9_1:/tools/Xilinxs/Vitis/2019.2/lnx64/tools/fir_v7_0:/tools/Xilinxs/Vitis/2019.2/lnx64/tools/dds_v6_0:/tools/Xilinxs/Vitis/2019.2/lnx64/lib/csim:/tools/Xilinxs/Vitis/2019.2/lnx64/tools/fpo_v6_1:/tools/Xilinxs/Vitis/2019.2/lnx64/tools/fft_v9_1:/tools/Xilinxs/Vitis/2019.2/lnx64/tools/fir_v7_0:/tools/Xilinxs/Vitis/2019.2/lnx64/tools/dds_v6_0:/usr/lib/x86_64-linux-gnu:/tools/Xilinxs/Vitis/2019.2/lnx64/csim
export HDI_APPROOT=/tools/Xilinxs/Vitis/2019.2
export XILINX_OPENCL_CLANG=/tools/Xilinxs/Vitis/2019.2/lnx64/tools/clang
export RDI_PLATFORM=lnx64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -dce  -reset-lda  -loop-simplify -indvars -aggr-aa -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce   -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine -check-doubleptr  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce  -bitwidthmin2 -bitwidthmin2  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg  -read-loop-dep  -interface-preproc -directive-preproc -interface-gen  -bram-byte-enable  -deadargelim -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise -complex-op-raise -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -load-elim -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -dce -loop-bound -loop-dep -read-loop-dep -dce  -check-stream -norm-name -legalize  -validate-dataflow -inst-clarity -bitwidth -dump-loop-dep-to-ir -check-all-ssdm  /home/snn/CNN_VAE/CNN_VAE/test_serial/line_buffer_code_C/solution1/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 
