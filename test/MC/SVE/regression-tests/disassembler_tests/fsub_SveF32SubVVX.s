# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0x05,0x88,0x65
# CHECK: fsub    z23.s, z13.s, z8.s // encoding: [0xb7,0x05,0x88,0x65]
# CHECK-ERROR-NOT: fsub    z23.s, z13.s, z8.s 
0xff,0x07,0x9f,0x65
# CHECK: fsub    z31.s, z31.s, z31.s // encoding: [0xff,0x07,0x9f,0x65]
# CHECK-ERROR-NOT: fsub    z31.s, z31.s, z31.s 
0x55,0x05,0x95,0x65
# CHECK: fsub    z21.s, z10.s, z21.s // encoding: [0x55,0x05,0x95,0x65]
# CHECK-ERROR-NOT: fsub    z21.s, z10.s, z21.s 
0x00,0x04,0x80,0x65
# CHECK: fsub    z0.s, z0.s, z0.s // encoding: [0x00,0x04,0x80,0x65]
# CHECK-ERROR-NOT: fsub    z0.s, z0.s, z0.s 
