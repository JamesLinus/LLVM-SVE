// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
cmphs   p15.d, p7/z, z31.d, z31.d  // 00100100-11011111-00011111-11101111
// CHECK: cmphs   p15.d, p7/z, z31.d, z31.d // encoding: [0xef,0x1f,0xdf,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11011111-00011111-11101111
CMPHS   P15.D, P7/Z, Z31.D, Z31.D  // 00100100-11011111-00011111-11101111
// CHECK: cmphs   p15.d, p7/z, z31.d, z31.d // encoding: [0xef,0x1f,0xdf,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11011111-00011111-11101111
cmphs   p5.d, p5/z, z10.d, z21.d  // 00100100-11010101-00010101-01000101
// CHECK: cmphs   p5.d, p5/z, z10.d, z21.d // encoding: [0x45,0x15,0xd5,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11010101-00010101-01000101
CMPHS   P5.D, P5/Z, Z10.D, Z21.D  // 00100100-11010101-00010101-01000101
// CHECK: cmphs   p5.d, p5/z, z10.d, z21.d // encoding: [0x45,0x15,0xd5,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11010101-00010101-01000101
cmphs   p0.d, p0/z, z0.d, z0.d  // 00100100-11000000-00000000-00000000
// CHECK: cmphs   p0.d, p0/z, z0.d, z0.d // encoding: [0x00,0x00,0xc0,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11000000-00000000-00000000
CMPHS   P0.D, P0/Z, Z0.D, Z0.D  // 00100100-11000000-00000000-00000000
// CHECK: cmphs   p0.d, p0/z, z0.d, z0.d // encoding: [0x00,0x00,0xc0,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11000000-00000000-00000000
cmphs   p7.d, p3/z, z13.d, z8.d  // 00100100-11001000-00001101-10100111
// CHECK: cmphs   p7.d, p3/z, z13.d, z8.d // encoding: [0xa7,0x0d,0xc8,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11001000-00001101-10100111
CMPHS   P7.D, P3/Z, Z13.D, Z8.D  // 00100100-11001000-00001101-10100111
// CHECK: cmphs   p7.d, p3/z, z13.d, z8.d // encoding: [0xa7,0x0d,0xc8,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11001000-00001101-10100111
