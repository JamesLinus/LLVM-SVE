// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64Store8YVSZ
// Restricted predicate has range [0, 7].
st1d z24.d, p8, [x0, z19.d, uxtw]
// CHECK: error: invalid operand
