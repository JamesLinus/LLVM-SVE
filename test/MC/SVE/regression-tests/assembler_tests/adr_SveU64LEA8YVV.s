// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
adr     z0.d, [z0.d, z0.d, uxtw #3]  // 00000100-01100000-10101100-00000000
// CHECK: adr     z0.d, [z0.d, z0.d, uxtw #3] // encoding: [0x00,0xac,0x60,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01100000-10101100-00000000
ADR     Z0.D, [Z0.D, Z0.D, UXTW #3]  // 00000100-01100000-10101100-00000000
// CHECK: adr     z0.d, [z0.d, z0.d, uxtw #3] // encoding: [0x00,0xac,0x60,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01100000-10101100-00000000
adr     z21.d, [z10.d, z21.d, uxtw #3]  // 00000100-01110101-10101101-01010101
// CHECK: adr     z21.d, [z10.d, z21.d, uxtw #3] // encoding: [0x55,0xad,0x75,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01110101-10101101-01010101
ADR     Z21.D, [Z10.D, Z21.D, UXTW #3]  // 00000100-01110101-10101101-01010101
// CHECK: adr     z21.d, [z10.d, z21.d, uxtw #3] // encoding: [0x55,0xad,0x75,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01110101-10101101-01010101
adr     z23.d, [z13.d, z8.d, uxtw #3]  // 00000100-01101000-10101101-10110111
// CHECK: adr     z23.d, [z13.d, z8.d, uxtw #3] // encoding: [0xb7,0xad,0x68,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01101000-10101101-10110111
ADR     Z23.D, [Z13.D, Z8.D, UXTW #3]  // 00000100-01101000-10101101-10110111
// CHECK: adr     z23.d, [z13.d, z8.d, uxtw #3] // encoding: [0xb7,0xad,0x68,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01101000-10101101-10110111
adr     z31.d, [z31.d, z31.d, uxtw #3]  // 00000100-01111111-10101111-11111111
// CHECK: adr     z31.d, [z31.d, z31.d, uxtw #3] // encoding: [0xff,0xaf,0x7f,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01111111-10101111-11111111
ADR     Z31.D, [Z31.D, Z31.D, UXTW #3]  // 00000100-01111111-10101111-11111111
// CHECK: adr     z31.d, [z31.d, z31.d, uxtw #3] // encoding: [0xff,0xaf,0x7f,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01111111-10101111-11111111
