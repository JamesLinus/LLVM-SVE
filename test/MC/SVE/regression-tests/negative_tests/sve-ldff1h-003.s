// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU32LoadFF2VIZ
// Restricted predicate has range [0, 7].
ldff1h z26.s, p8/z, [z3.s, #11]
// CHECK: error: invalid operand
