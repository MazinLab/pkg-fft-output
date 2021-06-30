#include "ap_int.h"
#include "ap_axi_sdata.h"
#define N_LANES 16
typedef unsigned int iq_t;
typedef unsigned short sample_t;

typedef ap_uint<12> scale_t;
typedef struct {
	iq_t data[N_LANES];
	unsigned short user;
	bool last;
} axisout_t;

void pkg_fft_output(iq_t iq[N_LANES], scale_t scale, axisout_t &output);
