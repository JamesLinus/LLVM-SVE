// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU8OrReduceV
// Restricted predicate has range [0, 7].
orv b13, p8, z2.b
// CHECK: error: invalid operand
