# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0x95,0x9b,0x04
# CHECK: lsl     z21.s, p5/m, z21.s, z10.d // encoding: [0x55,0x95,0x9b,0x04]
# CHECK-ERROR-NOT: lsl     z21.s, p5/m, z21.s, z10.d 
0xb7,0x8d,0x9b,0x04
# CHECK: lsl     z23.s, p3/m, z23.s, z13.d // encoding: [0xb7,0x8d,0x9b,0x04]
# CHECK-ERROR-NOT: lsl     z23.s, p3/m, z23.s, z13.d 
0xff,0x9f,0x9b,0x04
# CHECK: lsl     z31.s, p7/m, z31.s, z31.d // encoding: [0xff,0x9f,0x9b,0x04]
# CHECK-ERROR-NOT: lsl     z31.s, p7/m, z31.s, z31.d 
0x00,0x80,0x9b,0x04
# CHECK: lsl     z0.s, p0/m, z0.s, z0.d // encoding: [0x00,0x80,0x9b,0x04]
# CHECK-ERROR-NOT: lsl     z0.s, p0/m, z0.s, z0.d 
