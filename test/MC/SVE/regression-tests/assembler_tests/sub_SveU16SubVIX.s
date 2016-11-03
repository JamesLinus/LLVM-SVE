// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
sub     z23.h, z23.h, #109, lsl #8  // 00100101-01100001-11101101-10110111
// CHECK: sub     z23.h, z23.h, #27904 // encoding: [0xb7,0xed,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11101101-10110111
SUB     Z23.H, Z23.H, #109, LSL #8  // 00100101-01100001-11101101-10110111
// CHECK: sub     z23.h, z23.h, #27904 // encoding: [0xb7,0xed,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11101101-10110111
sub     z23.h, z23.h, #27904  // 00100101-01100001-11101101-10110111
// CHECK: sub     z23.h, z23.h, #27904 // encoding: [0xb7,0xed,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11101101-10110111
SUB     Z23.H, Z23.H, #27904  // 00100101-01100001-11101101-10110111
// CHECK: sub     z23.h, z23.h, #27904 // encoding: [0xb7,0xed,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11101101-10110111
sub     z31.h, z31.h, #255, lsl #8  // 00100101-01100001-11111111-11111111
// CHECK: sub     z31.h, z31.h, #65280 // encoding: [0xff,0xff,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11111111-11111111
SUB     Z31.H, Z31.H, #255, LSL #8  // 00100101-01100001-11111111-11111111
// CHECK: sub     z31.h, z31.h, #65280 // encoding: [0xff,0xff,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11111111-11111111
sub     z31.h, z31.h, #65280  // 00100101-01100001-11111111-11111111
// CHECK: sub     z31.h, z31.h, #65280 // encoding: [0xff,0xff,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11111111-11111111
SUB     Z31.H, Z31.H, #65280  // 00100101-01100001-11111111-11111111
// CHECK: sub     z31.h, z31.h, #65280 // encoding: [0xff,0xff,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11111111-11111111
sub     z0.h, z0.h, #0  // 00100101-01100001-11000000-00000000
// CHECK: sub     z0.h, z0.h, #0 // encoding: [0x00,0xc0,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11000000-00000000
SUB     Z0.H, Z0.H, #0  // 00100101-01100001-11000000-00000000
// CHECK: sub     z0.h, z0.h, #0 // encoding: [0x00,0xc0,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11000000-00000000
sub     z21.h, z21.h, #170  // 00100101-01100001-11010101-01010101
// CHECK: sub     z21.h, z21.h, #170 // encoding: [0x55,0xd5,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11010101-01010101
SUB     Z21.H, Z21.H, #170  // 00100101-01100001-11010101-01010101
// CHECK: sub     z21.h, z21.h, #170 // encoding: [0x55,0xd5,0x61,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01100001-11010101-01010101
