// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64CLoad1SIZ
// Immediate out of upper bound [-8, 7].
ld1b z7.d, p1/z, [x11, #8, MUL VL]
// CHECK: error: index must be an integer in range [-8, 7].
