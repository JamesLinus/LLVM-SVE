// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64Load4YVSZ
// Restricted predicate has range [0, 7].
ld1sw z25.d, p8/z, [x29, z17.d, uxtw]
// CHECK: error: invalid operand
