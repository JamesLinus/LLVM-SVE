// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64CmpFlgGTVVZ
// Restricted predicate has range [0, 7].
cmphi p0.d, p8/z, z26.d, z8.d
// CHECK: error: invalid operand
