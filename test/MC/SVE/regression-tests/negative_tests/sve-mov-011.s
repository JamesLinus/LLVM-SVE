// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecH16MovDupSM
// Restricted predicate has range [0, 7].
mov z8.h, p8/m, h10
// CHECK: {{(error\:\ invalid\ operand)|(error\:\ immediate\ must\ be\ an\ integer\ in\ range\ \[\-128\,\ 255\]\ with\ a\ shift\ amount\ of\ 0)|(error\:\ immediate\ must\ be\ an\ integer\ in\ range\ \[\-128\,\ 127\]\ or\ a\ multiple\ of\ 256\ in\ range\ \[\-32768\,\ 32512\])}}
