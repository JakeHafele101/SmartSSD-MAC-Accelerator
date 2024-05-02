#include <iostream>

#include "../Utils.h"
#include "../Types.h"
#include "Layer.h"
#include "Dense.h"


namespace ML {
    // --- Begin Student Code ---

    // Compute the softmax for the layer data
    void DenseLayer::computeNaive(const LayerData &dataIn) const {
        // TODO: Your Code Here...
        assert(dataIn.isValid() && "DenseLayer.computeNaive(): dataIn must be valid in order to compute output");
        assert(dataIn.isAlloced() && "DenseLayer.computeNaive(): dataIn be allocated in order to compute output");
        assert(this->getOutputData().isValid() && "DenseLayer.computeNaive(): dataOut must be valid in order to compute output");
        assert(this->getOutputData().isAlloced() && "DenseLayer.computeNaive(): dataOut be allocated in order to compute output");
        assert(dataIn.getParams().dims.size() == 1 && "DenseLayer.computeNaive(): dataIn must be a 1D vector");
        assert(this->getOutputParams().dims.size() == 1 && "DenseLayer.computeNaive(): dataOut must be a 1D vector");
        assert(this->getWeightParams().dims.size() == 2 && "DenseLayer.computeNaive(): weightData must be a 2D vector");
        assert(this->getBiasParams().dims.size() == 1 && "DenseLayer.computeNaive(): biasData must be a 1D vector");
        
        // Get dataIn dimensions
        Array1D_fp32 dataIn_data = dataIn.getData<Array1D_fp32>();
        size_t dataInLength = dataIn.getParams().dims[0];
        // Get dataOut dimensions
        Array1D_fp32 dataOut_data = this->getOutputData().getData<Array1D_fp32>();
        size_t dataOutLength = this->getOutputParams().dims[0];
        // Get weight dimensions
        Array2D_fp32 layerWeight_data = this->getWeightData().getData<Array2D_fp32>();
        size_t layerWeightHeight = this->getWeightParams().dims[0];
        size_t layerWeightWidth = this->getWeightParams().dims[1];
        // Get bias dimensions
        Array1D_fp32 layerBias_data = this->getBiasData().getData<Array1D_fp32>();
        size_t layerBiasLength = this->getBiasParams().dims[0];

        // Make sure layers were created correctly and dimensions make sense
        assert(dataInLength == layerWeightHeight && "DenseLayer.computeNaive(): dataIn_length and weightData_height must be equal");
        assert(dataOutLength == layerWeightWidth && "DenseLayer.computeNaive(): dataOut_length and weightData_width must be equal");
        assert(dataOutLength == layerBiasLength && "DenseLayer.computeNaive(): dataOut_length and biasData_length must be equal");
        
        auto start = std::chrono::system_clock::now();

        // Perform convolution on every dataIn[i] for every dataOut[j]
        for (size_t i = 0; i < dataInLength; i++) {
            for (size_t j = 0; j < dataOutLength; j++) {
                dataOut_data[j] += dataIn_data[i] * layerWeight_data[i][j]; 
            }
        }
        // Apply bias to every dataOut[i] and run activation function (if applicable)
        for (size_t i = 0; i < dataOutLength; i++) {
            dataOut_data[i] += layerBias_data[i];
            if (this->getAType() == ActivationType::RELU) {
                dataOut_data[i] = std::max(fp32(0), dataOut_data[i]); 
            }
        } 

        if (this->getPerf()) {
            // end clock, report time taken
            auto end = std::chrono::system_clock::now();
            std::chrono::duration<double> elapsed_seconds = end - start;
            std::cout << "TIME: dense layer took " << elapsed_seconds.count() << " seconds" << std::endl;
        }
    }


    // Compute the softmax using threads
    void DenseLayer::computeThreaded(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }


    // Compute the softmax using a tiled approach
    void DenseLayer::computeTiled(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }


    // Compute the softmax using SIMD
    void DenseLayer::computeSIMD(const LayerData &dataIn) const {
        // TODO: Your Code Here...

        this->computeNaive(dataIn);
    }
};