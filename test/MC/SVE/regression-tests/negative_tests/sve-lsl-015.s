// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU32ShlVIX
// Immediate not compatible with encode/decode function.
lsl z11.s, z13.s, #32
// CHECK: error: immediate must be an integer in range [0, 31]
