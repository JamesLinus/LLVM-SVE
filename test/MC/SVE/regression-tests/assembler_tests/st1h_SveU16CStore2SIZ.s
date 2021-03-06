// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
st1h    {z21.h}, p5, [x10, #5, mul vl]  // 11100100-10100101-11110101-01010101
// CHECK: st1h    {z21.h}, p5, [x10, #5, mul vl] // encoding: [0x55,0xf5,0xa5,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10100101-11110101-01010101
ST1H    {Z21.H}, P5, [X10, #5, MUL VL]  // 11100100-10100101-11110101-01010101
// CHECK: st1h    {z21.h}, p5, [x10, #5, mul vl] // encoding: [0x55,0xf5,0xa5,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10100101-11110101-01010101
st1h    {z23.h}, p3, [x13, #-8, mul vl]  // 11100100-10101000-11101101-10110111
// CHECK: st1h    {z23.h}, p3, [x13, #-8, mul vl] // encoding: [0xb7,0xed,0xa8,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10101000-11101101-10110111
ST1H    {Z23.H}, P3, [X13, #-8, MUL VL]  // 11100100-10101000-11101101-10110111
// CHECK: st1h    {z23.h}, p3, [x13, #-8, mul vl] // encoding: [0xb7,0xed,0xa8,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10101000-11101101-10110111
st1h    {z0.h}, p0, [x0]  // 11100100-10100000-11100000-00000000
// CHECK: st1h    {z0.h}, p0, [x0] // encoding: [0x00,0xe0,0xa0,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10100000-11100000-00000000
ST1H    {Z0.H}, P0, [X0]  // 11100100-10100000-11100000-00000000
// CHECK: st1h    {z0.h}, p0, [x0] // encoding: [0x00,0xe0,0xa0,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10100000-11100000-00000000
st1h    {z31.h}, p7, [sp, #-1, mul vl]  // 11100100-10101111-11111111-11111111
// CHECK: st1h    {z31.h}, p7, [sp, #-1, mul vl] // encoding: [0xff,0xff,0xaf,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10101111-11111111-11111111
ST1H    {Z31.H}, P7, [SP, #-1, MUL VL]  // 11100100-10101111-11111111-11111111
// CHECK: st1h    {z31.h}, p7, [sp, #-1, mul vl] // encoding: [0xff,0xff,0xaf,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10101111-11111111-11111111
