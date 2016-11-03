// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
fcvt    z31.h, p7/m, z31.d  // 01100101-11001000-10111111-11111111
// CHECK: fcvt    z31.h, p7/m, z31.d // encoding: [0xff,0xbf,0xc8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11001000-10111111-11111111
FCVT    Z31.H, P7/M, Z31.D  // 01100101-11001000-10111111-11111111
// CHECK: fcvt    z31.h, p7/m, z31.d // encoding: [0xff,0xbf,0xc8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11001000-10111111-11111111
fcvt    z23.h, p3/m, z13.d  // 01100101-11001000-10101101-10110111
// CHECK: fcvt    z23.h, p3/m, z13.d // encoding: [0xb7,0xad,0xc8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11001000-10101101-10110111
FCVT    Z23.H, P3/M, Z13.D  // 01100101-11001000-10101101-10110111
// CHECK: fcvt    z23.h, p3/m, z13.d // encoding: [0xb7,0xad,0xc8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11001000-10101101-10110111
fcvt    z0.h, p0/m, z0.d  // 01100101-11001000-10100000-00000000
// CHECK: fcvt    z0.h, p0/m, z0.d // encoding: [0x00,0xa0,0xc8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11001000-10100000-00000000
FCVT    Z0.H, P0/M, Z0.D  // 01100101-11001000-10100000-00000000
// CHECK: fcvt    z0.h, p0/m, z0.d // encoding: [0x00,0xa0,0xc8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11001000-10100000-00000000
fcvt    z21.h, p5/m, z10.d  // 01100101-11001000-10110101-01010101
// CHECK: fcvt    z21.h, p5/m, z10.d // encoding: [0x55,0xb5,0xc8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11001000-10110101-01010101
FCVT    Z21.H, P5/M, Z10.D  // 01100101-11001000-10110101-01010101
// CHECK: fcvt    z21.h, p5/m, z10.d // encoding: [0x55,0xb5,0xc8,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11001000-10110101-01010101
