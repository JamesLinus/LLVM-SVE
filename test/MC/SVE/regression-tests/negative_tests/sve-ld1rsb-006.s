// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64LoadDup1SIZ
// Restricted predicate has range [0, 7].
ld1rsb z7.d, p8/z, [x10, #39]
// CHECK: error: invalid operand
