// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
cmphs   p0.d, p0/z, z0.d, #0  // 00100100-11100000-00000000-00000000
// CHECK: cmphs   p0.d, p0/z, z0.d, #0 // encoding: [0x00,0x00,0xe0,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11100000-00000000-00000000
CMPHS   P0.D, P0/Z, Z0.D, #0  // 00100100-11100000-00000000-00000000
// CHECK: cmphs   p0.d, p0/z, z0.d, #0 // encoding: [0x00,0x00,0xe0,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11100000-00000000-00000000
cmphs   p7.d, p3/z, z13.d, #35  // 00100100-11101000-11001101-10100111
// CHECK: cmphs   p7.d, p3/z, z13.d, #35 // encoding: [0xa7,0xcd,0xe8,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11101000-11001101-10100111
CMPHS   P7.D, P3/Z, Z13.D, #35  // 00100100-11101000-11001101-10100111
// CHECK: cmphs   p7.d, p3/z, z13.d, #35 // encoding: [0xa7,0xcd,0xe8,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11101000-11001101-10100111
cmphs   p5.d, p5/z, z10.d, #85  // 00100100-11110101-01010101-01000101
// CHECK: cmphs   p5.d, p5/z, z10.d, #85 // encoding: [0x45,0x55,0xf5,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11110101-01010101-01000101
CMPHS   P5.D, P5/Z, Z10.D, #85  // 00100100-11110101-01010101-01000101
// CHECK: cmphs   p5.d, p5/z, z10.d, #85 // encoding: [0x45,0x55,0xf5,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11110101-01010101-01000101
cmphs   p15.d, p7/z, z31.d, #127  // 00100100-11111111-11011111-11101111
// CHECK: cmphs   p15.d, p7/z, z31.d, #127 // encoding: [0xef,0xdf,0xff,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11111111-11011111-11101111
CMPHS   P15.D, P7/Z, Z31.D, #127  // 00100100-11111111-11011111-11101111
// CHECK: cmphs   p15.d, p7/z, z31.d, #127 // encoding: [0xef,0xdf,0xff,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-11111111-11011111-11101111
