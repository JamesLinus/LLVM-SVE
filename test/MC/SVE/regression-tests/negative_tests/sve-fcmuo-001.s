// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecF32CmpUNVVZ
// Restricted predicate has range [0, 7].
fcmuo p13.s, p8/z, z30.s, z6.s
// CHECK: error: invalid operand
