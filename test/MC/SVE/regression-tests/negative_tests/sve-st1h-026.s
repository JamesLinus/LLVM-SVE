// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64Store2VSZ
// Restricted predicate has range [0, 7].
st1h z29.d, p8, [x10, z3.d]
// CHECK: error: invalid operand
