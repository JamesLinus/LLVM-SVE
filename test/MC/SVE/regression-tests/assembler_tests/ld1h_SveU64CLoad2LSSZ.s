// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ld1h    {z21.d}, p5/z, [x10, x21, lsl #1]  // 10100100-11110101-01010101-01010101
// CHECK: ld1h    {z21.d}, p5/z, [x10, x21, lsl #1] // encoding: [0x55,0x55,0xf5,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-11110101-01010101-01010101
LD1H    {Z21.D}, P5/Z, [X10, X21, LSL #1]  // 10100100-11110101-01010101-01010101
// CHECK: ld1h    {z21.d}, p5/z, [x10, x21, lsl #1] // encoding: [0x55,0x55,0xf5,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-11110101-01010101-01010101
ld1h    {z0.d}, p0/z, [x0, x0, lsl #1]  // 10100100-11100000-01000000-00000000
// CHECK: ld1h    {z0.d}, p0/z, [x0, x0, lsl #1] // encoding: [0x00,0x40,0xe0,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-11100000-01000000-00000000
LD1H    {Z0.D}, P0/Z, [X0, X0, LSL #1]  // 10100100-11100000-01000000-00000000
// CHECK: ld1h    {z0.d}, p0/z, [x0, x0, lsl #1] // encoding: [0x00,0x40,0xe0,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-11100000-01000000-00000000
ld1h    {z23.d}, p3/z, [x13, x8, lsl #1]  // 10100100-11101000-01001101-10110111
// CHECK: ld1h    {z23.d}, p3/z, [x13, x8, lsl #1] // encoding: [0xb7,0x4d,0xe8,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-11101000-01001101-10110111
LD1H    {Z23.D}, P3/Z, [X13, X8, LSL #1]  // 10100100-11101000-01001101-10110111
// CHECK: ld1h    {z23.d}, p3/z, [x13, x8, lsl #1] // encoding: [0xb7,0x4d,0xe8,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-11101000-01001101-10110111
ld1h    {z5.d}, p3/z, [x17, x16, lsl #1]  // 10100100-11110000-01001110-00100101
// CHECK: ld1h    {z5.d}, p3/z, [x17, x16, lsl #1] // encoding: [0x25,0x4e,0xf0,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-11110000-01001110-00100101
LD1H    {Z5.D}, P3/Z, [X17, X16, LSL #1]  // 10100100-11110000-01001110-00100101
// CHECK: ld1h    {z5.d}, p3/z, [x17, x16, lsl #1] // encoding: [0x25,0x4e,0xf0,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-11110000-01001110-00100101
