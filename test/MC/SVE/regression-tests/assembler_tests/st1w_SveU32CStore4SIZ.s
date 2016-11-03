// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
st1w    {z21.s}, p5, [x10, #5, mul vl]  // 11100101-01000101-11110101-01010101
// CHECK: st1w    {z21.s}, p5, [x10, #5, mul vl] // encoding: [0x55,0xf5,0x45,0xe5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100101-01000101-11110101-01010101
ST1W    {Z21.S}, P5, [X10, #5, MUL VL]  // 11100101-01000101-11110101-01010101
// CHECK: st1w    {z21.s}, p5, [x10, #5, mul vl] // encoding: [0x55,0xf5,0x45,0xe5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100101-01000101-11110101-01010101
st1w    {z31.s}, p7, [sp, #-1, mul vl]  // 11100101-01001111-11111111-11111111
// CHECK: st1w    {z31.s}, p7, [sp, #-1, mul vl] // encoding: [0xff,0xff,0x4f,0xe5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100101-01001111-11111111-11111111
ST1W    {Z31.S}, P7, [SP, #-1, MUL VL]  // 11100101-01001111-11111111-11111111
// CHECK: st1w    {z31.s}, p7, [sp, #-1, mul vl] // encoding: [0xff,0xff,0x4f,0xe5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100101-01001111-11111111-11111111
st1w    {z23.s}, p3, [x13, #-8, mul vl]  // 11100101-01001000-11101101-10110111
// CHECK: st1w    {z23.s}, p3, [x13, #-8, mul vl] // encoding: [0xb7,0xed,0x48,0xe5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100101-01001000-11101101-10110111
ST1W    {Z23.S}, P3, [X13, #-8, MUL VL]  // 11100101-01001000-11101101-10110111
// CHECK: st1w    {z23.s}, p3, [x13, #-8, mul vl] // encoding: [0xb7,0xed,0x48,0xe5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100101-01001000-11101101-10110111
st1w    {z0.s}, p0, [x0]  // 11100101-01000000-11100000-00000000
// CHECK: st1w    {z0.s}, p0, [x0] // encoding: [0x00,0xe0,0x40,0xe5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100101-01000000-11100000-00000000
ST1W    {Z0.S}, P0, [X0]  // 11100101-01000000-11100000-00000000
// CHECK: st1w    {z0.s}, p0, [x0] // encoding: [0x00,0xe0,0x40,0xe5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100101-01000000-11100000-00000000
