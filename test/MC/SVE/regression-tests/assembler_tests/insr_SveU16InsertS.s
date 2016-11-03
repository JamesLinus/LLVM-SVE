// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
insr    z21.h, w10  // 00000101-01100100-00111001-01010101
// CHECK: insr    z21.h, w10 // encoding: [0x55,0x39,0x64,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01100100-00111001-01010101
INSR    Z21.H, W10  // 00000101-01100100-00111001-01010101
// CHECK: insr    z21.h, w10 // encoding: [0x55,0x39,0x64,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01100100-00111001-01010101
insr    z31.h, wzr  // 00000101-01100100-00111011-11111111
// CHECK: insr    z31.h, wzr // encoding: [0xff,0x3b,0x64,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01100100-00111011-11111111
INSR    Z31.H, WZR  // 00000101-01100100-00111011-11111111
// CHECK: insr    z31.h, wzr // encoding: [0xff,0x3b,0x64,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01100100-00111011-11111111
insr    z0.h, w0  // 00000101-01100100-00111000-00000000
// CHECK: insr    z0.h, w0 // encoding: [0x00,0x38,0x64,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01100100-00111000-00000000
INSR    Z0.H, W0  // 00000101-01100100-00111000-00000000
// CHECK: insr    z0.h, w0 // encoding: [0x00,0x38,0x64,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01100100-00111000-00000000
insr    z23.h, w13  // 00000101-01100100-00111001-10110111
// CHECK: insr    z23.h, w13 // encoding: [0xb7,0x39,0x64,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01100100-00111001-10110111
INSR    Z23.H, W13  // 00000101-01100100-00111001-10110111
// CHECK: insr    z23.h, w13 // encoding: [0xb7,0x39,0x64,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01100100-00111001-10110111
