# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0x55,0xb5,0xc5
# CHECK: ld1d    {z21.d}, p5/z, [x10, z21.d, uxtw #3] // encoding: [0x55,0x55,0xb5,0xc5]
# CHECK-ERROR-NOT: ld1d    {z21.d}, p5/z, [x10, z21.d, uxtw #3] 
0xff,0x5f,0xbf,0xc5
# CHECK: ld1d    {z31.d}, p7/z, [sp, z31.d, uxtw #3] // encoding: [0xff,0x5f,0xbf,0xc5]
# CHECK-ERROR-NOT: ld1d    {z31.d}, p7/z, [sp, z31.d, uxtw #3] 
0xb7,0x4d,0xa8,0xc5
# CHECK: ld1d    {z23.d}, p3/z, [x13, z8.d, uxtw #3] // encoding: [0xb7,0x4d,0xa8,0xc5]
# CHECK-ERROR-NOT: ld1d    {z23.d}, p3/z, [x13, z8.d, uxtw #3] 
0x00,0x40,0xa0,0xc5
# CHECK: ld1d    {z0.d}, p0/z, [x0, z0.d, uxtw #3] // encoding: [0x00,0x40,0xa0,0xc5]
# CHECK-ERROR-NOT: ld1d    {z0.d}, p0/z, [x0, z0.d, uxtw #3] 
