// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64Prefetch4VI
// Immediate out of lower bound [0, 124].
prfw #7, p3, [z20.d, #-1]
// CHECK: error: index must be a multiple of 4 in range [0, 124].
