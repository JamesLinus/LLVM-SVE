// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
uxtb    z21.h, p5/m, z10.h  // 00000100-01010001-10110101-01010101
// CHECK: uxtb    z21.h, p5/m, z10.h // encoding: [0x55,0xb5,0x51,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01010001-10110101-01010101
UXTB    Z21.H, P5/M, Z10.H  // 00000100-01010001-10110101-01010101
// CHECK: uxtb    z21.h, p5/m, z10.h // encoding: [0x55,0xb5,0x51,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01010001-10110101-01010101
uxtb    z0.h, p0/m, z0.h  // 00000100-01010001-10100000-00000000
// CHECK: uxtb    z0.h, p0/m, z0.h // encoding: [0x00,0xa0,0x51,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01010001-10100000-00000000
UXTB    Z0.H, P0/M, Z0.H  // 00000100-01010001-10100000-00000000
// CHECK: uxtb    z0.h, p0/m, z0.h // encoding: [0x00,0xa0,0x51,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01010001-10100000-00000000
uxtb    z23.h, p3/m, z13.h  // 00000100-01010001-10101101-10110111
// CHECK: uxtb    z23.h, p3/m, z13.h // encoding: [0xb7,0xad,0x51,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01010001-10101101-10110111
UXTB    Z23.H, P3/M, Z13.H  // 00000100-01010001-10101101-10110111
// CHECK: uxtb    z23.h, p3/m, z13.h // encoding: [0xb7,0xad,0x51,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01010001-10101101-10110111
uxtb    z31.h, p7/m, z31.h  // 00000100-01010001-10111111-11111111
// CHECK: uxtb    z31.h, p7/m, z31.h // encoding: [0xff,0xbf,0x51,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01010001-10111111-11111111
UXTB    Z31.H, P7/M, Z31.H  // 00000100-01010001-10111111-11111111
// CHECK: uxtb    z31.h, p7/m, z31.h // encoding: [0xff,0xbf,0x51,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-01010001-10111111-11111111
