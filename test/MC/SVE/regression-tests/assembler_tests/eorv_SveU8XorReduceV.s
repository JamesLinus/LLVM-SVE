// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
eorv    b0, p0, z0.b  // 00000100-00011001-00100000-00000000
// CHECK: eorv    b0, p0, z0.b // encoding: [0x00,0x20,0x19,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011001-00100000-00000000
EORV    B0, P0, Z0.B  // 00000100-00011001-00100000-00000000
// CHECK: eorv    b0, p0, z0.b // encoding: [0x00,0x20,0x19,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011001-00100000-00000000
eorv    b21, p5, z10.b  // 00000100-00011001-00110101-01010101
// CHECK: eorv    b21, p5, z10.b // encoding: [0x55,0x35,0x19,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011001-00110101-01010101
EORV    B21, P5, Z10.B  // 00000100-00011001-00110101-01010101
// CHECK: eorv    b21, p5, z10.b // encoding: [0x55,0x35,0x19,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011001-00110101-01010101
eorv    b23, p3, z13.b  // 00000100-00011001-00101101-10110111
// CHECK: eorv    b23, p3, z13.b // encoding: [0xb7,0x2d,0x19,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011001-00101101-10110111
EORV    B23, P3, Z13.B  // 00000100-00011001-00101101-10110111
// CHECK: eorv    b23, p3, z13.b // encoding: [0xb7,0x2d,0x19,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011001-00101101-10110111
eorv    b31, p7, z31.b  // 00000100-00011001-00111111-11111111
// CHECK: eorv    b31, p7, z31.b // encoding: [0xff,0x3f,0x19,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011001-00111111-11111111
EORV    B31, P7, Z31.B  // 00000100-00011001-00111111-11111111
// CHECK: eorv    b31, p7, z31.b // encoding: [0xff,0x3f,0x19,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011001-00111111-11111111
