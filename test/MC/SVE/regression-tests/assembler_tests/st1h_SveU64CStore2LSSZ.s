// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
st1h    {z23.d}, p3, [x13, x8, lsl #1]  // 11100100-11101000-01001101-10110111
// CHECK: st1h    {z23.d}, p3, [x13, x8, lsl #1] // encoding: [0xb7,0x4d,0xe8,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11101000-01001101-10110111
ST1H    {Z23.D}, P3, [X13, X8, LSL #1]  // 11100100-11101000-01001101-10110111
// CHECK: st1h    {z23.d}, p3, [x13, x8, lsl #1] // encoding: [0xb7,0x4d,0xe8,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11101000-01001101-10110111
st1h    {z21.d}, p5, [x10, x21, lsl #1]  // 11100100-11110101-01010101-01010101
// CHECK: st1h    {z21.d}, p5, [x10, x21, lsl #1] // encoding: [0x55,0x55,0xf5,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11110101-01010101-01010101
ST1H    {Z21.D}, P5, [X10, X21, LSL #1]  // 11100100-11110101-01010101-01010101
// CHECK: st1h    {z21.d}, p5, [x10, x21, lsl #1] // encoding: [0x55,0x55,0xf5,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11110101-01010101-01010101
st1h    {z5.d}, p3, [x17, x16, lsl #1]  // 11100100-11110000-01001110-00100101
// CHECK: st1h    {z5.d}, p3, [x17, x16, lsl #1] // encoding: [0x25,0x4e,0xf0,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11110000-01001110-00100101
ST1H    {Z5.D}, P3, [X17, X16, LSL #1]  // 11100100-11110000-01001110-00100101
// CHECK: st1h    {z5.d}, p3, [x17, x16, lsl #1] // encoding: [0x25,0x4e,0xf0,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11110000-01001110-00100101
st1h    {z0.d}, p0, [x0, x0, lsl #1]  // 11100100-11100000-01000000-00000000
// CHECK: st1h    {z0.d}, p0, [x0, x0, lsl #1] // encoding: [0x00,0x40,0xe0,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11100000-01000000-00000000
ST1H    {Z0.D}, P0, [X0, X0, LSL #1]  // 11100100-11100000-01000000-00000000
// CHECK: st1h    {z0.d}, p0, [x0, x0, lsl #1] // encoding: [0x00,0x40,0xe0,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-11100000-01000000-00000000
