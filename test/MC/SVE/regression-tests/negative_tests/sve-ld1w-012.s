// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64CLoad4LSSZ
// Restricted predicate has range [0, 7].
ld1w z3.d, p8/z, [x6, x11, lsl #2]
// CHECK: error: invalid operand
