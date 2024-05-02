#pragma once

#include "Layer.h"
#include "../Utils.h"
#include "../Types.h"

namespace ML {
    class MaxPoolingLayer : public Layer {
        public:
            MaxPoolingLayer(const LayerParams inParams, const LayerParams outParams)
                : Layer(inParams, outParams, LayerType::MAX_POOLING, ActivationType::NONE, false) {}
            MaxPoolingLayer(const LayerParams inParams, const LayerParams outParams, bool perf)
                : Layer(inParams, outParams, LayerType::MAX_POOLING, ActivationType::NONE, perf) {}

            // Allocate all resources needed for the layer & Load all of the required data for the layer
            template<typename T>
            void allocateLayer() {
                Layer::allocateOutputBuffer<Array3D<T>>();
            }

            // Fre all resources allocated for the layer
            template<typename T>
            void freeLayer() {
                Layer::freeOutputBuffer<Array3D<T>>();
            }

            // Virtual functions
            virtual void computeNaive(const LayerData &dataIn) const override;
            virtual void computeThreaded(const LayerData &dataIn) const override;
            virtual void computeTiled(const LayerData &dataIn) const override;
            virtual void computeSIMD(const LayerData &dataIn) const override;

        private:
            
    };

}