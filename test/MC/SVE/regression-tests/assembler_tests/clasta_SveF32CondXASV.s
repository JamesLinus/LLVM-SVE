// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
clasta  s23, p3, s23, z13.s  // 00000101-10101010-10001101-10110111
// CHECK: clasta  s23, p3, s23, z13.s // encoding: [0xb7,0x8d,0xaa,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10101010-10001101-10110111
CLASTA  S23, P3, S23, Z13.S  // 00000101-10101010-10001101-10110111
// CHECK: clasta  s23, p3, s23, z13.s // encoding: [0xb7,0x8d,0xaa,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10101010-10001101-10110111
clasta  s0, p0, s0, z0.s  // 00000101-10101010-10000000-00000000
// CHECK: clasta  s0, p0, s0, z0.s // encoding: [0x00,0x80,0xaa,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10101010-10000000-00000000
CLASTA  S0, P0, S0, Z0.S  // 00000101-10101010-10000000-00000000
// CHECK: clasta  s0, p0, s0, z0.s // encoding: [0x00,0x80,0xaa,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10101010-10000000-00000000
clasta  s21, p5, s21, z10.s  // 00000101-10101010-10010101-01010101
// CHECK: clasta  s21, p5, s21, z10.s // encoding: [0x55,0x95,0xaa,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10101010-10010101-01010101
CLASTA  S21, P5, S21, Z10.S  // 00000101-10101010-10010101-01010101
// CHECK: clasta  s21, p5, s21, z10.s // encoding: [0x55,0x95,0xaa,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10101010-10010101-01010101
clasta  s31, p7, s31, z31.s  // 00000101-10101010-10011111-11111111
// CHECK: clasta  s31, p7, s31, z31.s // encoding: [0xff,0x9f,0xaa,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10101010-10011111-11111111
CLASTA  S31, P7, S31, Z31.S  // 00000101-10101010-10011111-11111111
// CHECK: clasta  s31, p7, s31, z31.s // encoding: [0xff,0x9f,0xaa,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10101010-10011111-11111111
