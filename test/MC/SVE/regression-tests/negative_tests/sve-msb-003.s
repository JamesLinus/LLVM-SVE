// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS8MSUBVVVM
// Restricted predicate has range [0, 7].
msb z18.b, p8/m, z18.b, z30.b
// CHECK: error: invalid operand
