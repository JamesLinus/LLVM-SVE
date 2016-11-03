# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0xa5,0x28,0x04
# CHECK: adr     z23.d, [z13.d, z8.d, sxtw #1] // encoding: [0xb7,0xa5,0x28,0x04]
# CHECK-ERROR-NOT: adr     z23.d, [z13.d, z8.d, sxtw #1] 
0x55,0xa5,0x35,0x04
# CHECK: adr     z21.d, [z10.d, z21.d, sxtw #1] // encoding: [0x55,0xa5,0x35,0x04]
# CHECK-ERROR-NOT: adr     z21.d, [z10.d, z21.d, sxtw #1] 
0x00,0xa4,0x20,0x04
# CHECK: adr     z0.d, [z0.d, z0.d, sxtw #1] // encoding: [0x00,0xa4,0x20,0x04]
# CHECK-ERROR-NOT: adr     z0.d, [z0.d, z0.d, sxtw #1] 
0xff,0xa7,0x3f,0x04
# CHECK: adr     z31.d, [z31.d, z31.d, sxtw #1] // encoding: [0xff,0xa7,0x3f,0x04]
# CHECK-ERROR-NOT: adr     z31.d, [z31.d, z31.d, sxtw #1] 
