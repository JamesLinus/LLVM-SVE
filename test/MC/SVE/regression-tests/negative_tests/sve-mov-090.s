// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64MovDupVI
// Immediate not compatible with encode/decode function.
mov z11.d, z3.d[-1]
// CHECK: error: vector lane must be an integer in range [0, 7].
