// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
smin    z31.h, z31.h, #-1  // 00100101-01101010-11011111-11111111
// CHECK: smin    z31.h, z31.h, #-1 // encoding: [0xff,0xdf,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-11011111-11111111
SMIN    Z31.H, Z31.H, #-1  // 00100101-01101010-11011111-11111111
// CHECK: smin    z31.h, z31.h, #-1 // encoding: [0xff,0xdf,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-11011111-11111111
smin    z23.h, z23.h, #109  // 00100101-01101010-11001101-10110111
// CHECK: smin    z23.h, z23.h, #109 // encoding: [0xb7,0xcd,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-11001101-10110111
SMIN    Z23.H, Z23.H, #109  // 00100101-01101010-11001101-10110111
// CHECK: smin    z23.h, z23.h, #109 // encoding: [0xb7,0xcd,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-11001101-10110111
smin    z21.h, z21.h, #-86  // 00100101-01101010-11010101-01010101
// CHECK: smin    z21.h, z21.h, #-86 // encoding: [0x55,0xd5,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-11010101-01010101
SMIN    Z21.H, Z21.H, #-86  // 00100101-01101010-11010101-01010101
// CHECK: smin    z21.h, z21.h, #-86 // encoding: [0x55,0xd5,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-11010101-01010101
smin    z0.h, z0.h, #0  // 00100101-01101010-11000000-00000000
// CHECK: smin    z0.h, z0.h, #0 // encoding: [0x00,0xc0,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-11000000-00000000
SMIN    Z0.H, Z0.H, #0  // 00100101-01101010-11000000-00000000
// CHECK: smin    z0.h, z0.h, #0 // encoding: [0x00,0xc0,0x6a,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-01101010-11000000-00000000
