// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
fcmlt   p15.d, p7/z, z31.d, #0.0  // 01100101-11010001-00111111-11101111
// CHECK: fcmlt   p15.d, p7/z, z31.d, #0.0{{0*}} // encoding: [0xef,0x3f,0xd1,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11010001-00111111-11101111
FCMLT   P15.D, P7/Z, Z31.D, #0.0  // 01100101-11010001-00111111-11101111
// CHECK: fcmlt   p15.d, p7/z, z31.d, #0.0{{0*}} // encoding: [0xef,0x3f,0xd1,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11010001-00111111-11101111
fcmlt   p7.d, p3/z, z13.d, #0.0  // 01100101-11010001-00101101-10100111
// CHECK: fcmlt   p7.d, p3/z, z13.d, #0.0{{0*}} // encoding: [0xa7,0x2d,0xd1,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11010001-00101101-10100111
FCMLT   P7.D, P3/Z, Z13.D, #0.0  // 01100101-11010001-00101101-10100111
// CHECK: fcmlt   p7.d, p3/z, z13.d, #0.0{{0*}} // encoding: [0xa7,0x2d,0xd1,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11010001-00101101-10100111
fcmlt   p5.d, p5/z, z10.d, #0.0  // 01100101-11010001-00110101-01000101
// CHECK: fcmlt   p5.d, p5/z, z10.d, #0.0{{0*}} // encoding: [0x45,0x35,0xd1,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11010001-00110101-01000101
FCMLT   P5.D, P5/Z, Z10.D, #0.0  // 01100101-11010001-00110101-01000101
// CHECK: fcmlt   p5.d, p5/z, z10.d, #0.0{{0*}} // encoding: [0x45,0x35,0xd1,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11010001-00110101-01000101
fcmlt   p0.d, p0/z, z0.d, #0.0  // 01100101-11010001-00100000-00000000
// CHECK: fcmlt   p0.d, p0/z, z0.d, #0.0{{0*}} // encoding: [0x00,0x20,0xd1,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11010001-00100000-00000000
FCMLT   P0.D, P0/Z, Z0.D, #0.0  // 01100101-11010001-00100000-00000000
// CHECK: fcmlt   p0.d, p0/z, z0.d, #0.0{{0*}} // encoding: [0x00,0x20,0xd1,0x65]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 01100101-11010001-00100000-00000000
