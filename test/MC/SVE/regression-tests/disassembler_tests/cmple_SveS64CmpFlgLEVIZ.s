# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0x35,0xd5,0x25
# CHECK: cmple   p5.d, p5/z, z10.d, #-11 // encoding: [0x55,0x35,0xd5,0x25]
# CHECK-ERROR-NOT: cmple   p5.d, p5/z, z10.d, #-11 
0xff,0x3f,0xdf,0x25
# CHECK: cmple   p15.d, p7/z, z31.d, #-1 // encoding: [0xff,0x3f,0xdf,0x25]
# CHECK-ERROR-NOT: cmple   p15.d, p7/z, z31.d, #-1 
0xb7,0x2d,0xc8,0x25
# CHECK: cmple   p7.d, p3/z, z13.d, #8 // encoding: [0xb7,0x2d,0xc8,0x25]
# CHECK-ERROR-NOT: cmple   p7.d, p3/z, z13.d, #8 
0x10,0x20,0xc0,0x25
# CHECK: cmple   p0.d, p0/z, z0.d, #0 // encoding: [0x10,0x20,0xc0,0x25]
# CHECK-ERROR-NOT: cmple   p0.d, p0/z, z0.d, #0 
