// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
sqdecp  z0.h, p0  // 00100101-01101010-10000000-00000000
// CHECK: sqdecp  z0.h, p0 // encoding: [0x00,0x80,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-10000000-00000000
SQDECP  Z0.H, P0  // 00100101-01101010-10000000-00000000
// CHECK: sqdecp  z0.h, p0 // encoding: [0x00,0x80,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-10000000-00000000
sqdecp  z31.h, p15  // 00100101-01101010-10000001-11111111
// CHECK: sqdecp  z31.h, p15 // encoding: [0xff,0x81,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-11111111
SQDECP  Z31.H, P15  // 00100101-01101010-10000001-11111111
// CHECK: sqdecp  z31.h, p15 // encoding: [0xff,0x81,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-11111111
sqdecp  z23.h, p13  // 00100101-01101010-10000001-10110111
// CHECK: sqdecp  z23.h, p13 // encoding: [0xb7,0x81,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-10110111
SQDECP  Z23.H, P13  // 00100101-01101010-10000001-10110111
// CHECK: sqdecp  z23.h, p13 // encoding: [0xb7,0x81,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-10110111
sqdecp  z21.h, p10  // 00100101-01101010-10000001-01010101
// CHECK: sqdecp  z21.h, p10 // encoding: [0x55,0x81,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-01010101
SQDECP  Z21.H, P10  // 00100101-01101010-10000001-01010101
// CHECK: sqdecp  z21.h, p10 // encoding: [0x55,0x81,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-10000001-01010101
