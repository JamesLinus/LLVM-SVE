// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
cmphi   p0.h, p0/z, z0.h, #0  // 00100100-01100000-00000000-00010000
// CHECK: cmphi   p0.h, p0/z, z0.h, #0 // encoding: [0x10,0x00,0x60,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-01100000-00000000-00010000
CMPHI   P0.H, P0/Z, Z0.H, #0  // 00100100-01100000-00000000-00010000
// CHECK: cmphi   p0.h, p0/z, z0.h, #0 // encoding: [0x10,0x00,0x60,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-01100000-00000000-00010000
cmphi   p5.h, p5/z, z10.h, #85  // 00100100-01110101-01010101-01010101
// CHECK: cmphi   p5.h, p5/z, z10.h, #85 // encoding: [0x55,0x55,0x75,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-01110101-01010101-01010101
CMPHI   P5.H, P5/Z, Z10.H, #85  // 00100100-01110101-01010101-01010101
// CHECK: cmphi   p5.h, p5/z, z10.h, #85 // encoding: [0x55,0x55,0x75,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-01110101-01010101-01010101
cmphi   p15.h, p7/z, z31.h, #127  // 00100100-01111111-11011111-11111111
// CHECK: cmphi   p15.h, p7/z, z31.h, #127 // encoding: [0xff,0xdf,0x7f,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-01111111-11011111-11111111
CMPHI   P15.H, P7/Z, Z31.H, #127  // 00100100-01111111-11011111-11111111
// CHECK: cmphi   p15.h, p7/z, z31.h, #127 // encoding: [0xff,0xdf,0x7f,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-01111111-11011111-11111111
cmphi   p7.h, p3/z, z13.h, #35  // 00100100-01101000-11001101-10110111
// CHECK: cmphi   p7.h, p3/z, z13.h, #35 // encoding: [0xb7,0xcd,0x68,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-01101000-11001101-10110111
CMPHI   P7.H, P3/Z, Z13.H, #35  // 00100100-01101000-11001101-10110111
// CHECK: cmphi   p7.h, p3/z, z13.h, #35 // encoding: [0xb7,0xcd,0x68,0x24]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100100-01101000-11001101-10110111
