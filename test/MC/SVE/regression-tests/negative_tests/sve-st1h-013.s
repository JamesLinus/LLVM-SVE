// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU32Store2VIZ
// Immediate out of upper bound [0, 62].
st1h z6.s, p1, [z19.s, #63]
// CHECK: error: index must be a multiple of 2 in range [0, 62].
