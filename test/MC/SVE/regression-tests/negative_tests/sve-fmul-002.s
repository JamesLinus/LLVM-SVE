// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecD64MulVVM
// Restricted predicate has range [0, 7].
fmul z12.d, p8/m, z12.d, z21.d
// CHECK: error: invalid operand
