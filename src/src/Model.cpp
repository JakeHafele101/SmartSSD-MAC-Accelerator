#include <cassert>
#include <iostream>

#include "Model.h"

namespace ML {

    // Run infrence on the entire model using the inData and outputting the outData
    // infType can be used to determine the infrence function to call
    const LayerData& Model::infrence(const LayerData& inData, const Layer::InfType infType) const {
        assert(layers.size() > 0 && "There must be at least 1 layer to perform infrence");
        if (this->getPerf()) {
            std::cout << "Running inference on layer 0" << std::endl;
        }
        infrenceLayer(inData, 0, infType);

        for (std::size_t i = 1; i < layers.size(); i++) {
            if (this->getPerf()) {
                std::cout << "Running inference on layer " << i << std::endl;
            }
            infrenceLayer(layers[i - 1]->getOutputData(), i, infType);
        }

        return layers.back()->getOutputData();
    }


    // Run infrence on a single layer of the model using the inData and outputting the outData
    // infType can be used to determine the infrence function to call
    const LayerData& Model::infrenceLayer(const LayerData& inData, const int layerNum, const Layer::InfType infType) const {
        Layer& layer = *layers[layerNum];

        assert(layer.getInputParams().isCompatible(inData.getParams()) && "Input data is not compatible with layer");
        assert(layer.isOutputBufferAlloced() && "Output buffer must be allocated prior to infrence");

        switch(infType) {
            case Layer::InfType::NAIVE:
                layer.computeNaive(inData);
                break;
            // case Layer::InfType::THREADED:
            //     layer.computeThreaded(inData);
            //     break;
            // case Layer::InfType::TILED:
            //     layer.computeTiled(inData);
            //     break;
            // case Layer::InfType::SIMD:
            //     layer.computeSIMD(inData);
            //     break;
            default:
                assert(false && "Infrence Type not implemented");
        }

        return layer.getOutputData();
    }

    void Model::testLayers(std::filesystem::path basePath, std::string imgname) {
        for (size_t l = 0; l < layers.size(); l++) {
            
            if (l != 11)
                { std::cout << "Comparing expected output for layer " << l << " to model output for layer " << l << " (max error / T/F within epsilon " << EPSILON << "): \n\t"; }

            switch(l) {
            case 0: { // conv 1
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l) + "_output.bin") });
                expected.loadData<Array3D_fp32>();
                std::cout << expected.compare<Array3D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array3D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            case 1: { // conv 2
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l) + "_output.bin") });
                expected.loadData<Array3D_fp32>();
                std::cout << expected.compare<Array3D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array3D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            case 2: { //mp 1
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l) + "_output.bin") });
                expected.loadData<Array3D_fp32>();
                std::cout << expected.compare<Array3D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array3D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            case 3: { // conv 3
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l) + "_output.bin") });
                expected.loadData<Array3D_fp32>();
                std::cout << expected.compare<Array3D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array3D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            case 4: { // conv 4
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l) + "_output.bin") });
                expected.loadData<Array3D_fp32>();
                std::cout << expected.compare<Array3D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array3D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            case 5: { // mp 2
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l) + "_output.bin") });
                expected.loadData<Array3D_fp32>();
                std::cout << expected.compare<Array3D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array3D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            case 6: { // conv 5
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l) + "_output.bin") });
                expected.loadData<Array3D_fp32>();
                std::cout << expected.compare<Array3D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array3D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            case 7: { // conv 6
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l) + "_output.bin") });
                expected.loadData<Array3D_fp32>();
                std::cout << expected.compare<Array3D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array3D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            case 8: { // mp 3
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l) + "_output.bin") });
                expected.loadData<Array3D_fp32>();
                std::cout << expected.compare<Array3D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array3D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            case 9: { // flatten
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l) + "_output.bin") });
                expected.loadData<Array1D_fp32>();
                std::cout << expected.compare<Array1D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array1D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            case 10: { // dense 1
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l) + "_output.bin") });
                expected.loadData<Array1D_fp32>();
                std::cout << expected.compare<Array1D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array1D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            case 12: { //dense 2 & softmax
                LayerData output = this->layers[l]->getOutputData();
                LayerData expected({ sizeof(fp32), output.getParams().dims, basePath / std::string(imgname + "_data" + "/layer_" + std::to_string(l-1) + "_output.bin") });
                expected.loadData<Array1D_fp32>();
                std::cout << expected.compare<Array1D_fp32>(output) << " / "
                        << std::boolalpha << bool(expected.compareWithin<Array1D_fp32>(output, EPSILON))
                        << std::endl;
                break;
            }
            }
        }
    }
}
