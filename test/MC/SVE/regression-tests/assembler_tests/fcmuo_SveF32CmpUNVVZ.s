// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
fcmuo   p5.s, p5/z, z10.s, z21.s  // 01100101-10010101-11010101-01000101
// CHECK: fcmuo   p5.s, p5/z, z10.s, z21.s // encoding: [0x45,0xd5,0x95,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10010101-11010101-01000101
FCMUO   P5.S, P5/Z, Z10.S, Z21.S  // 01100101-10010101-11010101-01000101
// CHECK: fcmuo   p5.s, p5/z, z10.s, z21.s // encoding: [0x45,0xd5,0x95,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10010101-11010101-01000101
fcmuo   p15.s, p7/z, z31.s, z31.s  // 01100101-10011111-11011111-11101111
// CHECK: fcmuo   p15.s, p7/z, z31.s, z31.s // encoding: [0xef,0xdf,0x9f,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10011111-11011111-11101111
FCMUO   P15.S, P7/Z, Z31.S, Z31.S  // 01100101-10011111-11011111-11101111
// CHECK: fcmuo   p15.s, p7/z, z31.s, z31.s // encoding: [0xef,0xdf,0x9f,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10011111-11011111-11101111
fcmuo   p7.s, p3/z, z13.s, z8.s  // 01100101-10001000-11001101-10100111
// CHECK: fcmuo   p7.s, p3/z, z13.s, z8.s // encoding: [0xa7,0xcd,0x88,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10001000-11001101-10100111
FCMUO   P7.S, P3/Z, Z13.S, Z8.S  // 01100101-10001000-11001101-10100111
// CHECK: fcmuo   p7.s, p3/z, z13.s, z8.s // encoding: [0xa7,0xcd,0x88,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10001000-11001101-10100111
fcmuo   p0.s, p0/z, z0.s, z0.s  // 01100101-10000000-11000000-00000000
// CHECK: fcmuo   p0.s, p0/z, z0.s, z0.s // encoding: [0x00,0xc0,0x80,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10000000-11000000-00000000
FCMUO   P0.S, P0/Z, Z0.S, Z0.S  // 01100101-10000000-11000000-00000000
// CHECK: fcmuo   p0.s, p0/z, z0.s, z0.s // encoding: [0x00,0xc0,0x80,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10000000-11000000-00000000
