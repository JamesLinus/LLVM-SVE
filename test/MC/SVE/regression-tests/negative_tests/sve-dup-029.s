// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU8ExtDupVI
// Immediate not compatible with encode/decode function.
dup z21.b, z1.b[-1]
// CHECK: error: vector lane must be an integer in range [0, 63].
