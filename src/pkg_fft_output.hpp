#include "ap_int.h"
#include "ap_axi_sdata.h"

#define N_LANES 16
typedef unsigned int iq_t;
typedef ap_uint<12> scale_t;
typedef ap_axiu<512,16,0,0> axisout_t;

void pkg_fft_output(iq_t iq[N_LANES], scale_t scale, hls::stream<axisout_t> &output);
