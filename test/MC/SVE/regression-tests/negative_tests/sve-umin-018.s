// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU8MinVVM
// Restricted predicate has range [0, 7].
umin z22.b, p8/m, z22.b, z28.b
// CHECK: error: invalid operand
