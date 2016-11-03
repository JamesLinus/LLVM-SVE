// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
st1h    {z23.d}, p3, [x13, #-8, mul vl]  // 11100100-11101000-11101101-10110111
// CHECK: st1h    {z23.d}, p3, [x13, #-8, mul vl] // encoding: [0xb7,0xed,0xe8,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11101000-11101101-10110111
ST1H    {Z23.D}, P3, [X13, #-8, MUL VL]  // 11100100-11101000-11101101-10110111
// CHECK: st1h    {z23.d}, p3, [x13, #-8, mul vl] // encoding: [0xb7,0xed,0xe8,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11101000-11101101-10110111
st1h    {z0.d}, p0, [x0]  // 11100100-11100000-11100000-00000000
// CHECK: st1h    {z0.d}, p0, [x0] // encoding: [0x00,0xe0,0xe0,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11100000-11100000-00000000
ST1H    {Z0.D}, P0, [X0]  // 11100100-11100000-11100000-00000000
// CHECK: st1h    {z0.d}, p0, [x0] // encoding: [0x00,0xe0,0xe0,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11100000-11100000-00000000
st1h    {z21.d}, p5, [x10, #5, mul vl]  // 11100100-11100101-11110101-01010101
// CHECK: st1h    {z21.d}, p5, [x10, #5, mul vl] // encoding: [0x55,0xf5,0xe5,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11100101-11110101-01010101
ST1H    {Z21.D}, P5, [X10, #5, MUL VL]  // 11100100-11100101-11110101-01010101
// CHECK: st1h    {z21.d}, p5, [x10, #5, mul vl] // encoding: [0x55,0xf5,0xe5,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11100101-11110101-01010101
st1h    {z31.d}, p7, [sp, #-1, mul vl]  // 11100100-11101111-11111111-11111111
// CHECK: st1h    {z31.d}, p7, [sp, #-1, mul vl] // encoding: [0xff,0xff,0xef,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11101111-11111111-11111111
ST1H    {Z31.D}, P7, [SP, #-1, MUL VL]  // 11100100-11101111-11111111-11111111
// CHECK: st1h    {z31.d}, p7, [sp, #-1, mul vl] // encoding: [0xff,0xff,0xef,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11101111-11111111-11111111
