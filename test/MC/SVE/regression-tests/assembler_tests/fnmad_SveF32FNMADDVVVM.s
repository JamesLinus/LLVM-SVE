// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
fnmad   z21.s, p5/m, z10.s, z21.s  // 01100101-10110101-11010101-01010101
// CHECK: fnmad   z21.s, p5/m, z10.s, z21.s // encoding: [0x55,0xd5,0xb5,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10110101-11010101-01010101
FNMAD   Z21.S, P5/M, Z10.S, Z21.S  // 01100101-10110101-11010101-01010101
// CHECK: fnmad   z21.s, p5/m, z10.s, z21.s // encoding: [0x55,0xd5,0xb5,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10110101-11010101-01010101
fnmad   z0.s, p0/m, z0.s, z0.s  // 01100101-10100000-11000000-00000000
// CHECK: fnmad   z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0xc0,0xa0,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10100000-11000000-00000000
FNMAD   Z0.S, P0/M, Z0.S, Z0.S  // 01100101-10100000-11000000-00000000
// CHECK: fnmad   z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0xc0,0xa0,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10100000-11000000-00000000
fnmad   z31.s, p7/m, z31.s, z31.s  // 01100101-10111111-11011111-11111111
// CHECK: fnmad   z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0xdf,0xbf,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10111111-11011111-11111111
FNMAD   Z31.S, P7/M, Z31.S, Z31.S  // 01100101-10111111-11011111-11111111
// CHECK: fnmad   z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0xdf,0xbf,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10111111-11011111-11111111
fnmad   z23.s, p3/m, z13.s, z8.s  // 01100101-10101000-11001101-10110111
// CHECK: fnmad   z23.s, p3/m, z13.s, z8.s // encoding: [0xb7,0xcd,0xa8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10101000-11001101-10110111
FNMAD   Z23.S, P3/M, Z13.S, Z8.S  // 01100101-10101000-11001101-10110111
// CHECK: fnmad   z23.s, p3/m, z13.s, z8.s // encoding: [0xb7,0xcd,0xa8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-10101000-11001101-10110111
