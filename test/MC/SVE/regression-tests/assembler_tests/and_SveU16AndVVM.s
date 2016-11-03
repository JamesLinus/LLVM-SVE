// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
and     z23.h, p3/m, z23.h, z13.h  // 00000100-01011010-00001101-10110111
// CHECK: and     z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x0d,0x5a,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01011010-00001101-10110111
AND     Z23.H, P3/M, Z23.H, Z13.H  // 00000100-01011010-00001101-10110111
// CHECK: and     z23.h, p3/m, z23.h, z13.h // encoding: [0xb7,0x0d,0x5a,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01011010-00001101-10110111
and     z31.h, p7/m, z31.h, z31.h  // 00000100-01011010-00011111-11111111
// CHECK: and     z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x1f,0x5a,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01011010-00011111-11111111
AND     Z31.H, P7/M, Z31.H, Z31.H  // 00000100-01011010-00011111-11111111
// CHECK: and     z31.h, p7/m, z31.h, z31.h // encoding: [0xff,0x1f,0x5a,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01011010-00011111-11111111
and     z21.h, p5/m, z21.h, z10.h  // 00000100-01011010-00010101-01010101
// CHECK: and     z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x15,0x5a,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01011010-00010101-01010101
AND     Z21.H, P5/M, Z21.H, Z10.H  // 00000100-01011010-00010101-01010101
// CHECK: and     z21.h, p5/m, z21.h, z10.h // encoding: [0x55,0x15,0x5a,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01011010-00010101-01010101
and     z0.h, p0/m, z0.h, z0.h  // 00000100-01011010-00000000-00000000
// CHECK: and     z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x00,0x5a,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01011010-00000000-00000000
AND     Z0.H, P0/M, Z0.H, Z0.H  // 00000100-01011010-00000000-00000000
// CHECK: and     z0.h, p0/m, z0.h, z0.h // encoding: [0x00,0x00,0x5a,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01011010-00000000-00000000
