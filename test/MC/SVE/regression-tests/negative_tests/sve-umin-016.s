// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU8MinVIX
// Immediate out of upper bound [0, 255].
umin z24.b, z24.b, #256
// CHECK: error: immediate must be an integer in range [0, 255].
