// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64LoadFF8SVZ
// Restricted predicate has range [0, 7].
ldff1d z14.d, p8/z, [x12, z25.d, lsl #3]
// CHECK: error: invalid operand
