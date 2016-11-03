// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
uqadd   z23.h, z13.h, z8.h  // 00000100-01101000-00010101-10110111
// CHECK: uqadd   z23.h, z13.h, z8.h // encoding: [0xb7,0x15,0x68,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01101000-00010101-10110111
UQADD   Z23.H, Z13.H, Z8.H  // 00000100-01101000-00010101-10110111
// CHECK: uqadd   z23.h, z13.h, z8.h // encoding: [0xb7,0x15,0x68,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01101000-00010101-10110111
uqadd   z0.h, z0.h, z0.h  // 00000100-01100000-00010100-00000000
// CHECK: uqadd   z0.h, z0.h, z0.h // encoding: [0x00,0x14,0x60,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01100000-00010100-00000000
UQADD   Z0.H, Z0.H, Z0.H  // 00000100-01100000-00010100-00000000
// CHECK: uqadd   z0.h, z0.h, z0.h // encoding: [0x00,0x14,0x60,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01100000-00010100-00000000
uqadd   z31.h, z31.h, z31.h  // 00000100-01111111-00010111-11111111
// CHECK: uqadd   z31.h, z31.h, z31.h // encoding: [0xff,0x17,0x7f,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01111111-00010111-11111111
UQADD   Z31.H, Z31.H, Z31.H  // 00000100-01111111-00010111-11111111
// CHECK: uqadd   z31.h, z31.h, z31.h // encoding: [0xff,0x17,0x7f,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01111111-00010111-11111111
uqadd   z21.h, z10.h, z21.h  // 00000100-01110101-00010101-01010101
// CHECK: uqadd   z21.h, z10.h, z21.h // encoding: [0x55,0x15,0x75,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01110101-00010101-01010101
UQADD   Z21.H, Z10.H, Z21.H  // 00000100-01110101-00010101-01010101
// CHECK: uqadd   z21.h, z10.h, z21.h // encoding: [0x55,0x15,0x75,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01110101-00010101-01010101
