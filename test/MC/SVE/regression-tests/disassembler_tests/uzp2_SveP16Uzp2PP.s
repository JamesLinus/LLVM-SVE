# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xa7,0x4d,0x68,0x05
# CHECK: uzp2    p7.h, p13.h, p8.h // encoding: [0xa7,0x4d,0x68,0x05]
# CHECK-ERROR-NOT: uzp2    p7.h, p13.h, p8.h 
0x45,0x4d,0x65,0x05
# CHECK: uzp2    p5.h, p10.h, p5.h // encoding: [0x45,0x4d,0x65,0x05]
# CHECK-ERROR-NOT: uzp2    p5.h, p10.h, p5.h 
0xef,0x4d,0x6f,0x05
# CHECK: uzp2    p15.h, p15.h, p15.h // encoding: [0xef,0x4d,0x6f,0x05]
# CHECK-ERROR-NOT: uzp2    p15.h, p15.h, p15.h 
0x00,0x4c,0x60,0x05
# CHECK: uzp2    p0.h, p0.h, p0.h // encoding: [0x00,0x4c,0x60,0x05]
# CHECK-ERROR-NOT: uzp2    p0.h, p0.h, p0.h 
