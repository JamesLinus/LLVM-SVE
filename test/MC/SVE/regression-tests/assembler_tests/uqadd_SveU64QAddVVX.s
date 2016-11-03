// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
uqadd   z0.d, z0.d, z0.d  // 00000100-11100000-00010100-00000000
// CHECK: uqadd   z0.d, z0.d, z0.d // encoding: [0x00,0x14,0xe0,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11100000-00010100-00000000
UQADD   Z0.D, Z0.D, Z0.D  // 00000100-11100000-00010100-00000000
// CHECK: uqadd   z0.d, z0.d, z0.d // encoding: [0x00,0x14,0xe0,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11100000-00010100-00000000
uqadd   z31.d, z31.d, z31.d  // 00000100-11111111-00010111-11111111
// CHECK: uqadd   z31.d, z31.d, z31.d // encoding: [0xff,0x17,0xff,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11111111-00010111-11111111
UQADD   Z31.D, Z31.D, Z31.D  // 00000100-11111111-00010111-11111111
// CHECK: uqadd   z31.d, z31.d, z31.d // encoding: [0xff,0x17,0xff,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11111111-00010111-11111111
uqadd   z23.d, z13.d, z8.d  // 00000100-11101000-00010101-10110111
// CHECK: uqadd   z23.d, z13.d, z8.d // encoding: [0xb7,0x15,0xe8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11101000-00010101-10110111
UQADD   Z23.D, Z13.D, Z8.D  // 00000100-11101000-00010101-10110111
// CHECK: uqadd   z23.d, z13.d, z8.d // encoding: [0xb7,0x15,0xe8,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11101000-00010101-10110111
uqadd   z21.d, z10.d, z21.d  // 00000100-11110101-00010101-01010101
// CHECK: uqadd   z21.d, z10.d, z21.d // encoding: [0x55,0x15,0xf5,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11110101-00010101-01010101
UQADD   Z21.D, Z10.D, Z21.D  // 00000100-11110101-00010101-01010101
// CHECK: uqadd   z21.d, z10.d, z21.d // encoding: [0x55,0x15,0xf5,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-11110101-00010101-01010101
