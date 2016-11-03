// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
cmpge   p5.s, p5/z, z10.s, z21.s  // 00100100-10010101-10010101-01000101
// CHECK: cmpge   p5.s, p5/z, z10.s, z21.s // encoding: [0x45,0x95,0x95,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10010101-10010101-01000101
CMPGE   P5.S, P5/Z, Z10.S, Z21.S  // 00100100-10010101-10010101-01000101
// CHECK: cmpge   p5.s, p5/z, z10.s, z21.s // encoding: [0x45,0x95,0x95,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10010101-10010101-01000101
cmpge   p0.s, p0/z, z0.s, z0.s  // 00100100-10000000-10000000-00000000
// CHECK: cmpge   p0.s, p0/z, z0.s, z0.s // encoding: [0x00,0x80,0x80,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10000000-10000000-00000000
CMPGE   P0.S, P0/Z, Z0.S, Z0.S  // 00100100-10000000-10000000-00000000
// CHECK: cmpge   p0.s, p0/z, z0.s, z0.s // encoding: [0x00,0x80,0x80,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10000000-10000000-00000000
cmpge   p15.s, p7/z, z31.s, z31.s  // 00100100-10011111-10011111-11101111
// CHECK: cmpge   p15.s, p7/z, z31.s, z31.s // encoding: [0xef,0x9f,0x9f,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10011111-10011111-11101111
CMPGE   P15.S, P7/Z, Z31.S, Z31.S  // 00100100-10011111-10011111-11101111
// CHECK: cmpge   p15.s, p7/z, z31.s, z31.s // encoding: [0xef,0x9f,0x9f,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10011111-10011111-11101111
cmpge   p7.s, p3/z, z13.s, z8.s  // 00100100-10001000-10001101-10100111
// CHECK: cmpge   p7.s, p3/z, z13.s, z8.s // encoding: [0xa7,0x8d,0x88,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10001000-10001101-10100111
CMPGE   P7.S, P3/Z, Z13.S, Z8.S  // 00100100-10001000-10001101-10100111
// CHECK: cmpge   p7.s, p3/z, z13.s, z8.s // encoding: [0xa7,0x8d,0x88,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10001000-10001101-10100111
