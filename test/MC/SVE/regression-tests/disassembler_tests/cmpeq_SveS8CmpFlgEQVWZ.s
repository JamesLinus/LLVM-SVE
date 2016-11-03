# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xef,0x3f,0x1f,0x24
# CHECK: cmpeq   p15.b, p7/z, z31.b, z31.d // encoding: [0xef,0x3f,0x1f,0x24]
# CHECK-ERROR-NOT: cmpeq   p15.b, p7/z, z31.b, z31.d 
0x00,0x20,0x00,0x24
# CHECK: cmpeq   p0.b, p0/z, z0.b, z0.d // encoding: [0x00,0x20,0x00,0x24]
# CHECK-ERROR-NOT: cmpeq   p0.b, p0/z, z0.b, z0.d 
0x45,0x35,0x15,0x24
# CHECK: cmpeq   p5.b, p5/z, z10.b, z21.d // encoding: [0x45,0x35,0x15,0x24]
# CHECK-ERROR-NOT: cmpeq   p5.b, p5/z, z10.b, z21.d 
0xa7,0x2d,0x08,0x24
# CHECK: cmpeq   p7.b, p3/z, z13.b, z8.d // encoding: [0xa7,0x2d,0x08,0x24]
# CHECK-ERROR-NOT: cmpeq   p7.b, p3/z, z13.b, z8.d 
