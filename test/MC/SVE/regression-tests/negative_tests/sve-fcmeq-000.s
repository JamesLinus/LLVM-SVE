// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecD64CmpEQV0Z
// Restricted predicate has range [0, 7].
fcmeq p12.d, p8/z, z19.d, #0.0
// CHECK: error: invalid operand
