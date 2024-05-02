#include <iostream>
#include <math.h>

#include "../Utils.h"
#include "../Types.h"
#include "Layer.h"
#include "Softmax.h"


namespace ML {
    // --- Begin Student Code ---

    // Compute the softmax for the layer data
    void SoftmaxLayer::computeNaive(const LayerData &dataIn) const {
        // TODO: Your Code Here...
        assert(dataIn.isValid() && "SoftmaxLayer.computeNaive(): dataIn must be valid in order to compute output");
        assert(dataIn.isAlloced() && "SoftmaxLayer.computeNaive(): dataIn be allocated in order to compute output");
        assert(this->getOutputData().isValid() && "SoftmaxLayer.computeNaive(): dataOut must be valid in order to compute output");
        assert(this->getOutputData().isAlloced() && "SoftmaxLayer.computeNaive(): dataOut be allocated in order to compute output");
        assert(dataIn.getParams().dims.size() == 1 && "SoftmaxLayer.computeNaive(): dataIn must be a 1D vector");
        assert(this->getOutputParams().dims.size() == 1 && "SoftmaxLayer.computeNaive(): dataOut must be a 1D vector");

        // Get dataIn dimensions
        Array1D_fp32 dataIn_data = dataIn.getData<Array1D_fp32>();
        size_t dataInLength = dataIn.getParams().dims[0];
        // Get dataOut dimensions
        Array1D_fp32 dataOut_data = this->getOutputData().getData<Array1D_fp32>();
        size_t dataOutLength = this->getOutputParams().dims[0];
        
        assert(dataInLength == dataOutLength && "SoftmaxLayer.computeNaive(): dataIn_length and dataOut_length must be equal");

        auto start = std::chrono::system_clock::now();

        fp32 divisor = 0.0;
        for (size_t i = 0; i < dataInLength; i++) {
            divisor += fp32(std::exp(dataIn_data[i]));
        }
        for (size_t i = 0; i < dataOutLength; i++) {
            dataOut_data[i] = fp32(std::exp(dataIn_data[i]) / divisor);
        }

        if (this->getPerf()) {
            // end clock, report time taken
            auto end = std::chrono::system_clock::now();
            std::chrono::duration<double> elapsed_seconds = end - start;
            std::cout << "TIME: softmax layer took " << elapsed_seconds.count() << " seconds" << std::endl;
        }

    }


    // Compute the softmax using threads
    void SoftmaxLayer::computeThreaded(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }


    // Compute the softmax using a tiled approach
    void SoftmaxLayer::computeTiled(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }


    // Compute the softmax using SIMD
    void SoftmaxLayer::computeSIMD(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }
};