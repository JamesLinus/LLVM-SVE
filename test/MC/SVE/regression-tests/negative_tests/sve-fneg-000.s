// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecD64NegVM
// Restricted predicate has range [0, 7].
fneg z15.d, p8/m, z27.d
// CHECK: error: invalid operand
