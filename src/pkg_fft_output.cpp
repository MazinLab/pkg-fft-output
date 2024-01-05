#include "pkg_fft_output.hpp"


void pkg_fft_output(iq_t iq[N_LANES], scale_t scale, hls::stream<axisout_t> &output) {
#pragma HLS INTERFACE ap_vld port=iq
#pragma HLS INTERFACE ap_vld port=scale
#pragma HLS INTERFACE axis register forward port=output
#pragma HLS ARRAY_PARTITION variable=iq type=complete
#pragma HLS PIPELINE II=1
#pragma HLS INTERFACE ap_ctrl_none port=return

	static ap_uint<8> group=0;
	axisout_t out;
	for (unsigned int i=0;i<N_LANES;i++) {
		out.data.range(32*(i+1)-1, 32*i)=iq[i];
	}
	out.user=scale;
	out.last=group==255;
	output.write(out);
	group++;

}
