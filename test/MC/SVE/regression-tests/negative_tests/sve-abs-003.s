// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS8AbsVM
// Restricted predicate has range [0, 7].
abs z17.b, p8/m, z9.b
// CHECK: error: invalid operand
