// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
lastb   w0, p0, z0.s  // 00000101-10100001-10100000-00000000
// CHECK: lastb   w0, p0, z0.s // encoding: [0x00,0xa0,0xa1,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10100001-10100000-00000000
LASTB   W0, P0, Z0.S  // 00000101-10100001-10100000-00000000
// CHECK: lastb   w0, p0, z0.s // encoding: [0x00,0xa0,0xa1,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10100001-10100000-00000000
lastb   w21, p5, z10.s  // 00000101-10100001-10110101-01010101
// CHECK: lastb   w21, p5, z10.s // encoding: [0x55,0xb5,0xa1,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10100001-10110101-01010101
LASTB   W21, P5, Z10.S  // 00000101-10100001-10110101-01010101
// CHECK: lastb   w21, p5, z10.s // encoding: [0x55,0xb5,0xa1,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10100001-10110101-01010101
lastb   wzr, p7, z31.s  // 00000101-10100001-10111111-11111111
// CHECK: lastb   wzr, p7, z31.s // encoding: [0xff,0xbf,0xa1,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10100001-10111111-11111111
LASTB   WZR, P7, Z31.S  // 00000101-10100001-10111111-11111111
// CHECK: lastb   wzr, p7, z31.s // encoding: [0xff,0xbf,0xa1,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10100001-10111111-11111111
lastb   w23, p3, z13.s  // 00000101-10100001-10101101-10110111
// CHECK: lastb   w23, p3, z13.s // encoding: [0xb7,0xad,0xa1,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10100001-10101101-10110111
LASTB   W23, P3, Z13.S  // 00000101-10100001-10101101-10110111
// CHECK: lastb   w23, p3, z13.s // encoding: [0xb7,0xad,0xa1,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-10100001-10101101-10110111
