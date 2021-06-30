#include "pkg_fft_output.hpp"
typedef struct {
	iq_t iq[N_LANES];
} iqin_t;

void pkg_fft_output(iq_t iq00, iq_t iq01, iq_t iq02, iq_t iq03, iq_t iq04, iq_t iq05, iq_t iq06, iq_t iq07,
					iq_t iq08, iq_t iq09, iq_t iq10, iq_t iq11, iq_t iq12, iq_t iq13, iq_t iq14, iq_t iq15,
					scale_t scale, hls::stream<axisout_t> &output) {
#pragma HLS INTERFACE ap_vld port=iq00
#pragma HLS INTERFACE ap_vld port=iq01
#pragma HLS INTERFACE ap_vld port=iq02
#pragma HLS INTERFACE ap_vld port=iq03
#pragma HLS INTERFACE ap_vld port=iq04
#pragma HLS INTERFACE ap_vld port=iq05
#pragma HLS INTERFACE ap_vld port=iq06
#pragma HLS INTERFACE ap_vld port=iq07
#pragma HLS INTERFACE ap_vld port=iq08
#pragma HLS INTERFACE ap_vld port=iq09
#pragma HLS INTERFACE ap_vld port=iq10
#pragma HLS INTERFACE ap_vld port=iq11
#pragma HLS INTERFACE ap_vld port=iq12
#pragma HLS INTERFACE ap_vld port=iq13
#pragma HLS INTERFACE ap_vld port=iq14
#pragma HLS INTERFACE ap_vld port=iq15
#pragma HLS INTERFACE ap_vld port=scale
#pragma HLS INTERFACE axis register forward port=output
#pragma HLS PIPELINE II=1
#pragma HLS INTERFACE ap_ctrl_none port=return

	static ap_uint<8> group=0;

	axisout_t out;
	int i;
	i=0;
	out.data.range(32*(i+1)-i, 32*i)=iq00;
	i=1;
	out.data.range(32*(i+1)-i, 32*i)=iq01;
	i=2;
	out.data.range(32*(i+1)-i, 32*i)=iq02;
	i=3;
	out.data.range(32*(i+1)-i, 32*i)=iq03;
	i=4;
	out.data.range(32*(i+1)-i, 32*i)=iq04;
	i=5;
	out.data.range(32*(i+1)-i, 32*i)=iq05;
	i=6;
	out.data.range(32*(i+1)-i, 32*i)=iq06;
	i=7;
	out.data.range(32*(i+1)-i, 32*i)=iq07;
	i=8;
	out.data.range(32*(i+1)-i, 32*i)=iq08;
	i=9;
	out.data.range(32*(i+1)-i, 32*i)=iq09;
	i=10;
	out.data.range(32*(i+1)-i, 32*i)=iq10;
	i=11;
	out.data.range(32*(i+1)-i, 32*i)=iq11;
	i=12;
	out.data.range(32*(i+1)-i, 32*i)=iq12;
	i=13;
	out.data.range(32*(i+1)-i, 32*i)=iq13;
	i=14;
	out.data.range(32*(i+1)-i, 32*i)=iq14;
	i=15;
	out.data.range(32*(i+1)-i, 32*i)=iq15;
	out.user=scale;
	out.last=group==255;
	output.write(out);
	group++;

}
