// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
revb    z0.d, p0/m, z0.d  // 00000101-11100100-10000000-00000000
// CHECK: revb    z0.d, p0/m, z0.d // encoding: [0x00,0x80,0xe4,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100100-10000000-00000000
REVB    Z0.D, P0/M, Z0.D  // 00000101-11100100-10000000-00000000
// CHECK: revb    z0.d, p0/m, z0.d // encoding: [0x00,0x80,0xe4,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100100-10000000-00000000
revb    z23.d, p3/m, z13.d  // 00000101-11100100-10001101-10110111
// CHECK: revb    z23.d, p3/m, z13.d // encoding: [0xb7,0x8d,0xe4,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100100-10001101-10110111
REVB    Z23.D, P3/M, Z13.D  // 00000101-11100100-10001101-10110111
// CHECK: revb    z23.d, p3/m, z13.d // encoding: [0xb7,0x8d,0xe4,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100100-10001101-10110111
revb    z31.d, p7/m, z31.d  // 00000101-11100100-10011111-11111111
// CHECK: revb    z31.d, p7/m, z31.d // encoding: [0xff,0x9f,0xe4,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100100-10011111-11111111
REVB    Z31.D, P7/M, Z31.D  // 00000101-11100100-10011111-11111111
// CHECK: revb    z31.d, p7/m, z31.d // encoding: [0xff,0x9f,0xe4,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100100-10011111-11111111
revb    z21.d, p5/m, z10.d  // 00000101-11100100-10010101-01010101
// CHECK: revb    z21.d, p5/m, z10.d // encoding: [0x55,0x95,0xe4,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100100-10010101-01010101
REVB    Z21.D, P5/M, Z10.D  // 00000101-11100100-10010101-01010101
// CHECK: revb    z21.d, p5/m, z10.d // encoding: [0x55,0x95,0xe4,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100100-10010101-01010101
