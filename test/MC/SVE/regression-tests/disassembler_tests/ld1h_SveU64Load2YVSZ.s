# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0x4d,0x88,0xc4
# CHECK: ld1h    {z23.d}, p3/z, [x13, z8.d, uxtw] // encoding: [0xb7,0x4d,0x88,0xc4]
# CHECK-ERROR-NOT: ld1h    {z23.d}, p3/z, [x13, z8.d, uxtw] 
0x00,0x40,0x80,0xc4
# CHECK: ld1h    {z0.d}, p0/z, [x0, z0.d, uxtw] // encoding: [0x00,0x40,0x80,0xc4]
# CHECK-ERROR-NOT: ld1h    {z0.d}, p0/z, [x0, z0.d, uxtw] 
0x55,0x55,0x95,0xc4
# CHECK: ld1h    {z21.d}, p5/z, [x10, z21.d, uxtw] // encoding: [0x55,0x55,0x95,0xc4]
# CHECK-ERROR-NOT: ld1h    {z21.d}, p5/z, [x10, z21.d, uxtw] 
0xff,0x5f,0x9f,0xc4
# CHECK: ld1h    {z31.d}, p7/z, [sp, z31.d, uxtw] // encoding: [0xff,0x5f,0x9f,0xc4]
# CHECK-ERROR-NOT: ld1h    {z31.d}, p7/z, [sp, z31.d, uxtw] 
