// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64CmpFlgGEVIZ
// Immediate out of upper bound [-16, 15].
cmpge p0.d, p0/z, z7.d, #16
// CHECK: error: index must be an integer in range [-16, 15].
