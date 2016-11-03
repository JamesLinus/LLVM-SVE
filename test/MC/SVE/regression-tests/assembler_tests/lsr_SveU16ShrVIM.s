// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
lsr     z31.h, p7/m, z31.h, #1  // 00000100-00000001-10011111-11111111
// CHECK: lsr     z31.h, p7/m, z31.h, #1 // encoding: [0xff,0x9f,0x01,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000001-10011111-11111111
LSR     Z31.H, P7/M, Z31.H, #1  // 00000100-00000001-10011111-11111111
// CHECK: lsr     z31.h, p7/m, z31.h, #1 // encoding: [0xff,0x9f,0x01,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000001-10011111-11111111
lsr     z23.h, p3/m, z23.h, #3  // 00000100-00000001-10001111-10110111
// CHECK: lsr     z23.h, p3/m, z23.h, #3 // encoding: [0xb7,0x8f,0x01,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000001-10001111-10110111
LSR     Z23.H, P3/M, Z23.H, #3  // 00000100-00000001-10001111-10110111
// CHECK: lsr     z23.h, p3/m, z23.h, #3 // encoding: [0xb7,0x8f,0x01,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000001-10001111-10110111
lsr     z21.h, p5/m, z21.h, #6  // 00000100-00000001-10010111-01010101
// CHECK: lsr     z21.h, p5/m, z21.h, #6 // encoding: [0x55,0x97,0x01,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000001-10010111-01010101
LSR     Z21.H, P5/M, Z21.H, #6  // 00000100-00000001-10010111-01010101
// CHECK: lsr     z21.h, p5/m, z21.h, #6 // encoding: [0x55,0x97,0x01,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000001-10010111-01010101
lsr     z0.h, p0/m, z0.h, #16  // 00000100-00000001-10000010-00000000
// CHECK: lsr     z0.h, p0/m, z0.h, #16 // encoding: [0x00,0x82,0x01,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000001-10000010-00000000
LSR     Z0.H, P0/M, Z0.H, #16  // 00000100-00000001-10000010-00000000
// CHECK: lsr     z0.h, p0/m, z0.h, #16 // encoding: [0x00,0x82,0x01,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00000001-10000010-00000000
