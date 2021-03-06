# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0x8d,0x40,0x04
# CHECK: asr     z23.s, p3/m, z23.s, #19 // encoding: [0xb7,0x8d,0x40,0x04]
# CHECK-ERROR-NOT: asr     z23.s, p3/m, z23.s, #19 
0x55,0x95,0x40,0x04
# CHECK: asr     z21.s, p5/m, z21.s, #22 // encoding: [0x55,0x95,0x40,0x04]
# CHECK-ERROR-NOT: asr     z21.s, p5/m, z21.s, #22 
0x00,0x80,0x40,0x04
# CHECK: asr     z0.s, p0/m, z0.s, #32 // encoding: [0x00,0x80,0x40,0x04]
# CHECK-ERROR-NOT: asr     z0.s, p0/m, z0.s, #32 
0xff,0x9f,0x40,0x04
# CHECK: asr     z31.s, p7/m, z31.s, #1 // encoding: [0xff,0x9f,0x40,0x04]
# CHECK-ERROR-NOT: asr     z31.s, p7/m, z31.s, #1 
