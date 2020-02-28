#include "pkg_fft_output.hpp"

void pkg_fft_output(iq_t iq[N_LANES], scale_t scale, axisout_t &output) {
#pragma HLS INTERFACE ap_vld port=iq
#pragma HLS INTERFACE ap_vld port=scale
#pragma HLS INTERFACE axis register forward port=output
#pragma HLS ARRAY_PARTITION variable=iq complete dim=1
#pragma HLS PIPELINE II=1
#pragma HLS INTERFACE ap_ctrl_none port=return

	static unsigned char group=0;

	for (unsigned int i=0; i<N_LANES;i++){
		output.data[i]=iq[i];
	}
	output.user=scale;
	output.last=group==255;
	group++;

}
