// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU16OrVVM
// Restricted predicate has range [0, 7].
orr z6.h, p8/m, z6.h, z30.h
// CHECK: error: invalid operand
