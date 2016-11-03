# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0x80,0x9f,0x65
# CHECK: fmin    z0.s, p0/m, z0.s, #0.0{{0*}} // encoding: [0x00,0x80,0x9f,0x65]
# CHECK-ERROR-NOT: fmin    z0.s, p0/m, z0.s, #0.0{{0*}} 
0x3f,0x9c,0x9f,0x65
# CHECK: fmin    z31.s, p7/m, z31.s, #1.0{{0*}} // encoding: [0x3f,0x9c,0x9f,0x65]
# CHECK-ERROR-NOT: fmin    z31.s, p7/m, z31.s, #1.0{{0*}} 
0x15,0x94,0x9f,0x65
# CHECK: fmin    z21.s, p5/m, z21.s, #0.0{{0*}} // encoding: [0x15,0x94,0x9f,0x65]
# CHECK-ERROR-NOT: fmin    z21.s, p5/m, z21.s, #0.0{{0*}} 
0x37,0x8c,0x9f,0x65
# CHECK: fmin    z23.s, p3/m, z23.s, #1.0{{0*}} // encoding: [0x37,0x8c,0x9f,0x65]
# CHECK-ERROR-NOT: fmin    z23.s, p3/m, z23.s, #1.0{{0*}} 
