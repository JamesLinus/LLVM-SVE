# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0xa0,0x60,0xa4
# CHECK: ld1b    {z0.d}, p0/z, [x0] // encoding: [0x00,0xa0,0x60,0xa4]
# CHECK-ERROR-NOT: ld1b    {z0.d}, p0/z, [x0] 
0xff,0xbf,0x6f,0xa4
# CHECK: ld1b    {z31.d}, p7/z, [sp, #-1, mul vl] // encoding: [0xff,0xbf,0x6f,0xa4]
# CHECK-ERROR-NOT: ld1b    {z31.d}, p7/z, [sp, #-1, mul vl] 
0x55,0xb5,0x65,0xa4
# CHECK: ld1b    {z21.d}, p5/z, [x10, #5, mul vl] // encoding: [0x55,0xb5,0x65,0xa4]
# CHECK-ERROR-NOT: ld1b    {z21.d}, p5/z, [x10, #5, mul vl] 
0xb7,0xad,0x68,0xa4
# CHECK: ld1b    {z23.d}, p3/z, [x13, #-8, mul vl] // encoding: [0xb7,0xad,0x68,0xa4]
# CHECK-ERROR-NOT: ld1b    {z23.d}, p3/z, [x13, #-8, mul vl] 
