// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64IndexIS
// Immediate out of lower bound [-16, 15].
index z21.d, #-17, x28
// CHECK: error: index must be an integer in range [-16, 15].
