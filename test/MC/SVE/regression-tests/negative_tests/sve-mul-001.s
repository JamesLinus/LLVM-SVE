// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS16MulVIX
// Immediate out of upper bound [-128, 127].
mul z7.h, z7.h, #128
// CHECK: error: index must be an integer in range [-128, 127].
