# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0x14,0xe0,0x04
# CHECK: uqadd   z0.d, z0.d, z0.d // encoding: [0x00,0x14,0xe0,0x04]
# CHECK-ERROR-NOT: uqadd   z0.d, z0.d, z0.d 
0xff,0x17,0xff,0x04
# CHECK: uqadd   z31.d, z31.d, z31.d // encoding: [0xff,0x17,0xff,0x04]
# CHECK-ERROR-NOT: uqadd   z31.d, z31.d, z31.d 
0xb7,0x15,0xe8,0x04
# CHECK: uqadd   z23.d, z13.d, z8.d // encoding: [0xb7,0x15,0xe8,0x04]
# CHECK-ERROR-NOT: uqadd   z23.d, z13.d, z8.d 
0x55,0x15,0xf5,0x04
# CHECK: uqadd   z21.d, z10.d, z21.d // encoding: [0x55,0x15,0xf5,0x04]
# CHECK-ERROR-NOT: uqadd   z21.d, z10.d, z21.d 
