// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS8IndexIS
// Immediate out of upper bound [-16, 15].
index z26.b, #16, w16
// CHECK: error: index must be an integer in range [-16, 15].
