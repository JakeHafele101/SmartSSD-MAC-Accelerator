#include "Compute_HLS.h"

#define STRIDE 32
#define POINT_SIZE 800
#define NUM_POINTS 100

    void computePointHLS(float dataIn_data[800], float* dataOut_data, float layerWeight_data[800], float* layerBias_data) {

	float dataOut_Internal = *dataOut_data;

	for (int i = 0; i < 32*5*5; i++) { //dataInDepth = 32
		dataOut_Internal += dataIn_data[i] * layerWeight_data[i];
	}

	dataOut_Internal += *layerBias_data;

	//Store dataOut_data
	*dataOut_data = dataOut_Internal;

}
