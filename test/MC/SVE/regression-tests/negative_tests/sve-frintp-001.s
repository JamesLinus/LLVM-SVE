// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecF32FRIntPVM
// Restricted predicate has range [0, 7].
frintp z26.s, p8/m, z20.s
// CHECK: error: invalid operand
