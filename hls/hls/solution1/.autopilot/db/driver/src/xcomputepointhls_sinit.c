// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcomputepointhls.h"

extern XComputepointhls_Config XComputepointhls_ConfigTable[];

XComputepointhls_Config *XComputepointhls_LookupConfig(u16 DeviceId) {
	XComputepointhls_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOMPUTEPOINTHLS_NUM_INSTANCES; Index++) {
		if (XComputepointhls_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XComputepointhls_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XComputepointhls_Initialize(XComputepointhls *InstancePtr, u16 DeviceId) {
	XComputepointhls_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XComputepointhls_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XComputepointhls_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

