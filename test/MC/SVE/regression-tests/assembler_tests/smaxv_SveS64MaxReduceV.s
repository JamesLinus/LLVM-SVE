// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
smaxv   d31, p7, z31.d  // 00000100-11001000-00111111-11111111
// CHECK: smaxv   d31, p7, z31.d // encoding: [0xff,0x3f,0xc8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11001000-00111111-11111111
SMAXV   D31, P7, Z31.D  // 00000100-11001000-00111111-11111111
// CHECK: smaxv   d31, p7, z31.d // encoding: [0xff,0x3f,0xc8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11001000-00111111-11111111
smaxv   d21, p5, z10.d  // 00000100-11001000-00110101-01010101
// CHECK: smaxv   d21, p5, z10.d // encoding: [0x55,0x35,0xc8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11001000-00110101-01010101
SMAXV   D21, P5, Z10.D  // 00000100-11001000-00110101-01010101
// CHECK: smaxv   d21, p5, z10.d // encoding: [0x55,0x35,0xc8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11001000-00110101-01010101
smaxv   d0, p0, z0.d  // 00000100-11001000-00100000-00000000
// CHECK: smaxv   d0, p0, z0.d // encoding: [0x00,0x20,0xc8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11001000-00100000-00000000
SMAXV   D0, P0, Z0.D  // 00000100-11001000-00100000-00000000
// CHECK: smaxv   d0, p0, z0.d // encoding: [0x00,0x20,0xc8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11001000-00100000-00000000
smaxv   d23, p3, z13.d  // 00000100-11001000-00101101-10110111
// CHECK: smaxv   d23, p3, z13.d // encoding: [0xb7,0x2d,0xc8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11001000-00101101-10110111
SMAXV   D23, P3, Z13.D  // 00000100-11001000-00101101-10110111
// CHECK: smaxv   d23, p3, z13.d // encoding: [0xb7,0x2d,0xc8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11001000-00101101-10110111
