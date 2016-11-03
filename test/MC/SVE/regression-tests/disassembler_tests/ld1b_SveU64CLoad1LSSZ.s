# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0x4d,0x68,0xa4
# CHECK: ld1b    {z23.d}, p3/z, [x13, x8] // encoding: [0xb7,0x4d,0x68,0xa4]
# CHECK-ERROR-NOT: ld1b    {z23.d}, p3/z, [x13, x8] 
0x25,0x4e,0x70,0xa4
# CHECK: ld1b    {z5.d}, p3/z, [x17, x16] // encoding: [0x25,0x4e,0x70,0xa4]
# CHECK-ERROR-NOT: ld1b    {z5.d}, p3/z, [x17, x16] 
0x55,0x55,0x75,0xa4
# CHECK: ld1b    {z21.d}, p5/z, [x10, x21] // encoding: [0x55,0x55,0x75,0xa4]
# CHECK-ERROR-NOT: ld1b    {z21.d}, p5/z, [x10, x21] 
0x00,0x40,0x60,0xa4
# CHECK: ld1b    {z0.d}, p0/z, [x0, x0] // encoding: [0x00,0x40,0x60,0xa4]
# CHECK-ERROR-NOT: ld1b    {z0.d}, p0/z, [x0, x0] 
