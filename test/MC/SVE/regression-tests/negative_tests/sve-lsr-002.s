// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU16ShrVIM
// Restricted predicate has range [0, 7].
lsr z3.h, p8/m, z3.h, #1
// CHECK: error: invalid operand
