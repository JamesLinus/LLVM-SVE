// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecF32FromU4VM
// Restricted predicate has range [0, 7].
ucvtf z6.s, p8/m, z29.s
// CHECK: error: invalid operand
