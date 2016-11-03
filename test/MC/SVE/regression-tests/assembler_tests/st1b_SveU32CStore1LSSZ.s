// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
st1b    {z5.s}, p3, [x17, x16]  // 11100100-01010000-01001110-00100101
// CHECK: st1b    {z5.s}, p3, [x17, x16] // encoding: [0x25,0x4e,0x50,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-01010000-01001110-00100101
ST1B    {Z5.S}, P3, [X17, X16]  // 11100100-01010000-01001110-00100101
// CHECK: st1b    {z5.s}, p3, [x17, x16] // encoding: [0x25,0x4e,0x50,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-01010000-01001110-00100101
st1b    {z0.s}, p0, [x0, x0]  // 11100100-01000000-01000000-00000000
// CHECK: st1b    {z0.s}, p0, [x0, x0] // encoding: [0x00,0x40,0x40,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-01000000-01000000-00000000
ST1B    {Z0.S}, P0, [X0, X0]  // 11100100-01000000-01000000-00000000
// CHECK: st1b    {z0.s}, p0, [x0, x0] // encoding: [0x00,0x40,0x40,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-01000000-01000000-00000000
st1b    {z21.s}, p5, [x10, x21]  // 11100100-01010101-01010101-01010101
// CHECK: st1b    {z21.s}, p5, [x10, x21] // encoding: [0x55,0x55,0x55,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-01010101-01010101-01010101
ST1B    {Z21.S}, P5, [X10, X21]  // 11100100-01010101-01010101-01010101
// CHECK: st1b    {z21.s}, p5, [x10, x21] // encoding: [0x55,0x55,0x55,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-01010101-01010101-01010101
st1b    {z23.s}, p3, [x13, x8]  // 11100100-01001000-01001101-10110111
// CHECK: st1b    {z23.s}, p3, [x13, x8] // encoding: [0xb7,0x4d,0x48,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-01001000-01001101-10110111
ST1B    {Z23.S}, P3, [X13, X8]  // 11100100-01001000-01001101-10110111
// CHECK: st1b    {z23.s}, p3, [x13, x8] // encoding: [0xb7,0x4d,0x48,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-01001000-01001101-10110111
