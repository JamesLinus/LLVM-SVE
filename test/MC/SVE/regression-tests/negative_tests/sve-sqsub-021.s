// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS8QSubVIX
// Immediate not compatible with encode/decode function.
sqsub z20.b, z20.b, #300
// CHECK: error: immediate must be an integer in range [0, 255] or a multiple of 256 in range [256, 65280]
