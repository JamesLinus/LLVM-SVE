// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS32LoadFF2SVZ
// Restricted predicate has range [0, 7].
ldff1sh z0.s, p8/z, [x4, z1.s, uxtw #1]
// CHECK: error: invalid operand
