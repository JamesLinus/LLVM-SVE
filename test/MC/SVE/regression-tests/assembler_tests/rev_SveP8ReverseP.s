// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
rev     p5.b, p10.b  // 00000101-00110100-01000001-01000101
// CHECK: rev     p5.b, p10.b // encoding: [0x45,0x41,0x34,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-00110100-01000001-01000101
REV     P5.B, P10.B  // 00000101-00110100-01000001-01000101
// CHECK: rev     p5.b, p10.b // encoding: [0x45,0x41,0x34,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-00110100-01000001-01000101
rev     p0.b, p0.b  // 00000101-00110100-01000000-00000000
// CHECK: rev     p0.b, p0.b // encoding: [0x00,0x40,0x34,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-00110100-01000000-00000000
REV     P0.B, P0.B  // 00000101-00110100-01000000-00000000
// CHECK: rev     p0.b, p0.b // encoding: [0x00,0x40,0x34,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-00110100-01000000-00000000
rev     p15.b, p15.b  // 00000101-00110100-01000001-11101111
// CHECK: rev     p15.b, p15.b // encoding: [0xef,0x41,0x34,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-00110100-01000001-11101111
REV     P15.B, P15.B  // 00000101-00110100-01000001-11101111
// CHECK: rev     p15.b, p15.b // encoding: [0xef,0x41,0x34,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-00110100-01000001-11101111
rev     p7.b, p13.b  // 00000101-00110100-01000001-10100111
// CHECK: rev     p7.b, p13.b // encoding: [0xa7,0x41,0x34,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-00110100-01000001-10100111
REV     P7.B, P13.B  // 00000101-00110100-01000001-10100111
// CHECK: rev     p7.b, p13.b // encoding: [0xa7,0x41,0x34,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-00110100-01000001-10100111
