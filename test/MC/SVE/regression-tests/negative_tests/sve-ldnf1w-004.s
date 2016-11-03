// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64CLoadNF4SIZ
// Immediate out of lower bound [-8, 7].
ldnf1w z21.d, p0/z, [x3, #-9, MUL VL]
// CHECK: error: index must be an integer in range [-8, 7].
