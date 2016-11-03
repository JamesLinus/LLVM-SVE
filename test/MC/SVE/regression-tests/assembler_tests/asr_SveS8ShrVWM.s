// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
asr     z31.b, p7/m, z31.b, z31.d  // 00000100-00011000-10011111-11111111
// CHECK: asr     z31.b, p7/m, z31.b, z31.d // encoding: [0xff,0x9f,0x18,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011000-10011111-11111111
ASR     Z31.B, P7/M, Z31.B, Z31.D  // 00000100-00011000-10011111-11111111
// CHECK: asr     z31.b, p7/m, z31.b, z31.d // encoding: [0xff,0x9f,0x18,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011000-10011111-11111111
asr     z21.b, p5/m, z21.b, z10.d  // 00000100-00011000-10010101-01010101
// CHECK: asr     z21.b, p5/m, z21.b, z10.d // encoding: [0x55,0x95,0x18,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011000-10010101-01010101
ASR     Z21.B, P5/M, Z21.B, Z10.D  // 00000100-00011000-10010101-01010101
// CHECK: asr     z21.b, p5/m, z21.b, z10.d // encoding: [0x55,0x95,0x18,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011000-10010101-01010101
asr     z0.b, p0/m, z0.b, z0.d  // 00000100-00011000-10000000-00000000
// CHECK: asr     z0.b, p0/m, z0.b, z0.d // encoding: [0x00,0x80,0x18,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011000-10000000-00000000
ASR     Z0.B, P0/M, Z0.B, Z0.D  // 00000100-00011000-10000000-00000000
// CHECK: asr     z0.b, p0/m, z0.b, z0.d // encoding: [0x00,0x80,0x18,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011000-10000000-00000000
asr     z23.b, p3/m, z23.b, z13.d  // 00000100-00011000-10001101-10110111
// CHECK: asr     z23.b, p3/m, z23.b, z13.d // encoding: [0xb7,0x8d,0x18,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011000-10001101-10110111
ASR     Z23.B, P3/M, Z23.B, Z13.D  // 00000100-00011000-10001101-10110111
// CHECK: asr     z23.b, p3/m, z23.b, z13.d // encoding: [0xb7,0x8d,0x18,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00011000-10001101-10110111
