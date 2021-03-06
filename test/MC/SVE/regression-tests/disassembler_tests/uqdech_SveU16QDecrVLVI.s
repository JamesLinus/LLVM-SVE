# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x55,0xcd,0x65,0x04
# CHECK: uqdech  z21.h, vl32, mul #6 // encoding: [0x55,0xcd,0x65,0x04]
# CHECK-ERROR-NOT: uqdech  z21.h, vl32, mul #6 
0xff,0xcf,0x6f,0x04
# CHECK: uqdech  z31.h, all, mul #16 // encoding: [0xff,0xcf,0x6f,0x04]
# CHECK-ERROR-NOT: uqdech  z31.h, all, mul #16 
0xb7,0xcd,0x68,0x04
# CHECK: uqdech  z23.h, vl256, mul #9 // encoding: [0xb7,0xcd,0x68,0x04]
# CHECK-ERROR-NOT: uqdech  z23.h, vl256, mul #9 
0x00,0xcc,0x60,0x04
# CHECK: uqdech  z0.h, pow2 // encoding: [0x00,0xcc,0x60,0x04]
# CHECK-ERROR-NOT: uqdech  z0.h, pow2 
