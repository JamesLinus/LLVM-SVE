// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
pnext   p7.b, p13, p7.b  // 00100101-00011001-11000101-10100111
// CHECK: pnext   p7.b, p13, p7.b // encoding: [0xa7,0xc5,0x19,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00011001-11000101-10100111
PNEXT   P7.B, P13, P7.B  // 00100101-00011001-11000101-10100111
// CHECK: pnext   p7.b, p13, p7.b // encoding: [0xa7,0xc5,0x19,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00011001-11000101-10100111
pnext   p0.b, p0, p0.b  // 00100101-00011001-11000100-00000000
// CHECK: pnext   p0.b, p0, p0.b // encoding: [0x00,0xc4,0x19,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00011001-11000100-00000000
PNEXT   P0.B, P0, P0.B  // 00100101-00011001-11000100-00000000
// CHECK: pnext   p0.b, p0, p0.b // encoding: [0x00,0xc4,0x19,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00011001-11000100-00000000
pnext   p15.b, p15, p15.b  // 00100101-00011001-11000101-11101111
// CHECK: pnext   p15.b, p15, p15.b // encoding: [0xef,0xc5,0x19,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00011001-11000101-11101111
PNEXT   P15.B, P15, P15.B  // 00100101-00011001-11000101-11101111
// CHECK: pnext   p15.b, p15, p15.b // encoding: [0xef,0xc5,0x19,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00011001-11000101-11101111
pnext   p5.b, p10, p5.b  // 00100101-00011001-11000101-01000101
// CHECK: pnext   p5.b, p10, p5.b // encoding: [0x45,0xc5,0x19,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00011001-11000101-01000101
PNEXT   P5.B, P10, P5.B  // 00100101-00011001-11000101-01000101
// CHECK: pnext   p5.b, p10, p5.b // encoding: [0x45,0xc5,0x19,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00011001-11000101-01000101
