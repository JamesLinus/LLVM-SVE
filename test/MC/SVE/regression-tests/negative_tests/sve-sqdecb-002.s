// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// XFAIL: *
// VecS8QDecrVL4SI
// Source and Destination Registers must match
sqdecb x1, w2, pow2, MUL #1
// CHECK: error: operand must match destination register
