#include <iostream>

#include "../Utils.h" //Includes filesystem ?
#include "../Types.h" //Okay
#include "Layer.h"    //Includes filesystem ?
#include "Convolutional_HLS.h"

#include "Compute_HLS.h"

namespace ML {
    // --- Begin Student Code ---

    // Compute the convultion for the layer data
    void ConvolutionalLayerHLS::computeNaive(const LayerData &dataIn) const {
        assert(dataIn.isValid() && "ConvolutionalLayerHLS.computeNaive(): dataIn must be valid in order to compute output");
        assert(dataIn.isAlloced() && "ConvolutionalLayerHLS.computeNaive(): dataIn be allocated in order to compute output");
        assert(this->getOutputData().isValid() && "ConvolutionalLayerHLS.computeNaive(): dataOut must be valid in order to compute output");
        assert(this->getOutputData().isAlloced() && "ConvolutionalLayerHLS.computeNaive(): dataOut be allocated in order to compute output");
        assert(dataIn.getParams().dims.size() == 3 && "ConvolutionalLayerHLS.computeNaive(): dataIn must be a 3D vector");
        assert(this->getOutputParams().dims.size() == 3 && "ConvolutionalLayerHLS.computeNaive(): dataOut must be a 3D vector");
        assert(this->getWeightParams().dims.size() == 4 && "ConvolutionalLayerHLS.computeNaive(): weightData must be a 4D vector");
        assert(this->getBiasParams().dims.size() == 1 && "ConvolutionalLayerHLS.computeNaive(): biasData must be a 1D vector");

        // Get dataIn
        //Array3D_fp32 dataIn_data = dataIn.getData<Array3D_fp32>();
        size_t dataInHeight = 60;
        size_t dataInWidth = 60;
        size_t dataInDepth = 32;
        //printf("dataInDepth:%lu \n", dataInDepth);

        // Get dataOut
        //Array3D_fp32 dataOut_data = this->getOutputData().getData<Array3D_fp32>();
        size_t dataOutHeight = 56;
        size_t dataOutWidth = 56;
        size_t dataOutDepth = 32;
        //printf("dataOutHeight:%lu dataOutWidth:%lu dataOutDepth:%lu \n", dataOutHeight, dataOutWidth, dataOutDepth);

        // Get weight
        //Array4D_fp32 layerWeight_data = this->getWeightData().getData<Array4D_fp32>();
        size_t layerWeightHeight = 5;
        size_t layerWeightWidth = 5;
        size_t layerWeightDepth = 32;
        size_t layerWeight_numFilters = 32;
        //printf("layerWeightHeight:%lu layerWeightWidth:%lu \n", layerWeightHeight, layerWeightWidth);

        // Get bias
        //Array1D_fp32 layerBias_data = this->getBiasData().getData<Array1D_fp32>();
        size_t layerBiasLength = 32;

        // Make sure layers were created correctly and dimensions make sense
        assert(dataInDepth == layerWeightDepth && "ConvolutionalLayerHLS.computeNaive(): dataIn_depth and weightData_depth must be equal");
        assert(layerWeight_numFilters == layerBiasLength && "ConvolutionalLayerHLS.computeNaive(): weightData_length and biasData_length must be equal");
        assert(dataOutDepth == layerWeight_numFilters && "ConvolutionalLayerHLS.computeNaive(): dataOut_depth and weightData_length must be equal");
        assert(dataOutHeight == ((dataInHeight - layerWeightHeight + (2 * CONV_PAD)) / CONV_STRIDE) + 1 && "ConvolutionalLayerHLS.computeNaive(): dataOut_height must be equal to formula: ((dataIn_height - weightData_height + 2*P) / S) + 1");
        assert(dataOutWidth == ((dataInWidth - layerWeightWidth + (2 * CONV_PAD)) / CONV_STRIDE) + 1 && "ConvolutionalLayerHLS.computeNaive(): dataOut_width must be equal to formula: ((dataIn_width - weightData_width + 2*P) / S) + 1");

        auto start = std::chrono::system_clock::now();

        Array3D_fp32 dataIn_data = dataIn.getData<Array3D_fp32>();
        Array3D_fp32 dataOut_data = this->getOutputData().getData<Array3D_fp32>();
        Array4D_fp32 layerWeight_data = this->getWeightData().getData<Array4D_fp32>();
        Array1D_fp32 layerBias_data = this->getBiasData().getData<Array1D_fp32>();

        this->computeLoop(dataIn_data, dataOut_data, layerWeight_data, layerBias_data);


        if (this->getPerf()) {
            // end clock, report time taken
            auto end = std::chrono::system_clock::now();
            std::chrono::duration<double> elapsed_seconds = end - start;
            std::cout << "TIME: convolution layer took " << elapsed_seconds.count() << " seconds" << std::endl;
        }
    }


    //Compute the convolution using threads
    void ConvolutionalLayerHLS::computeLoop(const Array3D_fp32 &dataIn_data, const Array3D_fp32 &dataOut_data, const Array4D_fp32 &layerWeight_data, const Array1D_fp32 &layerBias_data) const {
        // Array3D_fp32 dataIn_data = dataIn.getData<Array3D_fp32>();
        // Array3D_fp32 dataOut_data = dataOut.getData<Array3D_fp32>();
        // Array4D_fp32 layerWeight_data = weight.getData<Array4D_fp32>();
        // Array1D_fp32 layerBias_data = bias.getData<Array1D_fp32>();

        // for (size_t dataOutH = 0, dataInH = 0; dataOutH < 56; dataOutH++, dataInH += CONV_STRIDE) { //dataOutHeight = 56
        //     for (size_t dataOutW = 0, dataInW = 0; dataOutW < 56; dataOutW++, dataInW += CONV_STRIDE) { //dataOutWidth = 56
        //         for (size_t dataOutD = 0, layerWeightFilter = 0; dataOutD < 32; dataOutD++, layerWeightFilter++) { //dataOutDepth = 32
        //             // Loop through filter array and accumulate convolution operation to dataOut array at index (dataOutH, dataInW)
        //             for (size_t weightH = 0; weightH < 5; weightH++) { //layerWeightHeight = 5
        //                 for (size_t weightW = 0; weightW < 5; weightW++) { //layerWeightWidth = 5
        //                     for (size_t dataInD = 0, weightD = 0; dataInD < 32; dataInD++, weightD++) { //dataInDepth = 32
        //                         dataOut_data[dataOutH][dataOutW][dataOutD] += 
        //                             dataIn_data[dataInH + weightH][dataInW + weightW][dataInD] * layerWeight_data[weightH][weightW][weightD][layerWeightFilter];
        //                     }
        //                 }
        //             }

        //             // Apply bias to dataOut array at index (dataOutH, dataOutW)
        //             dataOut_data[dataOutH][dataOutW][dataOutD] += layerBias_data[biasD];
        //             //Apply activation function to dataOut array at index (dataOutH, dataOutW)
        //             //if (this->getAType() == ActivationType::RELU) { //Comment out so no class reference
        //                 dataOut_data[dataOutH][dataOutW][dataOutD] = std::max(fp32(0), dataOut_data[dataOutH][dataOutW][dataOutD]);
        //             //}
        //         }
        //     }
        // }

        float dataIn_Internal[800];
        float layerWeight_Internal[800];

        int count = 0;

        auto start_read = std::chrono::system_clock::now();
        auto start_compute = std::chrono::system_clock::now();
        auto start_write = std::chrono::system_clock::now();

        auto end_read = std::chrono::system_clock::now();
        auto end_compute = std::chrono::system_clock::now();
        auto end_write = std::chrono::system_clock::now();

        std::chrono::duration<double> elapsed_seconds_read = start_read - end_read;
        std::chrono::duration<double> elapsed_seconds_compute = start_read - end_read;
        std::chrono::duration<double> elapsed_seconds_write = start_read - end_read;

		//Compute
        for (int dataH = 0; dataH < 56; dataH++) { //dataHeight = 56
            for (int dataW = 0; dataW < 56; dataW++) { //dataWidth = 56
                for (int dataD = 0; dataD < 32; dataD++) { //dataDepth = 32

                    start_read = std::chrono::system_clock::now();
                    
                    count = 0;
                    for (int weightD = 0; weightD < 32; weightD++) { //dataInDepth = 32
                        for (int weightW = 0; weightW < 5; weightW++) { //layerWeightWidth = 5
                            for (int weightH = 0; weightH < 5; weightH++) { //layerWeightHeight = 5
                                dataIn_Internal[count] = dataIn_data[dataH + weightH][dataW + weightW][weightD];
                                layerWeight_Internal[count] = layerWeight_data[weightH][weightW][weightD][dataD];
                                count++;
                            }
                        }
                    }

                    end_read = std::chrono::system_clock::now();
                    elapsed_seconds_read += end_read - start_read;

                    start_compute = std::chrono::system_clock::now();
                    computePointHLS(dataIn_Internal, &dataOut_data[dataH][dataW][dataD], layerWeight_Internal, &layerBias_data[dataD]);
                    end_compute = std::chrono::system_clock::now();
                    elapsed_seconds_compute += end_compute - start_compute;

                    start_write = std::chrono::system_clock::now();
                    dataOut_data[dataH][dataW][dataD] = std::max(fp32(0), dataOut_data[dataH][dataW][dataD]);
                    end_write = std::chrono::system_clock::now();
                    elapsed_seconds_write += end_write - start_write;

                    //printf("%f \n", dataOut_data[dataH][dataW][dataD]);
                }
            }
        }

        std::cout << "TIME: convolution layer read took " << elapsed_seconds_read.count() << " seconds" << std::endl;
        std::cout << "TIME: convolution layer operation took " << elapsed_seconds_compute.count() << " seconds" << std::endl;
        std::cout << "TIME: convolution layer write took " << elapsed_seconds_write.count() << " seconds" << std::endl;

    }

    // Compute the convolution using threads
    void ConvolutionalLayerHLS::computeThreaded(const LayerData &dataIn) const {
        // TODO: Your Code Here...


        this->computeNaive(dataIn);
    }


    // Compute the convolution using a tiled approach
    void ConvolutionalLayerHLS::computeTiled(const LayerData &dataIn) const {
        // TODO: Your Code Here...


        this->computeNaive(dataIn);
    }


    // Compute the convolution using SIMD
    void ConvolutionalLayerHLS::computeSIMD(const LayerData &dataIn) const {
        // TODO: Your Code Here...


        this->computeNaive(dataIn);
    }


};