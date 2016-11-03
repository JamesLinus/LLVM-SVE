# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0xc0,0xeb,0x25
# CHECK: umin    z0.d, z0.d, #0 // encoding: [0x00,0xc0,0xeb,0x25]
# CHECK-ERROR-NOT: umin    z0.d, z0.d, #0 
0xff,0xdf,0xeb,0x25
# CHECK: umin    z31.d, z31.d, #255 // encoding: [0xff,0xdf,0xeb,0x25]
# CHECK-ERROR-NOT: umin    z31.d, z31.d, #255 
0xb7,0xcd,0xeb,0x25
# CHECK: umin    z23.d, z23.d, #109 // encoding: [0xb7,0xcd,0xeb,0x25]
# CHECK-ERROR-NOT: umin    z23.d, z23.d, #109 
0x55,0xd5,0xeb,0x25
# CHECK: umin    z21.d, z21.d, #170 // encoding: [0x55,0xd5,0xeb,0x25]
# CHECK-ERROR-NOT: umin    z21.d, z21.d, #170 
