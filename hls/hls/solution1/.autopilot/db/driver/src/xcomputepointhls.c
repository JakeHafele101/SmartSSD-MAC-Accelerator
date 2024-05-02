// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcomputepointhls.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XComputepointhls_CfgInitialize(XComputepointhls *InstancePtr, XComputepointhls_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XComputepointhls_Start(XComputepointhls *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XComputepointhls_IsDone(XComputepointhls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XComputepointhls_IsIdle(XComputepointhls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XComputepointhls_IsReady(XComputepointhls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XComputepointhls_Continue(XComputepointhls *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XComputepointhls_EnableAutoRestart(XComputepointhls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XComputepointhls_DisableAutoRestart(XComputepointhls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_AP_CTRL, 0);
}

void XComputepointhls_Set_dataIn(XComputepointhls *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_DATAIN_DATA, (u32)(Data));
    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_DATAIN_DATA + 4, (u32)(Data >> 32));
}

u64 XComputepointhls_Get_dataIn(XComputepointhls *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_DATAIN_DATA);
    Data += (u64)XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_DATAIN_DATA + 4) << 32;
    return Data;
}

void XComputepointhls_Set_layerWeight(XComputepointhls *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_LAYERWEIGHT_DATA, (u32)(Data));
    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_LAYERWEIGHT_DATA + 4, (u32)(Data >> 32));
}

u64 XComputepointhls_Get_layerWeight(XComputepointhls *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_LAYERWEIGHT_DATA);
    Data += (u64)XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_LAYERWEIGHT_DATA + 4) << 32;
    return Data;
}

void XComputepointhls_Set_dataOut_final(XComputepointhls *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_DATAOUT_FINAL_DATA, (u32)(Data));
    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_DATAOUT_FINAL_DATA + 4, (u32)(Data >> 32));
}

u64 XComputepointhls_Get_dataOut_final(XComputepointhls *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_DATAOUT_FINAL_DATA);
    Data += (u64)XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_DATAOUT_FINAL_DATA + 4) << 32;
    return Data;
}

void XComputepointhls_InterruptGlobalEnable(XComputepointhls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_GIE, 1);
}

void XComputepointhls_InterruptGlobalDisable(XComputepointhls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_GIE, 0);
}

void XComputepointhls_InterruptEnable(XComputepointhls *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_IER);
    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_IER, Register | Mask);
}

void XComputepointhls_InterruptDisable(XComputepointhls *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_IER);
    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XComputepointhls_InterruptClear(XComputepointhls *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XComputepointhls_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_ISR, Mask);
}

u32 XComputepointhls_InterruptGetEnabled(XComputepointhls *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_IER);
}

u32 XComputepointhls_InterruptGetStatus(XComputepointhls *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XComputepointhls_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTEPOINTHLS_CONTROL_ADDR_ISR);
}

