// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
fmov    z21.s, #-13.0  // 00100101-10111001-11010101-01010101
// CHECK: fmov    z21.s, #-13.0{{0*}} // encoding: [0x55,0xd5,0xb9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10111001-11010101-01010101
FMOV    Z21.S, #-13.0  // 00100101-10111001-11010101-01010101
// CHECK: fmov    z21.s, #-13.0{{0*}} // encoding: [0x55,0xd5,0xb9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10111001-11010101-01010101
fmov    z23.s, #0.90625  // 00100101-10111001-11001101-10110111
// CHECK: fmov    z23.s, #0.90625{{0*}} // encoding: [0xb7,0xcd,0xb9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10111001-11001101-10110111
FMOV    Z23.S, #0.90625  // 00100101-10111001-11001101-10110111
// CHECK: fmov    z23.s, #0.90625{{0*}} // encoding: [0xb7,0xcd,0xb9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10111001-11001101-10110111
fmov    z31.s, #-1.9375  // 00100101-10111001-11011111-11111111
// CHECK: fmov    z31.s, #-1.9375{{0*}} // encoding: [0xff,0xdf,0xb9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10111001-11011111-11111111
FMOV    Z31.S, #-1.9375  // 00100101-10111001-11011111-11111111
// CHECK: fmov    z31.s, #-1.9375{{0*}} // encoding: [0xff,0xdf,0xb9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10111001-11011111-11111111
fmov    z0.s, #2.0  // 00100101-10111001-11000000-00000000
// CHECK: fmov    z0.s, #2.0{{0*}} // encoding: [0x00,0xc0,0xb9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10111001-11000000-00000000
FMOV    Z0.S, #2.0  // 00100101-10111001-11000000-00000000
// CHECK: fmov    z0.s, #2.0{{0*}} // encoding: [0x00,0xc0,0xb9,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10111001-11000000-00000000
