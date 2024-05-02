#include <iostream>

#include "../Utils.h"
#include "../Types.h"
#include "Layer.h"
#include "Flatten.h"

namespace ML {
    // --- Begin Student Code ---

    // Compute the softmax for the layer data
    void FlattenLayer::computeNaive(const LayerData &dataIn) const {
        // TODO: Your Code Here...
        assert(dataIn.isValid() && "FlattenLayer.computeNaive(): dataIn must be valid in order to compute output");
        assert(dataIn.isAlloced() && "FlattenLayer.computeNaive(): dataIn be allocated in order to compute output");
        assert(this->getOutputData().isValid() && "FlattenLayer.computeNaive(): dataOut must be valid in order to compute output");
        assert(this->getOutputData().isAlloced() && "FlattenLayer.computeNaive(): dataOut be allocated in order to compute output");
        assert(dataIn.getParams().dims.size() == 3 && "FlattenLayer.computeNaive(): dataIn must be a 3D vector");
        assert(this->getOutputParams().dims.size() == 1 && "FlattenLayer.computeNaive(): dataOut must be a 1D vector");

        // Get dataIn dimensions
        Array3D_fp32 dataIn_data = dataIn.getData<Array3D_fp32>();
        size_t dataInHeight = dataIn.getParams().dims[0];
        size_t dataInWidth = dataIn.getParams().dims[1];
        size_t dataInDepth = dataIn.getParams().dims[2];
        // Get dataOut dimensions
        Array1D_fp32 dataOut_data = this->getOutputData().getData<Array1D_fp32>();
        size_t dataOutLength = this->getOutputParams().dims[0];

        assert(dataOutLength == dataInHeight * dataInWidth * dataInDepth && "FlattenLayer.computeNaive(): dataOut_length must be equal to dataIn_height * dataIn_width * dataIn_depth");

        auto start = std::chrono::system_clock::now();

        for (size_t i = 0; i < dataInHeight; i++) {
            for (size_t j = 0; j < dataInWidth; j++) {
                for (size_t k = 0; k < dataInDepth; k++) {
                    dataOut_data[i * dataInWidth * dataInDepth + j * dataInDepth + k] = dataIn_data[i][j][k];
                }
            }
        }

        if (this->getPerf()) {
            // end clock, report time taken
            auto end = std::chrono::system_clock::now();
            std::chrono::duration<double> elapsed_seconds = end - start;
            std::cout << "TIME: flatten layer took " << elapsed_seconds.count() << " seconds" << std::endl;
        }

    }


    // Compute the softmax using threads
    void FlattenLayer::computeThreaded(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }


    // Compute the softmax using a tiled approach
    void FlattenLayer::computeTiled(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }


    // Compute the softmax using SIMD
    void FlattenLayer::computeSIMD(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }
};