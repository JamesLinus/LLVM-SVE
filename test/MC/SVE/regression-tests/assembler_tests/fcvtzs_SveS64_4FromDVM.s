// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
fcvtzs  z31.s, p7/m, z31.d  // 01100101-11011000-10111111-11111111
// CHECK: fcvtzs  z31.s, p7/m, z31.d // encoding: [0xff,0xbf,0xd8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11011000-10111111-11111111
FCVTZS  Z31.S, P7/M, Z31.D  // 01100101-11011000-10111111-11111111
// CHECK: fcvtzs  z31.s, p7/m, z31.d // encoding: [0xff,0xbf,0xd8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11011000-10111111-11111111
fcvtzs  z0.s, p0/m, z0.d  // 01100101-11011000-10100000-00000000
// CHECK: fcvtzs  z0.s, p0/m, z0.d // encoding: [0x00,0xa0,0xd8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11011000-10100000-00000000
FCVTZS  Z0.S, P0/M, Z0.D  // 01100101-11011000-10100000-00000000
// CHECK: fcvtzs  z0.s, p0/m, z0.d // encoding: [0x00,0xa0,0xd8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11011000-10100000-00000000
fcvtzs  z21.s, p5/m, z10.d  // 01100101-11011000-10110101-01010101
// CHECK: fcvtzs  z21.s, p5/m, z10.d // encoding: [0x55,0xb5,0xd8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11011000-10110101-01010101
FCVTZS  Z21.S, P5/M, Z10.D  // 01100101-11011000-10110101-01010101
// CHECK: fcvtzs  z21.s, p5/m, z10.d // encoding: [0x55,0xb5,0xd8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11011000-10110101-01010101
fcvtzs  z23.s, p3/m, z13.d  // 01100101-11011000-10101101-10110111
// CHECK: fcvtzs  z23.s, p3/m, z13.d // encoding: [0xb7,0xad,0xd8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11011000-10101101-10110111
FCVTZS  Z23.S, P3/M, Z13.D  // 01100101-11011000-10101101-10110111
// CHECK: fcvtzs  z23.s, p3/m, z13.d // encoding: [0xb7,0xad,0xd8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11011000-10101101-10110111
