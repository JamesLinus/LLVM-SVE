// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64MulHVVM
// Restricted predicate has range [0, 7].
smulh z11.d, p8/m, z11.d, z20.d
// CHECK: error: invalid operand
