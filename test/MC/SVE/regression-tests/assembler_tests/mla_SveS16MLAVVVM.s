// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
mla     z21.h, p5/m, z10.h, z21.h  // 00000100-01010101-01010101-01010101
// CHECK: mla     z21.h, p5/m, z10.h, z21.h // encoding: [0x55,0x55,0x55,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01010101-01010101-01010101
MLA     Z21.H, P5/M, Z10.H, Z21.H  // 00000100-01010101-01010101-01010101
// CHECK: mla     z21.h, p5/m, z10.h, z21.h // encoding: [0x55,0x55,0x55,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01010101-01010101-01010101
mla     z23.h, p3/m, z13.h, z8.h  // 00000100-01001000-01001101-10110111
// CHECK: mla     z23.h, p3/m, z13.h, z8.h // encoding: [0xb7,0x4d,0x48,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01001000-01001101-10110111
MLA     Z23.H, P3/M, Z13.H, Z8.H  // 00000100-01001000-01001101-10110111
// CHECK: mla     z23.h, p3/m, z13.h, z8.h // encoding: [0xb7,0x4d,0x48,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01001000-01001101-10110111
mla     z0.h, p0/m, z0.h, z0.h  // 00000100-01000000-01000000-00000000
// CHECK: mla     z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x40,0x40,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01000000-01000000-00000000
MLA     Z0.H, P0/M, Z0.H, Z0.H  // 00000100-01000000-01000000-00000000
// CHECK: mla     z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x40,0x40,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01000000-01000000-00000000
mla     z31.h, p7/m, z31.h, z31.h  // 00000100-01011111-01011111-11111111
// CHECK: mla     z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x5f,0x5f,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01011111-01011111-11111111
MLA     Z31.H, P7/M, Z31.H, Z31.H  // 00000100-01011111-01011111-11111111
// CHECK: mla     z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x5f,0x5f,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01011111-01011111-11111111
