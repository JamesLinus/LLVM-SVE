// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecD64DupIM
// Immediate not compatible with encode/decode function.
fcpy z16.d, p11/m, #0.1128125
// CHECK: error: expected compatible register or floating-point constant
