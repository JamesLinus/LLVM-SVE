# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xff,0xff,0xe0,0x25
# CHECK: add     z31.d, z31.d, #65280 // encoding: [0xff,0xff,0xe0,0x25]
# CHECK-ERROR-NOT: add     z31.d, z31.d, #65280 
0xb7,0xed,0xe0,0x25
# CHECK: add     z23.d, z23.d, #27904 // encoding: [0xb7,0xed,0xe0,0x25]
# CHECK-ERROR-NOT: add     z23.d, z23.d, #27904 
0x55,0xd5,0xe0,0x25
# CHECK: add     z21.d, z21.d, #170 // encoding: [0x55,0xd5,0xe0,0x25]
# CHECK-ERROR-NOT: add     z21.d, z21.d, #170 
0x00,0xc0,0xe0,0x25
# CHECK: add     z0.d, z0.d, #0 // encoding: [0x00,0xc0,0xe0,0x25]
# CHECK-ERROR-NOT: add     z0.d, z0.d, #0 
