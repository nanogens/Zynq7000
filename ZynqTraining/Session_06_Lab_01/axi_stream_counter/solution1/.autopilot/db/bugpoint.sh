export PATH=C:/xilinx/Vivado/2018.3/msys64/usr/bin;C:/xilinx/Vivado/2018.3/msys64/mingw64/bin;C:/xilinx/Vivado/2018.3/bin;C:/xilinx/Vivado/2018.3/win64/bin;C:/xilinx/Vivado/2018.3/win64/tools/bin;C:/xilinx/Vivado/2018.3/bin;C:/xilinx/Vivado/2018.3/lib/win64.o;C:/xilinx/Vivado/2018.3/tps/win64/jre9.0.4/bin/server;C:/xilinx/Vivado/2018.3/tps/win64/jre9.0.4/bin;C:/xilinx/SDK/2018.3/bin;C:/xilinx/Vivado/2018.3/ids_lite/ISE/bin/nt64;C:/xilinx/Vivado/2018.3/ids_lite/ISE/lib/nt64;C:\xilinx\Vivado\2018.3\bin\..\msys64\mingw64\bin;C:\xilinx\Vivado\2018.3\bin\..\msys64\usr\bin;C:/xilinx/Vivado/2018.3/msys64/usr/bin;C:/xilinx/Vivado/2018.3/msys64/mingw64/bin;C:/xilinx/Vivado/2018.3/win64/bin;C:/xilinx/Vivado/2018.3/win64/tools/bin;C:\ProgramData\Anaconda3;C:\ProgramData\Anaconda3\Library\mingw-w64\bin;C:\ProgramData\Anaconda3\Library\usr\bin;C:\ProgramData\Anaconda3\Library\bin;C:\ProgramData\Anaconda3\Scripts;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\ProgramData\chocolatey\bin;C:\Program Files\dotnet\;C:\opencv\build\X64\vc14\bin;C:\Program Files\CMake\bin;C:\Program Files\Microsoft VS Code\bin;C:\OCVTemp\opencv-3.4.4\build\win-install\x64\vc15\lib;C:\Users\MT8825\AppData\Local\Microsoft\WindowsApps;C:\Users\MT8825\AppData\Local\GitHubDesktop\bin;C:/xilinx/Vivado/2018.3\tps\mingw\6.2.0\win64.o\nt\bin;C:/xilinx/Vivado/2018.3\tps\mingw\6.2.0\win64.o\nt\libexec\gcc\x86_64-w64-mingw32\6.2.0;C:/xilinx/Vivado/2018.3/win64/tools/fpo_v7_0;C:/xilinx/Vivado/2018.3/win64/tools/fft_v9_1;C:/xilinx/Vivado/2018.3/win64/tools/opencv;C:/xilinx/Vivado/2018.3/win64/tools/fir_v7_0;C:/xilinx/Vivado/2018.3/win64/tools/dds_v6_0;C:/xilinx/Vivado/2018.3/win64/lib/csim;C:/xilinx/Vivado/2018.3/win64/tools/fpo_v7_0;C:/xilinx/Vivado/2018.3/win64/tools/fft_v9_1;C:/xilinx/Vivado/2018.3/win64/tools/opencv;C:/xilinx/Vivado/2018.3/win64/tools/fir_v7_0;C:/xilinx/Vivado/2018.3/win64/tools/dds_v6_0;C:/xilinx/Vivado/2018.3/win64/lib/csim
export LD_LIBRARY_PATH=C:/xilinx/Vivado/2018.3/win64/tools/gdb_v7_2;C:/xilinx/Vivado/2018.3/win64/tools/graphviz/lib;C:/xilinx/Vivado/2018.3/win64/bin;C:/xilinx/Vivado/2018.3/win64/tools/gdb_v7_2;C:/xilinx/Vivado/2018.3/win64/tools/graphviz/lib;C:/xilinx/Vivado/2018.3/win64/bin;C:/xilinx/Vivado/2018.3/win64/tools/fpo_v7_0;C:/xilinx/Vivado/2018.3/win64/tools/fft_v9_1;C:/xilinx/Vivado/2018.3/win64/tools/opencv;C:/xilinx/Vivado/2018.3/win64/tools/fir_v7_0;C:/xilinx/Vivado/2018.3/win64/tools/dds_v6_0;C:/xilinx/Vivado/2018.3/win64/lib/csim;C:/xilinx/Vivado/2018.3/win64/tools/fpo_v7_0;C:/xilinx/Vivado/2018.3/win64/tools/fft_v9_1;C:/xilinx/Vivado/2018.3/win64/tools/opencv;C:/xilinx/Vivado/2018.3/win64/tools/fir_v7_0;C:/xilinx/Vivado/2018.3/win64/tools/dds_v6_0;C:/xilinx/Vivado/2018.3/win64/lib/csim
export HDI_APPROOT=C:/xilinx/Vivado/2018.3
export XILINX_OPENCL_CLANG=C:/xilinx/Vivado/2018.3/win64/tools/clang
export RDI_PLATFORM=win64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -instcombine -dce  -reset-lda  -loop-simplify -indvars -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce  -axi4-lower -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine -check-doubleptr  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce  -bitwidthmin  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg  -read-loop-dep  -interface-preproc -directive-preproc -interface-gen  -bram-byte-enable  -deadargelim -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise  -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -load-elim -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -dce -bitwidth -loop-bound -loop-dep -read-loop-dep -dce  -check-stream -norm-name -legalize  -validate-dataflow -inst-clarity  D:/Github/Zynq7000/ZynqTraining/Session_06_Lab_01/axi_stream_counter/solution1/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 
