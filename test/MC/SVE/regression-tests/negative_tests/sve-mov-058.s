// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64MovIM
// Immediate not compatible with encode/decode function.
mov z10.d, p13/m, #-32769
// CHECK: error: immediate must be an integer in range [-128, 127] or a multiple of 256 in range [-32768, 32512]
