// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64Load2SVZ
// Restricted predicate has range [0, 7].
ld1sh z13.d, p8/z, [x20, z6.d, lsl #1]
// CHECK: error: invalid operand
