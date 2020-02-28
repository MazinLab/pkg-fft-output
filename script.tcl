open_project pkg-fft-output
set_top pkg_fft_output
add_files src/pkg_fft_output.cpp
add_files src/pkg_fft_output.hpp
add_files -tb src/tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xczu28dr-ffvg1517-2-e}
create_clock -period 550MHz -name default
config_export -description {SSRFFT Output Packing Block} -display_name "SSRFFT to AXIS" -format ip_catalog -library mkidgen3 -rtl verilog -vendor MazinLab -version 0.1
csim_design
csynth_design
cosim_design -tool xsim
export_design -flow impl -rtl verilog -format ip_catalog -description "SSRFFT Output Packing Block" -vendor "MazinLab" -library "mkidgen3" -version "0.1" -display_name "SSRFFT to AXIS"
