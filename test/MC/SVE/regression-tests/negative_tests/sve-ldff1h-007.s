// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU32LoadFF2XSVZ
// Restricted predicate has range [0, 7].
ldff1h z8.s, p8/z, [x0, z8.s, sxtw #1]
// CHECK: error: invalid operand
