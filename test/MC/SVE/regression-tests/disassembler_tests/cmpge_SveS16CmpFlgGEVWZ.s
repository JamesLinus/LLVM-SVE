# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xa7,0x4d,0x48,0x24
# CHECK: cmpge   p7.h, p3/z, z13.h, z8.d // encoding: [0xa7,0x4d,0x48,0x24]
# CHECK-ERROR-NOT: cmpge   p7.h, p3/z, z13.h, z8.d 
0x00,0x40,0x40,0x24
# CHECK: cmpge   p0.h, p0/z, z0.h, z0.d // encoding: [0x00,0x40,0x40,0x24]
# CHECK-ERROR-NOT: cmpge   p0.h, p0/z, z0.h, z0.d 
0x45,0x55,0x55,0x24
# CHECK: cmpge   p5.h, p5/z, z10.h, z21.d // encoding: [0x45,0x55,0x55,0x24]
# CHECK-ERROR-NOT: cmpge   p5.h, p5/z, z10.h, z21.d 
0xef,0x5f,0x5f,0x24
# CHECK: cmpge   p15.h, p7/z, z31.h, z31.d // encoding: [0xef,0x5f,0x5f,0x24]
# CHECK-ERROR-NOT: cmpge   p15.h, p7/z, z31.h, z31.d 
