# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0x42,0x40,0x25
# CHECK: nots    p0.b, p0/z, p0.b // encoding: [0x00,0x42,0x40,0x25]
# CHECK-ERROR-NOT: nots    p0.b, p0/z, p0.b 
0xa7,0x6f,0x48,0x25
# CHECK: eors    p7.b, p11/z, p13.b, p8.b // encoding: [0xa7,0x6f,0x48,0x25]
# CHECK-ERROR-NOT: eors    p7.b, p11/z, p13.b, p8.b 
0xef,0x7f,0x4f,0x25
# CHECK: nots    p15.b, p15/z, p15.b // encoding: [0xef,0x7f,0x4f,0x25]
# CHECK-ERROR-NOT: nots    p15.b, p15/z, p15.b 
0x45,0x57,0x45,0x25
# CHECK: nots    p5.b, p5/z, p10.b // encoding: [0x45,0x57,0x45,0x25]
# CHECK-ERROR-NOT: nots    p5.b, p5/z, p10.b 
