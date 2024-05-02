// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCOMPUTEPOINTHLS_H
#define XCOMPUTEPOINTHLS_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcomputepointhls_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XComputepointhls_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XComputepointhls;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XComputepointhls_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XComputepointhls_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XComputepointhls_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XComputepointhls_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XComputepointhls_Initialize(XComputepointhls *InstancePtr, u16 DeviceId);
XComputepointhls_Config* XComputepointhls_LookupConfig(u16 DeviceId);
int XComputepointhls_CfgInitialize(XComputepointhls *InstancePtr, XComputepointhls_Config *ConfigPtr);
#else
int XComputepointhls_Initialize(XComputepointhls *InstancePtr, const char* InstanceName);
int XComputepointhls_Release(XComputepointhls *InstancePtr);
#endif

void XComputepointhls_Start(XComputepointhls *InstancePtr);
u32 XComputepointhls_IsDone(XComputepointhls *InstancePtr);
u32 XComputepointhls_IsIdle(XComputepointhls *InstancePtr);
u32 XComputepointhls_IsReady(XComputepointhls *InstancePtr);
void XComputepointhls_Continue(XComputepointhls *InstancePtr);
void XComputepointhls_EnableAutoRestart(XComputepointhls *InstancePtr);
void XComputepointhls_DisableAutoRestart(XComputepointhls *InstancePtr);

void XComputepointhls_Set_dataIn(XComputepointhls *InstancePtr, u64 Data);
u64 XComputepointhls_Get_dataIn(XComputepointhls *InstancePtr);
void XComputepointhls_Set_layerWeight(XComputepointhls *InstancePtr, u64 Data);
u64 XComputepointhls_Get_layerWeight(XComputepointhls *InstancePtr);
void XComputepointhls_Set_dataOut_final(XComputepointhls *InstancePtr, u64 Data);
u64 XComputepointhls_Get_dataOut_final(XComputepointhls *InstancePtr);

void XComputepointhls_InterruptGlobalEnable(XComputepointhls *InstancePtr);
void XComputepointhls_InterruptGlobalDisable(XComputepointhls *InstancePtr);
void XComputepointhls_InterruptEnable(XComputepointhls *InstancePtr, u32 Mask);
void XComputepointhls_InterruptDisable(XComputepointhls *InstancePtr, u32 Mask);
void XComputepointhls_InterruptClear(XComputepointhls *InstancePtr, u32 Mask);
u32 XComputepointhls_InterruptGetEnabled(XComputepointhls *InstancePtr);
u32 XComputepointhls_InterruptGetStatus(XComputepointhls *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
