#include "pkg_fft_output.hpp"
#include <iostream>
using namespace std;

int main(){
	iq_t iq[N_LANES];
	scale_t scale;
	axisout_t output;
	bool fail=false;

	for (unsigned int i=0; i<100;i++) {
		cout<<"i="<<i<<"\n";
		for (unsigned int j=0;j<N_LANES;j++) {
			iq[j]=i;
		}
		scale=i;
		pkg_fft_output(iq, scale, output);

		for (int j=0;j<N_LANES;j++) {
			cout<<(output.data[j]&0xffff)<<" in="<<iq[j]<<"\n";
			if (output.data[j]!=iq[j]){
				fail|=true;
				cout<<"data mismatch\n";
			}
		}
		fail|=output.user!=scale.to_ushort();
		fail|=output.last && (i%255)!=0;
	}

	return fail;

}
