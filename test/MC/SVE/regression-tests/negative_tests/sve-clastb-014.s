// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU32VCondXBVV
// Restricted predicate has range [0, 7].
clastb z27.s, p8, z27.s, z19.s
// CHECK: error: invalid operand
