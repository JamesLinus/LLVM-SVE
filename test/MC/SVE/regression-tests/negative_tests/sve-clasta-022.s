// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU8VCondXAVV
// Restricted predicate has range [0, 7].
clasta z21.b, p8, z21.b, z27.b
// CHECK: error: invalid operand
