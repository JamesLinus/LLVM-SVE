# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xff,0xbf,0x9d,0x65
# CHECK: fcvtzu  z31.s, p7/m, z31.s // encoding: [0xff,0xbf,0x9d,0x65]
# CHECK-ERROR-NOT: fcvtzu  z31.s, p7/m, z31.s 
0xb7,0xad,0x9d,0x65
# CHECK: fcvtzu  z23.s, p3/m, z13.s // encoding: [0xb7,0xad,0x9d,0x65]
# CHECK-ERROR-NOT: fcvtzu  z23.s, p3/m, z13.s 
0x00,0xa0,0x9d,0x65
# CHECK: fcvtzu  z0.s, p0/m, z0.s // encoding: [0x00,0xa0,0x9d,0x65]
# CHECK-ERROR-NOT: fcvtzu  z0.s, p0/m, z0.s 
0x55,0xb5,0x9d,0x65
# CHECK: fcvtzu  z21.s, p5/m, z10.s // encoding: [0x55,0xb5,0x9d,0x65]
# CHECK-ERROR-NOT: fcvtzu  z21.s, p5/m, z10.s 
