// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ldff1sw {z0.d}, p0/z, [x0, z0.d, lsl #2]  // 11000101-01100000-10100000-00000000
// CHECK: ldff1sw {z0.d}, p0/z, [x0, z0.d, lsl #2] // encoding: [0x00,0xa0,0x60,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-01100000-10100000-00000000
LDFF1SW {Z0.D}, P0/Z, [X0, Z0.D, LSL #2]  // 11000101-01100000-10100000-00000000
// CHECK: ldff1sw {z0.d}, p0/z, [x0, z0.d, lsl #2] // encoding: [0x00,0xa0,0x60,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-01100000-10100000-00000000
ldff1sw {z21.d}, p5/z, [x10, z21.d, lsl #2]  // 11000101-01110101-10110101-01010101
// CHECK: ldff1sw {z21.d}, p5/z, [x10, z21.d, lsl #2] // encoding: [0x55,0xb5,0x75,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-01110101-10110101-01010101
LDFF1SW {Z21.D}, P5/Z, [X10, Z21.D, LSL #2]  // 11000101-01110101-10110101-01010101
// CHECK: ldff1sw {z21.d}, p5/z, [x10, z21.d, lsl #2] // encoding: [0x55,0xb5,0x75,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-01110101-10110101-01010101
ldff1sw {z31.d}, p7/z, [sp, z31.d, lsl #2]  // 11000101-01111111-10111111-11111111
// CHECK: ldff1sw {z31.d}, p7/z, [sp, z31.d, lsl #2] // encoding: [0xff,0xbf,0x7f,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-01111111-10111111-11111111
LDFF1SW {Z31.D}, P7/Z, [SP, Z31.D, LSL #2]  // 11000101-01111111-10111111-11111111
// CHECK: ldff1sw {z31.d}, p7/z, [sp, z31.d, lsl #2] // encoding: [0xff,0xbf,0x7f,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-01111111-10111111-11111111
ldff1sw {z23.d}, p3/z, [x13, z8.d, lsl #2]  // 11000101-01101000-10101101-10110111
// CHECK: ldff1sw {z23.d}, p3/z, [x13, z8.d, lsl #2] // encoding: [0xb7,0xad,0x68,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-01101000-10101101-10110111
LDFF1SW {Z23.D}, P3/Z, [X13, Z8.D, LSL #2]  // 11000101-01101000-10101101-10110111
// CHECK: ldff1sw {z23.d}, p3/z, [x13, z8.d, lsl #2] // encoding: [0xb7,0xad,0x68,0xc5]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000101-01101000-10101101-10110111
