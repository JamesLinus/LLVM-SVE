# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0xd5,0xd5,0xc4
# CHECK: ld1h    {z21.d}, p5/z, [x10, z21.d] // encoding: [0x55,0xd5,0xd5,0xc4]
# CHECK-ERROR-NOT: ld1h    {z21.d}, p5/z, [x10, z21.d] 
0xff,0xdf,0xdf,0xc4
# CHECK: ld1h    {z31.d}, p7/z, [sp, z31.d] // encoding: [0xff,0xdf,0xdf,0xc4]
# CHECK-ERROR-NOT: ld1h    {z31.d}, p7/z, [sp, z31.d] 
0x00,0xc0,0xc0,0xc4
# CHECK: ld1h    {z0.d}, p0/z, [x0, z0.d] // encoding: [0x00,0xc0,0xc0,0xc4]
# CHECK-ERROR-NOT: ld1h    {z0.d}, p0/z, [x0, z0.d] 
0xb7,0xcd,0xc8,0xc4
# CHECK: ld1h    {z23.d}, p3/z, [x13, z8.d] // encoding: [0xb7,0xcd,0xc8,0xc4]
# CHECK-ERROR-NOT: ld1h    {z23.d}, p3/z, [x13, z8.d] 
