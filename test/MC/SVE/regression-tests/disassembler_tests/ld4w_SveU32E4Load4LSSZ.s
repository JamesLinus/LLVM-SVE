# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0xc0,0x60,0xa5
# CHECK: ld4w    {z0.s, z1.s, z2.s, z3.s}, p0/z, [x0, x0, lsl #2] // encoding: [0x00,0xc0,0x60,0xa5]
# CHECK-ERROR-NOT: ld4w    {z0.s, z1.s, z2.s, z3.s}, p0/z, [x0, x0, lsl #2] 
0x25,0xce,0x70,0xa5
# CHECK: ld4w    {z5.s, z6.s, z7.s, z8.s}, p3/z, [x17, x16, lsl #2] // encoding: [0x25,0xce,0x70,0xa5]
# CHECK-ERROR-NOT: ld4w    {z5.s, z6.s, z7.s, z8.s}, p3/z, [x17, x16, lsl #2] 
0xb7,0xcd,0x68,0xa5
# CHECK: ld4w    {z23.s, z24.s, z25.s, z26.s}, p3/z, [x13, x8, lsl #2] // encoding: [0xb7,0xcd,0x68,0xa5]
# CHECK-ERROR-NOT: ld4w    {z23.s, z24.s, z25.s, z26.s}, p3/z, [x13, x8, lsl #2] 
0x55,0xd5,0x75,0xa5
# CHECK: ld4w    {z21.s, z22.s, z23.s, z24.s}, p5/z, [x10, x21, lsl #2] // encoding: [0x55,0xd5,0x75,0xa5]
# CHECK-ERROR-NOT: ld4w    {z21.s, z22.s, z23.s, z24.s}, p5/z, [x10, x21, lsl #2] 
