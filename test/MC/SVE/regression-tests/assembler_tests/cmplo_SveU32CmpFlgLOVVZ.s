// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
cmplo   p0.s, p0/z, z0.s, z0.s  // 00100100-10000000-00000000-00010000
// CHECK: cmphi   p0.s, p0/z, z0.s, z0.s // encoding: [0x10,0x00,0x80,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10000000-00000000-00010000
CMPLO   P0.S, P0/Z, Z0.S, Z0.S  // 00100100-10000000-00000000-00010000
// CHECK: cmphi   p0.s, p0/z, z0.s, z0.s // encoding: [0x10,0x00,0x80,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10000000-00000000-00010000
cmplo   p15.s, p7/z, z31.s, z31.s  // 00100100-10011111-00011111-11111111
// CHECK: cmphi   p15.s, p7/z, z31.s, z31.s // encoding: [0xff,0x1f,0x9f,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10011111-00011111-11111111
CMPLO   P15.S, P7/Z, Z31.S, Z31.S  // 00100100-10011111-00011111-11111111
// CHECK: cmphi   p15.s, p7/z, z31.s, z31.s // encoding: [0xff,0x1f,0x9f,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10011111-00011111-11111111
cmplo   p5.s, p5/z, z21.s, z10.s  // 00100100-10010101-00010101-01010101
// CHECK: cmphi   p5.s, p5/z, z10.s, z21.s // encoding: [0x55,0x15,0x95,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10010101-00010101-01010101
CMPLO   P5.S, P5/Z, Z21.S, Z10.S  // 00100100-10010101-00010101-01010101
// CHECK: cmphi   p5.s, p5/z, z10.s, z21.s // encoding: [0x55,0x15,0x95,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10010101-00010101-01010101
cmplo   p7.s, p3/z, z8.s, z13.s  // 00100100-10001000-00001101-10110111
// CHECK: cmphi   p7.s, p3/z, z13.s, z8.s // encoding: [0xb7,0x0d,0x88,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10001000-00001101-10110111
CMPLO   P7.S, P3/Z, Z8.S, Z13.S  // 00100100-10001000-00001101-10110111
// CHECK: cmphi   p7.s, p3/z, z13.s, z8.s // encoding: [0xb7,0x0d,0x88,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-10001000-00001101-10110111
