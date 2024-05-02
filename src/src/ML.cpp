#include <iostream>
#include <filesystem>
#include <string>
#include <vector>

#include "Utils.h"
#include "Types.h"
#include "Model.h"
#include "layers/Layer.h"
#include "layers/Convolutional.h"
#include "layers/Convolutional_HLS.h"
#include "layers/Dense.h"
#include "layers/MaxPooling.h"
#include "layers/Softmax.h"

bool debug = true; // Print performace metrics and debug statements during main() execution
bool layerDebug = true; // Print performace metrics and debug statements during model inference execution
bool testModel = true; // Compare the model's layer outputs with tensorflow's layer outptus to evaluate implementation correctness

// Make our code a bit cleaner
namespace fs = std::filesystem;
using namespace ML;

// Build our ML toy model
Model buildToyModel(const fs::path modelPath) {
    Model model(layerDebug);
    std::cout << "\n--- Building Toy Model ---" << std::endl;

    // --- Conv 0: L0 ---
    // Input shape: 64x64x3
    // Output shape: 60x60x32
    LayerParams conv1_inDataParam(sizeof(fp32), {64, 64, 3});
    LayerParams conv1_outDataParam(sizeof(fp32), {60, 60, 32});
    LayerParams conv1_weightParam(sizeof(fp32), {5, 5, 3, 32}, modelPath / "conv1_weights.bin");
    LayerParams conv1_biasParam(sizeof(fp32), {32}, modelPath / "conv1_biases.bin");
    ConvolutionalLayer* conv1 = new ConvolutionalLayer(conv1_inDataParam, conv1_outDataParam, conv1_weightParam, conv1_biasParam, model.getPerf());
    model.addLayer(conv1);

    // --- Conv 1: L1 ---
    // Input shape: 60x60x32
    // Output shape: 56x56x32
    LayerParams conv2_inDataParam(sizeof(fp32), {60, 60, 32});
    LayerParams conv2_outDataParam(sizeof(fp32), {56, 56, 32});
    LayerParams conv2_weightParam(sizeof(fp32), {5, 5, 32, 32}, modelPath / "conv2_weights.bin");
    LayerParams conv2_biasParam(sizeof(fp32), {32}, modelPath / "conv2_biases.bin");
    ConvolutionalLayerHLS* conv2 = new ConvolutionalLayerHLS(conv2_inDataParam, conv2_outDataParam, conv2_weightParam, conv2_biasParam, model.getPerf());
    model.addLayer(conv2);

    // --- MPL 0: L2 ---
    // Input shape: 56x56x32
    // Output shape: 28x28x32
    LayerParams mp1_inDataParam(sizeof(fp32), {56, 56, 32});
    LayerParams mp1_outDataParam(sizeof(fp32), {28, 28, 32});
    MaxPoolingLayer* mp1 = new MaxPoolingLayer(mp1_inDataParam, mp1_outDataParam, model.getPerf());
    model.addLayer(mp1);

    // --- Conv 2: L3 ---
    // Input shape: 28x28x32
    // Output shape: 26x26x64
    LayerParams conv3_inDataParam(sizeof(fp32), {28, 28, 32});
    LayerParams conv3_outDataParam(sizeof(fp32), {26, 26, 64});
    LayerParams conv3_weightParam(sizeof(fp32), {3, 3, 32, 64}, modelPath / "conv3_weights.bin");
    LayerParams conv3_biasParam(sizeof(fp32), {64}, modelPath / "conv3_biases.bin");
    ConvolutionalLayer* conv3 = new ConvolutionalLayer(conv3_inDataParam, conv3_outDataParam, conv3_weightParam, conv3_biasParam, model.getPerf());
    model.addLayer(conv3);

    // --- Conv 3: L4 ---
    // Input shape: 26x26x64
    // Output shape: 24x24x64
    LayerParams conv4_inDataParam(sizeof(fp32), {26, 26, 64});
    LayerParams conv4_outDataParam(sizeof(fp32), {24, 24, 64});
    LayerParams conv4_weightParam(sizeof(fp32), {3, 3, 64, 64}, modelPath / "conv4_weights.bin");
    LayerParams conv4_biasParam(sizeof(fp32), {64}, modelPath / "conv4_biases.bin");
    ConvolutionalLayer* conv4 = new ConvolutionalLayer(conv4_inDataParam, conv4_outDataParam, conv4_weightParam, conv4_biasParam, model.getPerf());
    model.addLayer(conv4);

    // --- MPL 1: L5---
    // Input shape: 24x24x64
    // Output shape: 12x12x64
    LayerParams mp2_inDataParam(sizeof(fp32), {24, 24, 64});
    LayerParams mp2_outDataParam(sizeof(fp32), {12, 12, 64});
    MaxPoolingLayer* mp2 = new MaxPoolingLayer(mp2_inDataParam, mp2_outDataParam, model.getPerf());
    model.addLayer(mp2);

    // --- Conv 4: L6 ---
    // Input shape: 12x12x64
    // Output shape: 10x10x64
    LayerParams conv5_inDataParam(sizeof(fp32), {12, 12, 64});
    LayerParams conv5_outDataParam(sizeof(fp32), {10, 10, 64});
    LayerParams conv5_weightParam(sizeof(fp32), {3, 3, 64, 64}, modelPath / "conv5_weights.bin");
    LayerParams conv5_biasParam(sizeof(fp32), {64}, modelPath / "conv5_biases.bin");
    ConvolutionalLayer* conv5 = new ConvolutionalLayer(conv5_inDataParam, conv5_outDataParam, conv5_weightParam, conv5_biasParam, model.getPerf());
    model.addLayer(conv5);

    // --- Conv 5: L7 ---
    // Input shape: 10x10x64
    // Output shape: 8x8x128
    LayerParams conv6_inDataParam(sizeof(fp32), {10, 10, 64});
    LayerParams conv6_outDataParam(sizeof(fp32), {8, 8, 128});
    LayerParams conv6_weightParam(sizeof(fp32), {3, 3, 64, 128}, modelPath / "conv6_weights.bin");
    LayerParams conv6_biasParam(sizeof(fp32), {128}, modelPath / "conv6_biases.bin");
    ConvolutionalLayer* conv6 = new ConvolutionalLayer(conv6_inDataParam, conv6_outDataParam, conv6_weightParam, conv6_biasParam, model.getPerf());
    model.addLayer(conv6);

    // --- MPL 2: L8 ---
    // Input shape: 8x8x128
    // Output shape: 4x4x128
    LayerParams mp3_inDataParam(sizeof(fp32), {8, 8, 128});
    LayerParams mp3_outDataParam(sizeof(fp32), {4, 4, 128});
    MaxPoolingLayer* mp3 = new MaxPoolingLayer(mp3_inDataParam, mp3_outDataParam, model.getPerf());
    model.addLayer(mp3);

    // --- Flatten 0: L9 ---
    // Input shape: 4x4x128
    // Output shape: 2048
    LayerParams flat1_inDataParam(sizeof(fp32), {4, 4, 128});
    LayerParams flat1_outDataParam(sizeof(fp32), {2048});
    FlattenLayer* flat1 = new FlattenLayer(flat1_inDataParam, flat1_outDataParam, model.getPerf());
    model.addLayer(flat1);

    // --- Dense 0: L10 ---
    // Input shape: 2048
    // Output shape: 256
    LayerParams dense1_inDataParam(sizeof(fp32), {2048});
    LayerParams dense1_outDataParam(sizeof(fp32), {256});
    LayerParams dense1_weightParam(sizeof(fp32), {2048, 256}, modelPath / "dense1_weights.bin");
    LayerParams dense1_biasParam(sizeof(fp32), {256}, modelPath / "dense1_biases.bin");
    DenseLayer* dense1 = new DenseLayer(dense1_inDataParam, dense1_outDataParam, dense1_weightParam, dense1_biasParam, Layer::ActivationType::RELU, model.getPerf());
    model.addLayer(dense1);

    // --- Dense 1: L11 ---
    // Input shape: 256
    // Output shape: 200
    LayerParams dense2_inDataParam(sizeof(fp32), {256});
    LayerParams dense2_outDataParam(sizeof(fp32), {200});
    LayerParams dense2_weightParam(sizeof(fp32), {256, 200}, modelPath / "dense2_weights.bin");
    LayerParams dense2_biasParam(sizeof(fp32), {200}, modelPath / "dense2_biases.bin");
    DenseLayer* dense2 = new DenseLayer(dense2_inDataParam, dense2_outDataParam, dense2_weightParam, dense2_biasParam, Layer::ActivationType::SOFTMAX, model.getPerf());
    model.addLayer(dense2);

    // --- Softmax 0: L12 ---
    // Input shape: 200
    // Output shape: 200
    LayerParams sm1_inDataParam(sizeof(fp32), {200});
    LayerParams sm1_outDataParam(sizeof(fp32), {200});
    SoftmaxLayer* sm1 = new SoftmaxLayer(sm1_inDataParam, sm1_outDataParam, model.getPerf());
    model.addLayer(sm1);

    return model;
}

void runTests() {
    std::cout << "\n--- Running Some Tests ---" << std::endl;

    // Load an image
    fs::path imgPath("./data/image_0.bin");
    dimVec dims = {64, 64, 3};
    Array3D_fp32 img = loadArray<Array3D_fp32>(imgPath, dims);

    // Compare images
    std::cout << "Comparing image 0 to itself (max error): "
              << compareArray<Array3D_fp32>(img, img, dims)
              << std::endl
              << "Comparing image 0 to itself (T/F within epsilon " << EPSILON << "): "
              << std::boolalpha
              << compareArrayWithin<Array3D_fp32>(img, img, dims, EPSILON)
              << std::endl;

    // Test again with a modified copy
    std::cout << "\nChange a value by 1.5 and compare again" << std::endl;
    Array3D_fp32 imgCopy = allocArray<Array3D_fp32>(dims);
    copyArray<Array3D_fp32>(img, imgCopy, dims);
    imgCopy[0][0][0] += 1.5;

    std::cout << "Comparing image 0 to itself (max error): "
              << compareArray<Array3D_fp32>(img, imgCopy, dims)
              << std::endl
              << "Comparing image 0 to itself (T/F within epsilon " << EPSILON << "): "
              << std::boolalpha
              << compareArrayWithin<Array3D_fp32>(img, imgCopy, dims, EPSILON)
              << std::endl;


    // Clean up after ourselves
    freeArray<Array3D_fp32>(img, dims);
    freeArray<Array3D_fp32>(imgCopy, dims);
}


int main(int argc, char **argv) {
    // Hanlde command line arguments
    Args& args = Args::getInst();
    args.parseArgs(argc, argv);

    // Run some framework tests as an example of loading data
    //runTests();

    // Base input data path (determined from current directory of where you are running the command)
    std::string basePathStr("./data");
    fs::path basePath(basePathStr);

    // Build the model and allocate the buffers
    Model model = buildToyModel(basePath / "model");
    model.allocLayers<fp32>();

    std::cout << "Model created with " << model.getNumLayers() << " layers" << std::endl;

    // Load an image
    std::cout << "\n--- Running Infrence ---" << std::endl;
    dimVec dims = {64, 64, 3};
    
    // Construct a LayerData object from a LayerParams one
    std::string imgname = "image_0";
    LayerData img( {sizeof(fp32), dims, basePath / std::string(imgname + ".bin")} );
    img.loadData<Array3D_fp32>();

    // Run infrence on the model
    auto start = std::chrono::system_clock::now();
    const LayerData output = model.infrence(img, Layer::InfType::NAIVE);
    if (debug) {
        auto end = std::chrono::system_clock::now();
        std::chrono::duration<double> elapsed_seconds = end - start;
        std::cout << "TIME: Model inference time " << elapsed_seconds.count() << " seconds" << std::endl;
    }

    // Compare the output
    if (testModel) {
        std::cout << "\n--- Comparing The Output ---" << std::endl;
        model.testLayers(basePathStr, "image_0");
    }
    
    // Clean up
    model.freeLayers<fp32>();

    return 0;
}