
extern "C" {

#define STRIDE 32
#define POINT_SIZE 800
#define NUM_POINTS 1024

//	//Original Code
//	void computePointHLS(float dataIn[800], float* dataOut_init, float layerWeight[800], float* layerBias, float* dataOut_final) {
//	#pragma HLS interface mode=m_axi      port=dataIn
//	#pragma HLS interface mode=m_axi      port=dataOut_init
//	#pragma HLS interface mode=m_axi      port=layerWeight
//	#pragma HLS interface mode=m_axi      port=layerBias
//	#pragma HLS interface mode=m_axi      port=dataOut_final
//
////    	float dataOut_Internal = dataOut_init[0];
////
////		//Compute
////        for (int i = 0; i < 32*5*5; i++) { //dataInDepth = 32
////        	dataOut_Internal += dataIn[i] * layerWeight[i];
////        }
////
////        dataOut_Internal += layerBias[0];
////
////    	//Store dataOut_data
////        dataOut_final[0] = dataOut_Internal;
//
//
//
//	//New Attempt
//
//	float dataOut_Internal = dataOut_init[0];
//
//	float temp_add[STRIDE];
//
//	for(int i = 0; i < STRIDE; i++){
//		temp_add[i] = 0;
//	}
//
//	//Compute
//	for (int i = 0; i < 800; i += STRIDE) {
//		#pragma HLS pipeline
//
//		for(int j=0; j<STRIDE; j++){
//			temp_add[j] += dataIn[i+j] * layerWeight[i+j];
//		}
//	}
//
//	for(int i=1; i<STRIDE; i++){
//	#pragma HLS unroll
//		temp_add[0] += temp_add[i];
//	}
//
//	dataOut_Internal += temp_add[0];
//
//	dataOut_Internal += layerBias[0];
//
//	//Store dataOut_data
//	dataOut_final[0] = dataOut_Internal;
//
//}

//	//Reduced inputs
//	void computePointHLS(float dataIn[800], float layerWeight[800], float* dataOut_final) {
//	#pragma HLS interface mode=m_axi      port=dataIn         bundle=gmem0
//	#pragma HLS interface mode=m_axi      port=layerWeight    bundle=gmem1
//	#pragma HLS interface mode=m_axi      port=dataOut_final  bundle=gmem0
//
//	float temp_add[STRIDE];
//
//	for(int i = 0; i < STRIDE; i++){
//		temp_add[i] = 0;
//	}
//
//	//Compute
//	for (int i = 0; i < 800; i += STRIDE) {
//		#pragma HLS pipeline
//
//		for(int j=0; j<STRIDE; j++){
//			temp_add[j] += dataIn[i+j] * layerWeight[i+j];
//		}
//	}
//
//	for(int i=1; i<STRIDE; i++){
//	#pragma HLS unroll
//		temp_add[0] += temp_add[i];
//	}
//
//	//Store dataOut_data
//	dataOut_final[0] = temp_add[0];
//
//
//	}

	//More points per kernel call, 800 iterations per point, 100 points
	void computePointHLS(float* dataIn, float* layerWeight, float* dataOut_final) {
	#pragma HLS interface mode=m_axi      port=dataIn         bundle=gmem0
	#pragma HLS interface mode=m_axi      port=layerWeight    bundle=gmem1
	#pragma HLS interface mode=m_axi      port=dataOut_final  bundle=gmem0
	float temp_add[STRIDE];

	for(int point = 0; point < NUM_POINTS; point++){

		for(int i = 0; i < STRIDE; i++){
				temp_add[i] = 0;
		}

		//Compute
		for (int i = 0; i < POINT_SIZE; i += STRIDE) {
			#pragma HLS pipeline

			for(int j=0; j<STRIDE; j++){
				temp_add[j] += dataIn[POINT_SIZE*point + i+j] * layerWeight[POINT_SIZE*point + i+j];
			}
		}

		for(int i=1; i<STRIDE; i++){
		#pragma HLS unroll
			temp_add[0] += temp_add[i];
		}

		//Store dataOut_data
		dataOut_final[point] = temp_add[0];
	}

}

}
