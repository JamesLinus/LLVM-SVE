// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU32CLoadFF2LSSZ
// Restricted predicate has range [0, 7].
ldff1h z19.s, p8/z, [x29, x27, lsl #1]
// CHECK: error: invalid operand
