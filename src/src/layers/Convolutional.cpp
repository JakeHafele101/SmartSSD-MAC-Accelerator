#include <iostream>

#include "../Utils.h"
#include "../Types.h"
#include "Layer.h"
#include "Convolutional.h"

namespace ML {
    // --- Begin Student Code ---

    // Compute the convultion for the layer data
    void ConvolutionalLayer::computeNaive(const LayerData &dataIn) const {
        assert(dataIn.isValid() && "ConvolutionalLayer.computeNaive(): dataIn must be valid in order to compute output");
        assert(dataIn.isAlloced() && "ConvolutionalLayer.computeNaive(): dataIn be allocated in order to compute output");
        assert(this->getOutputData().isValid() && "ConvolutionalLayer.computeNaive(): dataOut must be valid in order to compute output");
        assert(this->getOutputData().isAlloced() && "ConvolutionalLayer.computeNaive(): dataOut be allocated in order to compute output");
        assert(dataIn.getParams().dims.size() == 3 && "ConvolutionalLayer.computeNaive(): dataIn must be a 3D vector");
        assert(this->getOutputParams().dims.size() == 3 && "ConvolutionalLayer.computeNaive(): dataOut must be a 3D vector");
        assert(this->getWeightParams().dims.size() == 4 && "ConvolutionalLayer.computeNaive(): weightData must be a 4D vector");
        assert(this->getBiasParams().dims.size() == 1 && "ConvolutionalLayer.computeNaive(): biasData must be a 1D vector");

        // Get dataIn
        Array3D_fp32 dataIn_data = dataIn.getData<Array3D_fp32>();
        size_t dataInHeight = dataIn.getParams().dims[0];
        size_t dataInWidth = dataIn.getParams().dims[1];
        size_t dataInDepth = dataIn.getParams().dims[2];

        // Get dataOut
        Array3D_fp32 dataOut_data = this->getOutputData().getData<Array3D_fp32>();
        size_t dataOutHeight = this->getOutputParams().dims[0];
        size_t dataOutWidth = this->getOutputParams().dims[1];
        size_t dataOutDepth = this->getOutputParams().dims[2];

        // Get weight
        Array4D_fp32 layerWeight_data = this->getWeightData().getData<Array4D_fp32>();
        size_t layerWeightHeight = this->getWeightParams().dims[0];
        size_t layerWeightWidth = this->getWeightParams().dims[1];
        size_t layerWeightDepth = this->getWeightParams().dims[2];
        size_t layerWeight_numFilters = this->getWeightParams().dims[3];

        // Get bias
        Array1D_fp32 layerBias_data = this->getBiasData().getData<Array1D_fp32>();
        size_t layerBiasLength = this->getBiasParams().dims[0];

        // Make sure layers were created correctly and dimensions make sense
        assert(dataInDepth == layerWeightDepth && "ConvolutionalLayer.computeNaive(): dataIn_depth and weightData_depth must be equal");
        assert(layerWeight_numFilters == layerBiasLength && "ConvolutionalLayer.computeNaive(): weightData_length and biasData_length must be equal");
        assert(dataOutDepth == layerWeight_numFilters && "ConvolutionalLayer.computeNaive(): dataOut_depth and weightData_length must be equal");
        assert(dataOutHeight == ((dataInHeight - layerWeightHeight + (2 * CONV_PAD)) / CONV_STRIDE) + 1 && "ConvolutionalLayer.computeNaive(): dataOut_height must be equal to formula: ((dataIn_height - weightData_height + 2*P) / S) + 1");
        assert(dataOutWidth == ((dataInWidth - layerWeightWidth + (2 * CONV_PAD)) / CONV_STRIDE) + 1 && "ConvolutionalLayer.computeNaive(): dataOut_width must be equal to formula: ((dataIn_width - weightData_width + 2*P) / S) + 1");

        auto start = std::chrono::system_clock::now();

        //this->computeLoop(PARAMS);

        for (size_t dataOutH = 0, dataInH = 0; dataOutH < dataOutHeight; dataOutH++, dataInH += CONV_STRIDE) {
            for (size_t dataOutW = 0, dataInW = 0; dataOutW < dataOutWidth; dataOutW++, dataInW += CONV_STRIDE) {
                for (size_t dataOutD = 0, layerWeightFilter = 0; dataOutD < dataOutDepth; dataOutD++, layerWeightFilter++) {
                    // Loop through filter array and accumulate convolution operation to dataOut array at index (dataOutH, dataInW)
                    for (size_t weightH = 0; weightH < layerWeightHeight; weightH++) {
                        for (size_t weightW = 0; weightW < layerWeightWidth; weightW++) {
                            for (size_t dataInD = 0, weightD = 0; dataInD < dataInDepth; dataInD++, weightD++) {
                                dataOut_data[dataOutH][dataOutW][dataOutD] += 
                                    dataIn_data[dataInH + weightH][dataInW + weightW][dataInD] * layerWeight_data[weightH][weightW][weightD][layerWeightFilter];
                            }
                        }
                    }
                }
                // Apply bias to dataOut array at index (dataOutH, dataOutW)
                for (size_t dataOutD = 0, biasD = 0; dataOutD < dataOutDepth; dataOutD++, biasD++) {
                    dataOut_data[dataOutH][dataOutW][dataOutD] += layerBias_data[biasD];
                    // Apply activation function to dataOut array at index (dataOutH, dataOutW)
                    if (this->getAType() == ActivationType::RELU) {
                        dataOut_data[dataOutH][dataOutW][dataOutD] = std::max(fp32(0), dataOut_data[dataOutH][dataOutW][dataOutD]);
                    }
                }
            }
        }

        if (this->getPerf()) {
            // end clock, report time taken
            auto end = std::chrono::system_clock::now();
            std::chrono::duration<double> elapsed_seconds = end - start;
            std::cout << "TIME: convolution layer took " << elapsed_seconds.count() << " seconds" << std::endl;
        }
    }


    // Compute the convolution using threads
    // void ConvolutionalLayer::computeLoop(const size_t dataOutHeight, const size_t dataOutWidth, const size_t dataOutDepth, ) const {
        
    //     for (size_t dataOutH = 0, dataInH = 0; dataOutH < dataOutHeight; dataOutH++, dataInH += CONV_STRIDE) {
    //         for (size_t dataOutW = 0, dataInW = 0; dataOutW < dataOutWidth; dataOutW++, dataInW += CONV_STRIDE) {
    //             for (size_t dataOutD = 0, layerWeightFilter = 0; dataOutD < dataOutDepth; dataOutD++, layerWeightFilter++) {
    //                 // Loop through filter array and accumulate convolution operation to dataOut array at index (dataOutH, dataInW)
    //                 for (size_t weightH = 0; weightH < layerWeightHeight; weightH++) {
    //                     for (size_t weightW = 0; weightW < layerWeightWidth; weightW++) {
    //                         for (size_t dataInD = 0, weightD = 0; dataInD < dataInDepth; dataInD++, weightD++) {
    //                             dataOut_data[dataOutH][dataOutW][dataOutD] += 
    //                                 dataIn_data[dataInH + weightH][dataInW + weightW][dataInD] * layerWeight_data[weightH][weightW][weightD][layerWeightFilter];
    //                         }
    //                     }
    //                 }
    //             }
    //             // Apply bias to dataOut array at index (dataOutH, dataOutW)
    //             for (size_t dataOutD = 0, biasD = 0; dataOutD < dataOutDepth; dataOutD++, biasD++) {
    //                 dataOut_data[dataOutH][dataOutW][dataOutD] += layerBias_data[biasD];
    //                 // Apply activation function to dataOut array at index (dataOutH, dataOutW)
    //                 if (this->getAType() == ActivationType::RELU) {
    //                     dataOut_data[dataOutH][dataOutW][dataOutD] = std::max(fp32(0), dataOut_data[dataOutH][dataOutW][dataOutD]);
    //                 }
    //             }
    //         }
    //     }

    // }

    // Compute the convolution using threads
    void ConvolutionalLayer::computeThreaded(const LayerData &dataIn) const {
        // TODO: Your Code Here...


        this->computeNaive(dataIn);
    }


    // Compute the convolution using a tiled approach
    void ConvolutionalLayer::computeTiled(const LayerData &dataIn) const {
        // TODO: Your Code Here...


        this->computeNaive(dataIn);
    }


    // Compute the convolution using SIMD
    void ConvolutionalLayer::computeSIMD(const LayerData &dataIn) const {
        // TODO: Your Code Here...


        this->computeNaive(dataIn);
    }


};