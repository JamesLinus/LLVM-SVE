// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64E2Load8LSSZ
// Offset register Rm cannot be xzr
ld2d {z16.d, z17.d}, p0/z, [x6, xzr, lsl #3]
// CHECK: {{(error\:\ index\ must\ be\ an\ integer\ in\ range)|(error\:\ index\ must\ be\ a\ multiple\ of)}}
