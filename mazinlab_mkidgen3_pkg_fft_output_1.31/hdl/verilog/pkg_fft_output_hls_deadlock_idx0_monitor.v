`timescale 1 ns / 1 ps

module pkg_fft_output_hls_deadlock_idx0_monitor ( // for module pkg_fft_output_pkg_fft_output_inst
    input wire clock,
    input wire reset,
    input wire [0:0] axis_block_sigs,
    input wire [0:0] inst_idle_sigs,
    input wire [0:0] inst_block_sigs,
    output wire [0:0] axis_block_info,
    output wire block
);

// signal declare
reg [0:0] monitor_axis_block_info;
reg monitor_find_block;
wire pp_is_axis_block;

assign axis_block_info = (monitor_find_block == 1'b1) ? monitor_axis_block_info : 1'h0;
assign block = monitor_find_block;
assign pp_is_axis_block = 1'b0 | axis_block_sigs[0];

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (pp_is_axis_block == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[0:0] <= 1'h0;
    else if (axis_block_sigs[0])
        monitor_axis_block_info[0:0] <= ~(1'h1 << 0);
    else
        monitor_axis_block_info[0:0] <= 1'h0;
end

// instant sub module
endmodule
