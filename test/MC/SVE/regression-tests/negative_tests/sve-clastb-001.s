// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecB8CondXBSV
// Source and Destination Registers must match
clastb b10, p1, b11, z6.b
// CHECK: error: operand must match destination register
