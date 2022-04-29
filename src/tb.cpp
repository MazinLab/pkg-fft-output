#include "pkg_fft_output.hpp"
#include <iostream>
using namespace std;

int main(){
	iq_t iq[N_LANES];
	scale_t scale;
	hls::stream<axisout_t> out;
	bool fail=false;

	for (unsigned int i=0; i<100;i++) {
		cout<<"i="<<i<<"\n";
		for (unsigned int j=0;j<N_LANES;j++) {
			iq[j]=-1-i*N_LANES-j;
		}
		scale=i;
		pkg_fft_output(iq, scale, out);

		axisout_t output;
		output = out.read();
		for (int j=0;j<N_LANES;j++) {
			iq_t x;
			x=output.data.range((j+1)*32-1,j*32);
			cout<<" "<<j<<": "<<x<<" in="<<iq[j]<<"\n";
			if (x!=iq[j]){
				fail|=true;
				cout<<" data mismatch\n";
			}
		}
		fail|=output.user!=scale.to_ushort();
		fail|=output.last && (i%255)!=0;
	}

	return fail;

}
