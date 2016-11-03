// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ld1sh   {z31.s}, p7/z, [sp, z31.s, uxtw #1]  // 10000100-10111111-00011111-11111111
// CHECK: ld1sh   {z31.s}, p7/z, [sp, z31.s, uxtw #1] // encoding: [0xff,0x1f,0xbf,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10111111-00011111-11111111
LD1SH   {Z31.S}, P7/Z, [SP, Z31.S, UXTW #1]  // 10000100-10111111-00011111-11111111
// CHECK: ld1sh   {z31.s}, p7/z, [sp, z31.s, uxtw #1] // encoding: [0xff,0x1f,0xbf,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10111111-00011111-11111111
ld1sh   {z21.s}, p5/z, [x10, z21.s, uxtw #1]  // 10000100-10110101-00010101-01010101
// CHECK: ld1sh   {z21.s}, p5/z, [x10, z21.s, uxtw #1] // encoding: [0x55,0x15,0xb5,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10110101-00010101-01010101
LD1SH   {Z21.S}, P5/Z, [X10, Z21.S, UXTW #1]  // 10000100-10110101-00010101-01010101
// CHECK: ld1sh   {z21.s}, p5/z, [x10, z21.s, uxtw #1] // encoding: [0x55,0x15,0xb5,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10110101-00010101-01010101
ld1sh   {z0.s}, p0/z, [x0, z0.s, uxtw #1]  // 10000100-10100000-00000000-00000000
// CHECK: ld1sh   {z0.s}, p0/z, [x0, z0.s, uxtw #1] // encoding: [0x00,0x00,0xa0,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10100000-00000000-00000000
LD1SH   {Z0.S}, P0/Z, [X0, Z0.S, UXTW #1]  // 10000100-10100000-00000000-00000000
// CHECK: ld1sh   {z0.s}, p0/z, [x0, z0.s, uxtw #1] // encoding: [0x00,0x00,0xa0,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10100000-00000000-00000000
ld1sh   {z23.s}, p3/z, [x13, z8.s, uxtw #1]  // 10000100-10101000-00001101-10110111
// CHECK: ld1sh   {z23.s}, p3/z, [x13, z8.s, uxtw #1] // encoding: [0xb7,0x0d,0xa8,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10101000-00001101-10110111
LD1SH   {Z23.S}, P3/Z, [X13, Z8.S, UXTW #1]  // 10000100-10101000-00001101-10110111
// CHECK: ld1sh   {z23.s}, p3/z, [x13, z8.s, uxtw #1] // encoding: [0xb7,0x0d,0xa8,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10101000-00001101-10110111
