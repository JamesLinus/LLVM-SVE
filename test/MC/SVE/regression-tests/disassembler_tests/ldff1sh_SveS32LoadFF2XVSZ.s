# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0x35,0xd5,0x84
# CHECK: ldff1sh {z21.s}, p5/z, [x10, z21.s, sxtw] // encoding: [0x55,0x35,0xd5,0x84]
# CHECK-ERROR-NOT: ldff1sh {z21.s}, p5/z, [x10, z21.s, sxtw] 
0xb7,0x2d,0xc8,0x84
# CHECK: ldff1sh {z23.s}, p3/z, [x13, z8.s, sxtw] // encoding: [0xb7,0x2d,0xc8,0x84]
# CHECK-ERROR-NOT: ldff1sh {z23.s}, p3/z, [x13, z8.s, sxtw] 
0xff,0x3f,0xdf,0x84
# CHECK: ldff1sh {z31.s}, p7/z, [sp, z31.s, sxtw] // encoding: [0xff,0x3f,0xdf,0x84]
# CHECK-ERROR-NOT: ldff1sh {z31.s}, p7/z, [sp, z31.s, sxtw] 
0x00,0x20,0xc0,0x84
# CHECK: ldff1sh {z0.s}, p0/z, [x0, z0.s, sxtw] // encoding: [0x00,0x20,0xc0,0x84]
# CHECK-ERROR-NOT: ldff1sh {z0.s}, p0/z, [x0, z0.s, sxtw] 
