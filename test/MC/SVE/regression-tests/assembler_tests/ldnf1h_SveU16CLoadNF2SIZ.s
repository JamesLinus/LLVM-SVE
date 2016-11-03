// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ldnf1h  {z23.h}, p3/z, [x13, #-8, mul vl]  // 10100100-10111000-10101101-10110111
// CHECK: ldnf1h  {z23.h}, p3/z, [x13, #-8, mul vl] // encoding: [0xb7,0xad,0xb8,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-10111000-10101101-10110111
LDNF1H  {Z23.H}, P3/Z, [X13, #-8, MUL VL]  // 10100100-10111000-10101101-10110111
// CHECK: ldnf1h  {z23.h}, p3/z, [x13, #-8, mul vl] // encoding: [0xb7,0xad,0xb8,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-10111000-10101101-10110111
ldnf1h  {z31.h}, p7/z, [sp, #-1, mul vl]  // 10100100-10111111-10111111-11111111
// CHECK: ldnf1h  {z31.h}, p7/z, [sp, #-1, mul vl] // encoding: [0xff,0xbf,0xbf,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-10111111-10111111-11111111
LDNF1H  {Z31.H}, P7/Z, [SP, #-1, MUL VL]  // 10100100-10111111-10111111-11111111
// CHECK: ldnf1h  {z31.h}, p7/z, [sp, #-1, mul vl] // encoding: [0xff,0xbf,0xbf,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-10111111-10111111-11111111
ldnf1h  {z21.h}, p5/z, [x10, #5, mul vl]  // 10100100-10110101-10110101-01010101
// CHECK: ldnf1h  {z21.h}, p5/z, [x10, #5, mul vl] // encoding: [0x55,0xb5,0xb5,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-10110101-10110101-01010101
LDNF1H  {Z21.H}, P5/Z, [X10, #5, MUL VL]  // 10100100-10110101-10110101-01010101
// CHECK: ldnf1h  {z21.h}, p5/z, [x10, #5, mul vl] // encoding: [0x55,0xb5,0xb5,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-10110101-10110101-01010101
ldnf1h  {z0.h}, p0/z, [x0]  // 10100100-10110000-10100000-00000000
// CHECK: ldnf1h  {z0.h}, p0/z, [x0] // encoding: [0x00,0xa0,0xb0,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-10110000-10100000-00000000
LDNF1H  {Z0.H}, P0/Z, [X0]  // 10100100-10110000-10100000-00000000
// CHECK: ldnf1h  {z0.h}, p0/z, [x0] // encoding: [0x00,0xa0,0xb0,0xa4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10100100-10110000-10100000-00000000
