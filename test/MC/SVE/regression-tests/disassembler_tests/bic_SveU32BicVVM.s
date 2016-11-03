# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0x00,0x9b,0x04
# CHECK: bic     z0.s, p0/m, z0.s, z0.s // encoding: [0x00,0x00,0x9b,0x04]
# CHECK-ERROR-NOT: bic     z0.s, p0/m, z0.s, z0.s 
0xb7,0x0d,0x9b,0x04
# CHECK: bic     z23.s, p3/m, z23.s, z13.s // encoding: [0xb7,0x0d,0x9b,0x04]
# CHECK-ERROR-NOT: bic     z23.s, p3/m, z23.s, z13.s 
0x55,0x15,0x9b,0x04
# CHECK: bic     z21.s, p5/m, z21.s, z10.s // encoding: [0x55,0x15,0x9b,0x04]
# CHECK-ERROR-NOT: bic     z21.s, p5/m, z21.s, z10.s 
0xff,0x1f,0x9b,0x04
# CHECK: bic     z31.s, p7/m, z31.s, z31.s // encoding: [0xff,0x1f,0x9b,0x04]
# CHECK-ERROR-NOT: bic     z31.s, p7/m, z31.s, z31.s 
