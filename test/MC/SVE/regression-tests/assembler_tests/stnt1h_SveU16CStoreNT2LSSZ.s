// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
stnt1h  {z0.h}, p0, [x0, x0, lsl #1]  // 11100100-10000000-01100000-00000000
// CHECK: stnt1h  {z0.h}, p0, [x0, x0, lsl #1] // encoding: [0x00,0x60,0x80,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10000000-01100000-00000000
STNT1H  {Z0.H}, P0, [X0, X0, LSL #1]  // 11100100-10000000-01100000-00000000
// CHECK: stnt1h  {z0.h}, p0, [x0, x0, lsl #1] // encoding: [0x00,0x60,0x80,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10000000-01100000-00000000
stnt1h  {z23.h}, p3, [x13, x8, lsl #1]  // 11100100-10001000-01101101-10110111
// CHECK: stnt1h  {z23.h}, p3, [x13, x8, lsl #1] // encoding: [0xb7,0x6d,0x88,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10001000-01101101-10110111
STNT1H  {Z23.H}, P3, [X13, X8, LSL #1]  // 11100100-10001000-01101101-10110111
// CHECK: stnt1h  {z23.h}, p3, [x13, x8, lsl #1] // encoding: [0xb7,0x6d,0x88,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10001000-01101101-10110111
stnt1h  {z5.h}, p3, [x17, x16, lsl #1]  // 11100100-10010000-01101110-00100101
// CHECK: stnt1h  {z5.h}, p3, [x17, x16, lsl #1] // encoding: [0x25,0x6e,0x90,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10010000-01101110-00100101
STNT1H  {Z5.H}, P3, [X17, X16, LSL #1]  // 11100100-10010000-01101110-00100101
// CHECK: stnt1h  {z5.h}, p3, [x17, x16, lsl #1] // encoding: [0x25,0x6e,0x90,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10010000-01101110-00100101
stnt1h  {z21.h}, p5, [x10, x21, lsl #1]  // 11100100-10010101-01110101-01010101
// CHECK: stnt1h  {z21.h}, p5, [x10, x21, lsl #1] // encoding: [0x55,0x75,0x95,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10010101-01110101-01010101
STNT1H  {Z21.H}, P5, [X10, X21, LSL #1]  // 11100100-10010101-01110101-01010101
// CHECK: stnt1h  {z21.h}, p5, [x10, x21, lsl #1] // encoding: [0x55,0x75,0x95,0xe4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11100100-10010101-01110101-01010101
