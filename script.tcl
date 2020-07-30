# Create project
open_project -reset pkg-fft-output

# Add sources and test bench
add_files src/pkg_fft_output.cpp
add_files src/pkg_fft_output.hpp
add_files -tb src/tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"

# Specity the top-level function for synethsis
set_top pkg_fft_output

# Create soluton1
open_solution -reset "solution1"

# Specify Xilinx part, clock period, and export style
set_part {xczu28dr-ffvg1517-2-e}
create_clock -period 550MHz -name default
config_export -description {SSRFFT Output Packing Block} -display_name "SSRFFT to AXIS" -format ip_catalog -library mkidgen3 -rtl verilog -vendor MazinLab -version 0.1

# Simulate the C Code
csim_design

# Synethsize, verify the RTL, and produce IP
csynth_design
cosim_design -tool xsim
export_design
exit
