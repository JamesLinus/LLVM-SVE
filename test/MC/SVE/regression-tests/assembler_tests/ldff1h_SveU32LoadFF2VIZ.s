// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
ldff1h  {z23.s}, p3/z, [z13.s, #16]  // 10000100-10101000-11101101-10110111
// CHECK: ldff1h  {z23.s}, p3/z, [z13.s, #16] // encoding: [0xb7,0xed,0xa8,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10101000-11101101-10110111
LDFF1H  {Z23.S}, P3/Z, [Z13.S, #16]  // 10000100-10101000-11101101-10110111
// CHECK: ldff1h  {z23.s}, p3/z, [z13.s, #16] // encoding: [0xb7,0xed,0xa8,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10101000-11101101-10110111
ldff1h  {z31.s}, p7/z, [z31.s, #62]  // 10000100-10111111-11111111-11111111
// CHECK: ldff1h  {z31.s}, p7/z, [z31.s, #62] // encoding: [0xff,0xff,0xbf,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10111111-11111111-11111111
LDFF1H  {Z31.S}, P7/Z, [Z31.S, #62]  // 10000100-10111111-11111111-11111111
// CHECK: ldff1h  {z31.s}, p7/z, [z31.s, #62] // encoding: [0xff,0xff,0xbf,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10111111-11111111-11111111
ldff1h  {z0.s}, p0/z, [z0.s]  // 10000100-10100000-11100000-00000000
// CHECK: ldff1h  {z0.s}, p0/z, [z0.s] // encoding: [0x00,0xe0,0xa0,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10100000-11100000-00000000
LDFF1H  {Z0.S}, P0/Z, [Z0.S]  // 10000100-10100000-11100000-00000000
// CHECK: ldff1h  {z0.s}, p0/z, [z0.s] // encoding: [0x00,0xe0,0xa0,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10100000-11100000-00000000
ldff1h  {z21.s}, p5/z, [z10.s, #42]  // 10000100-10110101-11110101-01010101
// CHECK: ldff1h  {z21.s}, p5/z, [z10.s, #42] // encoding: [0x55,0xf5,0xb5,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10110101-11110101-01010101
LDFF1H  {Z21.S}, P5/Z, [Z10.S, #42]  // 10000100-10110101-11110101-01010101
// CHECK: ldff1h  {z21.s}, p5/z, [z10.s, #42] // encoding: [0x55,0xf5,0xb5,0x84]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 10000100-10110101-11110101-01010101
