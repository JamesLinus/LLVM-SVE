// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecF64FromU8VM
// Restricted predicate has range [0, 7].
ucvtf z27.s, p8/m, z30.d
// CHECK: error: invalid operand
