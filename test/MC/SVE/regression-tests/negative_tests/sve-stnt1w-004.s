// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU32CStoreNT4SIZ
// Immediate out of upper bound [-8, 7].
stnt1w z2.s, p0, [x29, #8, MUL VL]
// CHECK: error: index must be an integer in range [-8, 7].
