// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU8OrVVM
// Source and Destination Registers must match
orr z11.b, p0/m, z12.b, z14.b
// CHECK: error: operand must match destination register
