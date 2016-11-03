// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ptrue   p0.d, pow2  // 00100101-11011000-11100000-00000000
// CHECK: ptrue   p0.d, pow2 // encoding: [0x00,0xe0,0xd8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11011000-11100000-00000000
PTRUE   P0.D, POW2  // 00100101-11011000-11100000-00000000
// CHECK: ptrue   p0.d, pow2 // encoding: [0x00,0xe0,0xd8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11011000-11100000-00000000
ptrue   p5.d, vl32  // 00100101-11011000-11100001-01000101
// CHECK: ptrue   p5.d, vl32 // encoding: [0x45,0xe1,0xd8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11011000-11100001-01000101
PTRUE   P5.D, VL32  // 00100101-11011000-11100001-01000101
// CHECK: ptrue   p5.d, vl32 // encoding: [0x45,0xe1,0xd8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11011000-11100001-01000101
ptrue   p15.d  // 00100101-11011000-11100011-11101111
// CHECK: ptrue   p15.d // encoding: [0xef,0xe3,0xd8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11011000-11100011-11101111
PTRUE   P15.D  // 00100101-11011000-11100011-11101111
// CHECK: ptrue   p15.d // encoding: [0xef,0xe3,0xd8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11011000-11100011-11101111
ptrue   p7.d, vl256  // 00100101-11011000-11100001-10100111
// CHECK: ptrue   p7.d, vl256 // encoding: [0xa7,0xe1,0xd8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11011000-11100001-10100111
PTRUE   P7.D, VL256  // 00100101-11011000-11100001-10100111
// CHECK: ptrue   p7.d, vl256 // encoding: [0xa7,0xe1,0xd8,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-11011000-11100001-10100111
