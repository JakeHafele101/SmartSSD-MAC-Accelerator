#include <iostream>

#include "../Utils.h"
#include "../Types.h"
#include "Layer.h"
#include "MaxPooling.h"


namespace ML {
    // --- Begin Student Code ---

    // Compute the max pooling for the layer data
    void MaxPoolingLayer::computeNaive(const LayerData &dataIn) const {
        // TODO: Your Code Here...
        assert(dataIn.isValid() && "MaxPoolingLayer.computeNaive(): dataIn must be valid in order to compute output");
        assert(dataIn.isAlloced() && "MaxPoolingLayer.computeNaive(): dataIn be allocated in order to compute output");
        assert(this->getOutputData().isValid() && "MaxPoolingLayer.computeNaive(): dataOut must be valid in order to compute output");
        assert(this->getOutputData().isAlloced() && "MaxPoolingLayer.computeNaive(): dataOut be allocated in order to compute output");
        assert(dataIn.getParams().dims.size() == 3 && "MaxPoolingLayer.computeNaive(): dataIn must be a 3D vector");
        assert(this->getOutputParams().dims.size() == 3 && "MaxPoolingLayer.computeNaive(): dataOut must be a 3D vector");

        // Get dataIn dimensions
        Array3D_fp32 dataIn_data = dataIn.getData<Array3D_fp32>();
        size_t dataInHeight = dataIn.getParams().dims[0];
        size_t dataInWidth = dataIn.getParams().dims[1];
        size_t dataInDepth = dataIn.getParams().dims[2];
        // Get dataOut dimensions
        Array3D_fp32 dataOut_data = this->getOutputData().getData<Array3D_fp32>();
        size_t dataOutHeight = this->getOutputParams().dims[0];
        size_t dataOutWidth = this->getOutputParams().dims[1];
        size_t dataOutDepth = this->getOutputParams().dims[2];
        
        assert(dataOutDepth == dataInDepth && "MaxPoolingLayer.computeNaive(): Number of dataOut channels and dataIn channels must be equal");
        assert(dataInHeight % dataOutHeight == 0 && "MaxPoolingLayer.computeNaive(): dataIn_height / dataOut_height must result in a whole number");
        assert(dataInWidth % dataOutWidth == 0 && "MaxPoolingLayer.computeNaive(): dataIn_width / dataOut_width must result in a whole number");

        auto start = std::chrono::system_clock::now();

        // Calculate stride length and width
        size_t strideHeight = dataInHeight / dataOutHeight;
        size_t strideWidth = dataInWidth / dataOutWidth;

        // Perform max pooling operation
        for (size_t dataOutH = 0, dataInH = 0; dataOutH < dataOutHeight; dataOutH++, dataInH += strideHeight) {
            for (size_t dataOutW = 0, dataInW = 0; dataOutW < dataOutWidth; dataOutW++, dataInW += strideWidth) {
                for (size_t depth = 0; depth < dataOutDepth; depth++) {
                    // Find the max value in the sub array that's of size [strideHeight X strideWidth]
                    //  where the top-left of that sub-array is at (dataInH, dataInW)
                    dataOut_data[dataOutH][dataOutW][depth] = 0;
                    for (size_t strideH = 0; strideH < strideHeight; strideH++) {
                        for (size_t strideW = 0; strideW < strideWidth; strideW++) {
                            if (dataOut_data[dataOutH][dataOutW][depth] < dataIn_data[dataInH + strideH][dataInW + strideW][depth]) {
                                dataOut_data[dataOutH][dataOutW][depth] = dataIn_data[dataInH + strideH][dataInW + strideW][depth];
                            }
                        }
                    }
                }
            }
        }

        if (this->getPerf()) {
            // end clock, report time taken
            auto end = std::chrono::system_clock::now();
            std::chrono::duration<double> elapsed_seconds = end - start;
            std::cout << "TIME: maxpooling layer took " << elapsed_seconds.count() << " seconds" << std::endl;
        }
    }


    // Compute the max pooling using threads
    void MaxPoolingLayer::computeThreaded(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }


    // Compute the max pooling using a tiled approach
    void MaxPoolingLayer::computeTiled(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }


    // Compute the max pooling using SIMD
    void MaxPoolingLayer::computeSIMD(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }
};