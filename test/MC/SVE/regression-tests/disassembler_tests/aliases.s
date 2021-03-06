# RUN: llvm-mc -triple=aarch64-none-linux-gnu -mattr=+sve -show-encoding -disassemble < %s | FileCheck %s
0xf6,0xfb,0x20,0x04
# CHECK: 	sqdecb	x22, w22                // encoding: [0xf6,0xfb,0x20,0x04]
0xfa,0xf3,0x20,0x04
# CHECK: 	sqincb	x26, w26                // encoding: [0xfa,0xf3,0x20,0x04]
0xff,0xfb,0xa0,0x04
# CHECK: 	sqdecw	xzr, wzr                // encoding: [0xff,0xfb,0xa0,0x04]
0xe5,0xf3,0x60,0x04
# CHECK: 	sqinch	x5, w5                  // encoding: [0xe5,0xf3,0x60,0x04]
0xe0,0xf3,0xa0,0x04
# CHECK: 	sqincw	x0, w0                  // encoding: [0xe0,0xf3,0xa0,0x04]
0xe2,0xfb,0x20,0x04
# CHECK: 	sqdecb	x2, w2                  // encoding: [0xe2,0xfb,0x20,0x04]
0xe3,0xf3,0xe0,0x04
# CHECK: 	sqincd	x3, w3                  // encoding: [0xe3,0xf3,0xe0,0x04]
0xe8,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x8, w8                  // encoding: [0xe8,0xfb,0xa0,0x04]
0xf5,0xf3,0xa0,0x04
# CHECK: 	sqincw	x21, w21                // encoding: [0xf5,0xf3,0xa0,0x04]
0xe4,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x4, w4                  // encoding: [0xe4,0xfb,0xa0,0x04]
0xf1,0xf3,0xe0,0x04
# CHECK: 	sqincd	x17, w17                // encoding: [0xf1,0xf3,0xe0,0x04]
0xf4,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x20, w20                // encoding: [0xf4,0xfb,0xe0,0x04]
0xfb,0xf3,0xa0,0x04
# CHECK: 	sqincw	x27, w27                // encoding: [0xfb,0xf3,0xa0,0x04]
0xfb,0xf3,0x20,0x04
# CHECK: 	sqincb	x27, w27                // encoding: [0xfb,0xf3,0x20,0x04]
0xf5,0xf3,0x20,0x04
# CHECK: 	sqincb	x21, w21                // encoding: [0xf5,0xf3,0x20,0x04]
0xf2,0xf3,0x60,0x04
# CHECK: 	sqinch	x18, w18                // encoding: [0xf2,0xf3,0x60,0x04]
0xfb,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x27, w27                // encoding: [0xfb,0xfb,0xa0,0x04]
0xf2,0xf3,0xa0,0x04
# CHECK: 	sqincw	x18, w18                // encoding: [0xf2,0xf3,0xa0,0x04]
0xf4,0xf3,0x60,0x04
# CHECK: 	sqinch	x20, w20                // encoding: [0xf4,0xf3,0x60,0x04]
0xee,0xf3,0xa0,0x04
# CHECK: 	sqincw	x14, w14                // encoding: [0xee,0xf3,0xa0,0x04]
0xe4,0xfb,0x60,0x04
# CHECK: 	sqdech	x4, w4                  // encoding: [0xe4,0xfb,0x60,0x04]
0xff,0xfb,0xe0,0x04
# CHECK: 	sqdecd	xzr, wzr                // encoding: [0xff,0xfb,0xe0,0x04]
0xf7,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x23, w23                // encoding: [0xf7,0xfb,0xa0,0x04]
0xe4,0xf3,0x20,0x04
# CHECK: 	sqincb	x4, w4                  // encoding: [0xe4,0xf3,0x20,0x04]
0xe5,0xf3,0xa0,0x04
# CHECK: 	sqincw	x5, w5                  // encoding: [0xe5,0xf3,0xa0,0x04]
0xee,0xfb,0x20,0x04
# CHECK: 	sqdecb	x14, w14                // encoding: [0xee,0xfb,0x20,0x04]
0xe6,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x6, w6                  // encoding: [0xe6,0xfb,0xe0,0x04]
0xe2,0xfb,0x60,0x04
# CHECK: 	sqdech	x2, w2                  // encoding: [0xe2,0xfb,0x60,0x04]
0xe4,0xf3,0xa0,0x04
# CHECK: 	sqincw	x4, w4                  // encoding: [0xe4,0xf3,0xa0,0x04]
0xf4,0xfb,0x20,0x04
# CHECK: 	sqdecb	x20, w20                // encoding: [0xf4,0xfb,0x20,0x04]
0xe9,0xf3,0x60,0x04
# CHECK: 	sqinch	x9, w9                  // encoding: [0xe9,0xf3,0x60,0x04]
0xf2,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x18, w18                // encoding: [0xf2,0xfb,0xe0,0x04]
0xf7,0xf3,0x20,0x04
# CHECK: 	sqincb	x23, w23                // encoding: [0xf7,0xf3,0x20,0x04]
0xfd,0xfb,0x20,0x04
# CHECK: 	sqdecb	x29, w29                // encoding: [0xfd,0xfb,0x20,0x04]
0xe3,0xf3,0x20,0x04
# CHECK: 	sqincb	x3, w3                  // encoding: [0xe3,0xf3,0x20,0x04]
0xe0,0xfb,0x20,0x04
# CHECK: 	sqdecb	x0, w0                  // encoding: [0xe0,0xfb,0x20,0x04]
0xf2,0xf3,0x20,0x04
# CHECK: 	sqincb	x18, w18                // encoding: [0xf2,0xf3,0x20,0x04]
0xf0,0xf3,0x20,0x04
# CHECK: 	sqincb	x16, w16                // encoding: [0xf0,0xf3,0x20,0x04]
0xef,0xf3,0x60,0x04
# CHECK: 	sqinch	x15, w15                // encoding: [0xef,0xf3,0x60,0x04]
0xf0,0xfb,0x60,0x04
# CHECK: 	sqdech	x16, w16                // encoding: [0xf0,0xfb,0x60,0x04]
0xfd,0xf3,0xe0,0x04
# CHECK: 	sqincd	x29, w29                // encoding: [0xfd,0xf3,0xe0,0x04]
0xfc,0xfb,0x60,0x04
# CHECK: 	sqdech	x28, w28                // encoding: [0xfc,0xfb,0x60,0x04]
0xfa,0xf3,0xe0,0x04
# CHECK: 	sqincd	x26, w26                // encoding: [0xfa,0xf3,0xe0,0x04]
0xf5,0xf3,0xe0,0x04
# CHECK: 	sqincd	x21, w21                // encoding: [0xf5,0xf3,0xe0,0x04]
0xe7,0xf3,0x60,0x04
# CHECK: 	sqinch	x7, w7                  // encoding: [0xe7,0xf3,0x60,0x04]
0xe8,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x8, w8                  // encoding: [0xe8,0xfb,0xe0,0x04]
0xe1,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x1, w1                  // encoding: [0xe1,0xfb,0xe0,0x04]
0xf2,0xfb,0x20,0x04
# CHECK: 	sqdecb	x18, w18                // encoding: [0xf2,0xfb,0x20,0x04]
0xe3,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x3, w3                  // encoding: [0xe3,0xfb,0xe0,0x04]
0xfd,0xf3,0x20,0x04
# CHECK: 	sqincb	x29, w29                // encoding: [0xfd,0xf3,0x20,0x04]
0xf8,0xfb,0x60,0x04
# CHECK: 	sqdech	x24, w24                // encoding: [0xf8,0xfb,0x60,0x04]
0xf5,0xfb,0x60,0x04
# CHECK: 	sqdech	x21, w21                // encoding: [0xf5,0xfb,0x60,0x04]
0xee,0xf3,0x60,0x04
# CHECK: 	sqinch	x14, w14                // encoding: [0xee,0xf3,0x60,0x04]
0xe0,0xf3,0x60,0x04
# CHECK: 	sqinch	x0, w0                  // encoding: [0xe0,0xf3,0x60,0x04]
0xea,0xf3,0xe0,0x04
# CHECK: 	sqincd	x10, w10                // encoding: [0xea,0xf3,0xe0,0x04]
0xe4,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x4, w4                  // encoding: [0xe4,0xfb,0xe0,0x04]
0xf9,0xf3,0x20,0x04
# CHECK: 	sqincb	x25, w25                // encoding: [0xf9,0xf3,0x20,0x04]
0xeb,0xfb,0x60,0x04
# CHECK: 	sqdech	x11, w11                // encoding: [0xeb,0xfb,0x60,0x04]
0xff,0xf3,0xa0,0x04
# CHECK: 	sqincw	xzr, wzr                // encoding: [0xff,0xf3,0xa0,0x04]
0xed,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x13, w13                // encoding: [0xed,0xfb,0xe0,0x04]
0xfc,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x28, w28                // encoding: [0xfc,0xfb,0xa0,0x04]
0xfe,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x30, w30                // encoding: [0xfe,0xfb,0xa0,0x04]
0xef,0xfb,0x60,0x04
# CHECK: 	sqdech	x15, w15                // encoding: [0xef,0xfb,0x60,0x04]
0xf8,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x24, w24                // encoding: [0xf8,0xfb,0xe0,0x04]
0xfa,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x26, w26                // encoding: [0xfa,0xfb,0xa0,0x04]
0xf3,0xfb,0x60,0x04
# CHECK: 	sqdech	x19, w19                // encoding: [0xf3,0xfb,0x60,0x04]
0xe2,0xf3,0xe0,0x04
# CHECK: 	sqincd	x2, w2                  // encoding: [0xe2,0xf3,0xe0,0x04]
0xe5,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x5, w5                  // encoding: [0xe5,0xfb,0xa0,0x04]
0xfa,0xfb,0x60,0x04
# CHECK: 	sqdech	x26, w26                // encoding: [0xfa,0xfb,0x60,0x04]
0xfc,0xf3,0xe0,0x04
# CHECK: 	sqincd	x28, w28                // encoding: [0xfc,0xf3,0xe0,0x04]
0xe6,0xf3,0xa0,0x04
# CHECK: 	sqincw	x6, w6                  // encoding: [0xe6,0xf3,0xa0,0x04]
0xe8,0xf3,0x60,0x04
# CHECK: 	sqinch	x8, w8                  // encoding: [0xe8,0xf3,0x60,0x04]
0xf9,0xfb,0x60,0x04
# CHECK: 	sqdech	x25, w25                // encoding: [0xf9,0xfb,0x60,0x04]
0xf7,0xfb,0x60,0x04
# CHECK: 	sqdech	x23, w23                // encoding: [0xf7,0xfb,0x60,0x04]
0xec,0xf3,0xa0,0x04
# CHECK: 	sqincw	x12, w12                // encoding: [0xec,0xf3,0xa0,0x04]
0xf5,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x21, w21                // encoding: [0xf5,0xfb,0xa0,0x04]
0xe9,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x9, w9                  // encoding: [0xe9,0xfb,0xa0,0x04]
0xff,0xfb,0x60,0x04
# CHECK: 	sqdech	xzr, wzr                // encoding: [0xff,0xfb,0x60,0x04]
0xf1,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x17, w17                // encoding: [0xf1,0xfb,0xa0,0x04]
0xff,0xfb,0x20,0x04
# CHECK: 	sqdecb	xzr, wzr                // encoding: [0xff,0xfb,0x20,0x04]
0xe9,0xf3,0xe0,0x04
# CHECK: 	sqincd	x9, w9                  // encoding: [0xe9,0xf3,0xe0,0x04]
0xf6,0xf3,0xe0,0x04
# CHECK: 	sqincd	x22, w22                // encoding: [0xf6,0xf3,0xe0,0x04]
0xf0,0xfb,0x20,0x04
# CHECK: 	sqdecb	x16, w16                // encoding: [0xf0,0xfb,0x20,0x04]
0xe1,0xfb,0x20,0x04
# CHECK: 	sqdecb	x1, w1                  // encoding: [0xe1,0xfb,0x20,0x04]
0xea,0xfb,0x60,0x04
# CHECK: 	sqdech	x10, w10                // encoding: [0xea,0xfb,0x60,0x04]
0xf3,0xfb,0x20,0x04
# CHECK: 	sqdecb	x19, w19                // encoding: [0xf3,0xfb,0x20,0x04]
0xfc,0xfb,0x20,0x04
# CHECK: 	sqdecb	x28, w28                // encoding: [0xfc,0xfb,0x20,0x04]
0xeb,0xf3,0x20,0x04
# CHECK: 	sqincb	x11, w11                // encoding: [0xeb,0xf3,0x20,0x04]
0xf3,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x19, w19                // encoding: [0xf3,0xfb,0xe0,0x04]
0xe6,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x6, w6                  // encoding: [0xe6,0xfb,0xa0,0x04]
0xf8,0xfb,0x20,0x04
# CHECK: 	sqdecb	x24, w24                // encoding: [0xf8,0xfb,0x20,0x04]
0xed,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x13, w13                // encoding: [0xed,0xfb,0xa0,0x04]
0xfe,0xf3,0x60,0x04
# CHECK: 	sqinch	x30, w30                // encoding: [0xfe,0xf3,0x60,0x04]
0xed,0xf3,0xe0,0x04
# CHECK: 	sqincd	x13, w13                // encoding: [0xed,0xf3,0xe0,0x04]
0xff,0xf3,0x20,0x04
# CHECK: 	sqincb	xzr, wzr                // encoding: [0xff,0xf3,0x20,0x04]
0xe8,0xfb,0x60,0x04
# CHECK: 	sqdech	x8, w8                  // encoding: [0xe8,0xfb,0x60,0x04]
0xf5,0xfb,0x20,0x04
# CHECK: 	sqdecb	x21, w21                // encoding: [0xf5,0xfb,0x20,0x04]
0xee,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x14, w14                // encoding: [0xee,0xfb,0xa0,0x04]
0xeb,0xfb,0x20,0x04
# CHECK: 	sqdecb	x11, w11                // encoding: [0xeb,0xfb,0x20,0x04]
0xe4,0xf3,0xe0,0x04
# CHECK: 	sqincd	x4, w4                  // encoding: [0xe4,0xf3,0xe0,0x04]
0xf1,0xf3,0xa0,0x04
# CHECK: 	sqincw	x17, w17                // encoding: [0xf1,0xf3,0xa0,0x04]
0xeb,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x11, w11                // encoding: [0xeb,0xfb,0xe0,0x04]
0xf9,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x25, w25                // encoding: [0xf9,0xfb,0xa0,0x04]
0xf6,0xf3,0x60,0x04
# CHECK: 	sqinch	x22, w22                // encoding: [0xf6,0xf3,0x60,0x04]
0xf3,0xf3,0xe0,0x04
# CHECK: 	sqincd	x19, w19                // encoding: [0xf3,0xf3,0xe0,0x04]
0xf6,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x22, w22                // encoding: [0xf6,0xfb,0xe0,0x04]
0xe2,0xf3,0x60,0x04
# CHECK: 	sqinch	x2, w2                  // encoding: [0xe2,0xf3,0x60,0x04]
0xfc,0xf3,0xa0,0x04
# CHECK: 	sqincw	x28, w28                // encoding: [0xfc,0xf3,0xa0,0x04]
0xe9,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x9, w9                  // encoding: [0xe9,0xfb,0xe0,0x04]
0xf7,0xf3,0x60,0x04
# CHECK: 	sqinch	x23, w23                // encoding: [0xf7,0xf3,0x60,0x04]
0xe1,0xf3,0x60,0x04
# CHECK: 	sqinch	x1, w1                  // encoding: [0xe1,0xf3,0x60,0x04]
0xf6,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x22, w22                // encoding: [0xf6,0xfb,0xa0,0x04]
0xef,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x15, w15                // encoding: [0xef,0xfb,0xa0,0x04]
0xe4,0xfb,0x20,0x04
# CHECK: 	sqdecb	x4, w4                  // encoding: [0xe4,0xfb,0x20,0x04]
0xe2,0xf3,0xa0,0x04
# CHECK: 	sqincw	x2, w2                  // encoding: [0xe2,0xf3,0xa0,0x04]
0xff,0xf3,0x60,0x04
# CHECK: 	sqinch	xzr, wzr                // encoding: [0xff,0xf3,0x60,0x04]
0xf4,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x20, w20                // encoding: [0xf4,0xfb,0xa0,0x04]
0xea,0xf3,0x20,0x04
# CHECK: 	sqincb	x10, w10                // encoding: [0xea,0xf3,0x20,0x04]
0xfb,0xf3,0x60,0x04
# CHECK: 	sqinch	x27, w27                // encoding: [0xfb,0xf3,0x60,0x04]
0xe2,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x2, w2                  // encoding: [0xe2,0xfb,0xa0,0x04]
0xf4,0xf3,0x20,0x04
# CHECK: 	sqincb	x20, w20                // encoding: [0xf4,0xf3,0x20,0x04]
0xf1,0xf3,0x60,0x04
# CHECK: 	sqinch	x17, w17                // encoding: [0xf1,0xf3,0x60,0x04]
0xf9,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x25, w25                // encoding: [0xf9,0xfb,0xe0,0x04]
0xe8,0xfb,0x20,0x04
# CHECK: 	sqdecb	x8, w8                  // encoding: [0xe8,0xfb,0x20,0x04]
0xf5,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x21, w21                // encoding: [0xf5,0xfb,0xe0,0x04]
0xfa,0xfb,0x20,0x04
# CHECK: 	sqdecb	x26, w26                // encoding: [0xfa,0xfb,0x20,0x04]
0xeb,0xf3,0x60,0x04
# CHECK: 	sqinch	x11, w11                // encoding: [0xeb,0xf3,0x60,0x04]
0xfb,0xfb,0x60,0x04
# CHECK: 	sqdech	x27, w27                // encoding: [0xfb,0xfb,0x60,0x04]
0xe9,0xf3,0x20,0x04
# CHECK: 	sqincb	x9, w9                  // encoding: [0xe9,0xf3,0x20,0x04]
0xec,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x12, w12                // encoding: [0xec,0xfb,0xa0,0x04]
0xe7,0xf3,0xe0,0x04
# CHECK: 	sqincd	x7, w7                  // encoding: [0xe7,0xf3,0xe0,0x04]
0xef,0xfb,0x20,0x04
# CHECK: 	sqdecb	x15, w15                // encoding: [0xef,0xfb,0x20,0x04]
0xf9,0xf3,0xa0,0x04
# CHECK: 	sqincw	x25, w25                // encoding: [0xf9,0xf3,0xa0,0x04]
0xe7,0xf3,0xa0,0x04
# CHECK: 	sqincw	x7, w7                  // encoding: [0xe7,0xf3,0xa0,0x04]
0xe1,0xf3,0xa0,0x04
# CHECK: 	sqincw	x1, w1                  // encoding: [0xe1,0xf3,0xa0,0x04]
0xee,0xf3,0xe0,0x04
# CHECK: 	sqincd	x14, w14                // encoding: [0xee,0xf3,0xe0,0x04]
0xe3,0xf3,0xa0,0x04
# CHECK: 	sqincw	x3, w3                  // encoding: [0xe3,0xf3,0xa0,0x04]
0xfe,0xf3,0xa0,0x04
# CHECK: 	sqincw	x30, w30                // encoding: [0xfe,0xf3,0xa0,0x04]
0xed,0xf3,0x20,0x04
# CHECK: 	sqincb	x13, w13                // encoding: [0xed,0xf3,0x20,0x04]
0xe9,0xf3,0xa0,0x04
# CHECK: 	sqincw	x9, w9                  // encoding: [0xe9,0xf3,0xa0,0x04]
0xfc,0xf3,0x20,0x04
# CHECK: 	sqincb	x28, w28                // encoding: [0xfc,0xf3,0x20,0x04]
0xe7,0xf3,0x20,0x04
# CHECK: 	sqincb	x7, w7                  // encoding: [0xe7,0xf3,0x20,0x04]
0xfc,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x28, w28                // encoding: [0xfc,0xfb,0xe0,0x04]
0xf1,0xfb,0x60,0x04
# CHECK: 	sqdech	x17, w17                // encoding: [0xf1,0xfb,0x60,0x04]
0xec,0xfb,0x60,0x04
# CHECK: 	sqdech	x12, w12                // encoding: [0xec,0xfb,0x60,0x04]
0xfd,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x29, w29                // encoding: [0xfd,0xfb,0xe0,0x04]
0xe6,0xf3,0x60,0x04
# CHECK: 	sqinch	x6, w6                  // encoding: [0xe6,0xf3,0x60,0x04]
0xe2,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x2, w2                  // encoding: [0xe2,0xfb,0xe0,0x04]
0xf4,0xf3,0xa0,0x04
# CHECK: 	sqincw	x20, w20                // encoding: [0xf4,0xf3,0xa0,0x04]
0xe2,0xf3,0x20,0x04
# CHECK: 	sqincb	x2, w2                  // encoding: [0xe2,0xf3,0x20,0x04]
0xf2,0xf3,0xe0,0x04
# CHECK: 	sqincd	x18, w18                // encoding: [0xf2,0xf3,0xe0,0x04]
0xfd,0xfb,0x60,0x04
# CHECK: 	sqdech	x29, w29                // encoding: [0xfd,0xfb,0x60,0x04]
0xeb,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x11, w11                // encoding: [0xeb,0xfb,0xa0,0x04]
0xeb,0xf3,0xe0,0x04
# CHECK: 	sqincd	x11, w11                // encoding: [0xeb,0xf3,0xe0,0x04]
0xef,0xf3,0x20,0x04
# CHECK: 	sqincb	x15, w15                // encoding: [0xef,0xf3,0x20,0x04]
0xec,0xf3,0xe0,0x04
# CHECK: 	sqincd	x12, w12                // encoding: [0xec,0xf3,0xe0,0x04]
0xf2,0xfb,0x60,0x04
# CHECK: 	sqdech	x18, w18                // encoding: [0xf2,0xfb,0x60,0x04]
0xf3,0xf3,0xa0,0x04
# CHECK: 	sqincw	x19, w19                // encoding: [0xf3,0xf3,0xa0,0x04]
0xe0,0xf3,0x20,0x04
# CHECK: 	sqincb	x0, w0                  // encoding: [0xe0,0xf3,0x20,0x04]
0xe3,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x3, w3                  // encoding: [0xe3,0xfb,0xa0,0x04]
0xf8,0xf3,0xe0,0x04
# CHECK: 	sqincd	x24, w24                // encoding: [0xf8,0xf3,0xe0,0x04]
0xf8,0xf3,0xa0,0x04
# CHECK: 	sqincw	x24, w24                // encoding: [0xf8,0xf3,0xa0,0x04]
0xfd,0xf3,0xa0,0x04
# CHECK: 	sqincw	x29, w29                // encoding: [0xfd,0xf3,0xa0,0x04]
0xfe,0xfb,0x60,0x04
# CHECK: 	sqdech	x30, w30                // encoding: [0xfe,0xfb,0x60,0x04]
0xec,0xf3,0x60,0x04
# CHECK: 	sqinch	x12, w12                // encoding: [0xec,0xf3,0x60,0x04]
0xed,0xfb,0x60,0x04
# CHECK: 	sqdech	x13, w13                // encoding: [0xed,0xfb,0x60,0x04]
0xe8,0xf3,0xa0,0x04
# CHECK: 	sqincw	x8, w8                  // encoding: [0xe8,0xf3,0xa0,0x04]
0xea,0xf3,0x60,0x04
# CHECK: 	sqinch	x10, w10                // encoding: [0xea,0xf3,0x60,0x04]
0xec,0xfb,0x20,0x04
# CHECK: 	sqdecb	x12, w12                // encoding: [0xec,0xfb,0x20,0x04]
0xe1,0xf3,0xe0,0x04
# CHECK: 	sqincd	x1, w1                  // encoding: [0xe1,0xf3,0xe0,0x04]
0xe7,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x7, w7                  // encoding: [0xe7,0xfb,0xa0,0x04]
0xea,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x10, w10                // encoding: [0xea,0xfb,0xe0,0x04]
0xf0,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x16, w16                // encoding: [0xf0,0xfb,0xa0,0x04]
0xee,0xfb,0x60,0x04
# CHECK: 	sqdech	x14, w14                // encoding: [0xee,0xfb,0x60,0x04]
0xe5,0xf3,0xe0,0x04
# CHECK: 	sqincd	x5, w5                  // encoding: [0xe5,0xf3,0xe0,0x04]
0xef,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x15, w15                // encoding: [0xef,0xfb,0xe0,0x04]
0xe5,0xf3,0x20,0x04
# CHECK: 	sqincb	x5, w5                  // encoding: [0xe5,0xf3,0x20,0x04]
0xf0,0xf3,0xe0,0x04
# CHECK: 	sqincd	x16, w16                // encoding: [0xf0,0xf3,0xe0,0x04]
0xf6,0xfb,0x60,0x04
# CHECK: 	sqdech	x22, w22                // encoding: [0xf6,0xfb,0x60,0x04]
0xeb,0xf3,0xa0,0x04
# CHECK: 	sqincw	x11, w11                // encoding: [0xeb,0xf3,0xa0,0x04]
0xf9,0xf3,0xe0,0x04
# CHECK: 	sqincd	x25, w25                // encoding: [0xf9,0xf3,0xe0,0x04]
0xe3,0xfb,0x20,0x04
# CHECK: 	sqdecb	x3, w3                  // encoding: [0xe3,0xfb,0x20,0x04]
0xf1,0xfb,0x20,0x04
# CHECK: 	sqdecb	x17, w17                // encoding: [0xf1,0xfb,0x20,0x04]
0xee,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x14, w14                // encoding: [0xee,0xfb,0xe0,0x04]
0xf7,0xf3,0xa0,0x04
# CHECK: 	sqincw	x23, w23                // encoding: [0xf7,0xf3,0xa0,0x04]
0xe0,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x0, w0                  // encoding: [0xe0,0xfb,0xe0,0x04]
0xf9,0xfb,0x20,0x04
# CHECK: 	sqdecb	x25, w25                // encoding: [0xf9,0xfb,0x20,0x04]
0xe9,0xfb,0x20,0x04
# CHECK: 	sqdecb	x9, w9                  // encoding: [0xe9,0xfb,0x20,0x04]
0xe9,0xfb,0x60,0x04
# CHECK: 	sqdech	x9, w9                  // encoding: [0xe9,0xfb,0x60,0x04]
0xfb,0xfb,0x20,0x04
# CHECK: 	sqdecb	x27, w27                // encoding: [0xfb,0xfb,0x20,0x04]
0xe4,0xf3,0x60,0x04
# CHECK: 	sqinch	x4, w4                  // encoding: [0xe4,0xf3,0x60,0x04]
0xf5,0xf3,0x60,0x04
# CHECK: 	sqinch	x21, w21                // encoding: [0xf5,0xf3,0x60,0x04]
0xea,0xfb,0x20,0x04
# CHECK: 	sqdecb	x10, w10                // encoding: [0xea,0xfb,0x20,0x04]
0xe8,0xf3,0xe0,0x04
# CHECK: 	sqincd	x8, w8                  // encoding: [0xe8,0xf3,0xe0,0x04]
0xed,0xf3,0x60,0x04
# CHECK: 	sqinch	x13, w13                // encoding: [0xed,0xf3,0x60,0x04]
0xfe,0xfb,0x20,0x04
# CHECK: 	sqdecb	x30, w30                // encoding: [0xfe,0xfb,0x20,0x04]
0xf0,0xf3,0xa0,0x04
# CHECK: 	sqincw	x16, w16                // encoding: [0xf0,0xf3,0xa0,0x04]
0xe6,0xfb,0x20,0x04
# CHECK: 	sqdecb	x6, w6                  // encoding: [0xe6,0xfb,0x20,0x04]
0xf3,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x19, w19                // encoding: [0xf3,0xfb,0xa0,0x04]
0xec,0xf3,0x20,0x04
# CHECK: 	sqincb	x12, w12                // encoding: [0xec,0xf3,0x20,0x04]
0xf7,0xfb,0x20,0x04
# CHECK: 	sqdecb	x23, w23                // encoding: [0xf7,0xfb,0x20,0x04]
0xe5,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x5, w5                  // encoding: [0xe5,0xfb,0xe0,0x04]
0xf3,0xf3,0x20,0x04
# CHECK: 	sqincb	x19, w19                // encoding: [0xf3,0xf3,0x20,0x04]
0xe0,0xfb,0x60,0x04
# CHECK: 	sqdech	x0, w0                  // encoding: [0xe0,0xfb,0x60,0x04]
0xf1,0xf3,0x20,0x04
# CHECK: 	sqincb	x17, w17                // encoding: [0xf1,0xf3,0x20,0x04]
0xe6,0xfb,0x60,0x04
# CHECK: 	sqdech	x6, w6                  // encoding: [0xe6,0xfb,0x60,0x04]
0xe3,0xfb,0x60,0x04
# CHECK: 	sqdech	x3, w3                  // encoding: [0xe3,0xfb,0x60,0x04]
0xf9,0xf3,0x60,0x04
# CHECK: 	sqinch	x25, w25                // encoding: [0xf9,0xf3,0x60,0x04]
0xfe,0xf3,0xe0,0x04
# CHECK: 	sqincd	x30, w30                // encoding: [0xfe,0xf3,0xe0,0x04]
0xf7,0xf3,0xe0,0x04
# CHECK: 	sqincd	x23, w23                // encoding: [0xf7,0xf3,0xe0,0x04]
0xf0,0xf3,0x60,0x04
# CHECK: 	sqinch	x16, w16                // encoding: [0xf0,0xf3,0x60,0x04]
0xfc,0xf3,0x60,0x04
# CHECK: 	sqinch	x28, w28                // encoding: [0xfc,0xf3,0x60,0x04]
0xf6,0xf3,0xa0,0x04
# CHECK: 	sqincw	x22, w22                // encoding: [0xf6,0xf3,0xa0,0x04]
0xfd,0xf3,0x60,0x04
# CHECK: 	sqinch	x29, w29                // encoding: [0xfd,0xf3,0x60,0x04]
0xff,0xf3,0xe0,0x04
# CHECK: 	sqincd	xzr, wzr                // encoding: [0xff,0xf3,0xe0,0x04]
0xfa,0xf3,0x60,0x04
# CHECK: 	sqinch	x26, w26                // encoding: [0xfa,0xf3,0x60,0x04]
0xfd,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x29, w29                // encoding: [0xfd,0xfb,0xa0,0x04]
0xea,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x10, w10                // encoding: [0xea,0xfb,0xa0,0x04]
0xf6,0xf3,0x20,0x04
# CHECK: 	sqincb	x22, w22                // encoding: [0xf6,0xf3,0x20,0x04]
0xf1,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x17, w17                // encoding: [0xf1,0xfb,0xe0,0x04]
0xe1,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x1, w1                  // encoding: [0xe1,0xfb,0xa0,0x04]
0xf8,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x24, w24                // encoding: [0xf8,0xfb,0xa0,0x04]
0xf7,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x23, w23                // encoding: [0xf7,0xfb,0xe0,0x04]
0xfa,0xf3,0xa0,0x04
# CHECK: 	sqincw	x26, w26                // encoding: [0xfa,0xf3,0xa0,0x04]
0xf0,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x16, w16                // encoding: [0xf0,0xfb,0xe0,0x04]
0xe5,0xfb,0x60,0x04
# CHECK: 	sqdech	x5, w5                  // encoding: [0xe5,0xfb,0x60,0x04]
0xe6,0xf3,0x20,0x04
# CHECK: 	sqincb	x6, w6                  // encoding: [0xe6,0xf3,0x20,0x04]
0xf2,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x18, w18                // encoding: [0xf2,0xfb,0xa0,0x04]
0xfb,0xf3,0xe0,0x04
# CHECK: 	sqincd	x27, w27                // encoding: [0xfb,0xf3,0xe0,0x04]
0xf8,0xf3,0x20,0x04
# CHECK: 	sqincb	x24, w24                // encoding: [0xf8,0xf3,0x20,0x04]
0xed,0xf3,0xa0,0x04
# CHECK: 	sqincw	x13, w13                // encoding: [0xed,0xf3,0xa0,0x04]
0xfe,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x30, w30                // encoding: [0xfe,0xfb,0xe0,0x04]
0xe7,0xfb,0x20,0x04
# CHECK: 	sqdecb	x7, w7                  // encoding: [0xe7,0xfb,0x20,0x04]
0xfa,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x26, w26                // encoding: [0xfa,0xfb,0xe0,0x04]
0xe6,0xf3,0xe0,0x04
# CHECK: 	sqincd	x6, w6                  // encoding: [0xe6,0xf3,0xe0,0x04]
0xee,0xf3,0x20,0x04
# CHECK: 	sqincb	x14, w14                // encoding: [0xee,0xf3,0x20,0x04]
0xe8,0xf3,0x20,0x04
# CHECK: 	sqincb	x8, w8                  // encoding: [0xe8,0xf3,0x20,0x04]
0xe1,0xfb,0x60,0x04
# CHECK: 	sqdech	x1, w1                  // encoding: [0xe1,0xfb,0x60,0x04]
0xf4,0xf3,0xe0,0x04
# CHECK: 	sqincd	x20, w20                // encoding: [0xf4,0xf3,0xe0,0x04]
0xe0,0xf3,0xe0,0x04
# CHECK: 	sqincd	x0, w0                  // encoding: [0xe0,0xf3,0xe0,0x04]
0xfe,0xf3,0x20,0x04
# CHECK: 	sqincb	x30, w30                // encoding: [0xfe,0xf3,0x20,0x04]
0xf8,0xf3,0x60,0x04
# CHECK: 	sqinch	x24, w24                // encoding: [0xf8,0xf3,0x60,0x04]
0xe7,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x7, w7                  // encoding: [0xe7,0xfb,0xe0,0x04]
0xf4,0xfb,0x60,0x04
# CHECK: 	sqdech	x20, w20                // encoding: [0xf4,0xfb,0x60,0x04]
0xe3,0xf3,0x60,0x04
# CHECK: 	sqinch	x3, w3                  // encoding: [0xe3,0xf3,0x60,0x04]
0xec,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x12, w12                // encoding: [0xec,0xfb,0xe0,0x04]
0xe1,0xf3,0x20,0x04
# CHECK: 	sqincb	x1, w1                  // encoding: [0xe1,0xf3,0x20,0x04]
0xf3,0xf3,0x60,0x04
# CHECK: 	sqinch	x19, w19                // encoding: [0xf3,0xf3,0x60,0x04]
0xea,0xf3,0xa0,0x04
# CHECK: 	sqincw	x10, w10                // encoding: [0xea,0xf3,0xa0,0x04]
0xfb,0xfb,0xe0,0x04
# CHECK: 	sqdecd	x27, w27                // encoding: [0xfb,0xfb,0xe0,0x04]
0xe0,0xfb,0xa0,0x04
# CHECK: 	sqdecw	x0, w0                  // encoding: [0xe0,0xfb,0xa0,0x04]
0xef,0xf3,0xa0,0x04
# CHECK: 	sqincw	x15, w15                // encoding: [0xef,0xf3,0xa0,0x04]
0xef,0xf3,0xe0,0x04
# CHECK: 	sqincd	x15, w15                // encoding: [0xef,0xf3,0xe0,0x04]
0xed,0xfb,0x20,0x04
# CHECK: 	sqdecb	x13, w13                // encoding: [0xed,0xfb,0x20,0x04]
0xe5,0xfb,0x20,0x04
# CHECK: 	sqdecb	x5, w5                  // encoding: [0xe5,0xfb,0x20,0x04]
0xe7,0xfb,0x60,0x04
# CHECK: 	sqdech	x7, w7                  // encoding: [0xe7,0xfb,0x60,0x04]
