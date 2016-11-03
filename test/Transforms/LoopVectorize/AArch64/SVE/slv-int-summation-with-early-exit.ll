; RUN: opt -mtriple=aarch64-none-linux-gnu -mattr=+sve -O3 -search-loop-vectorize -enable-laa-uncounted-loops -sl-enable-lv-uncounted-loops -adce %s -S -o - | FileCheck %s

; ModuleID = 'PRandEarlyBreakSummationSeparateFunc.c'
target datalayout = "e-m:e-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-none-linux-gnu"

; Function Attrs: norecurse nounwind readonly
define i32 @DoSum(i32* nocapture readonly %Array) #0 {
entry:
  br label %for.body

; CHECK-LABEL: vector.body.unpred:
for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %Sum.011 = phi i32 [ 0, %entry ], [ %add, %if.end ]
  %arrayidx = getelementptr inbounds i32, i32* %Array, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !1
  %cmp1 = icmp ult i32 %0, 100
  br i1 %cmp1, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  %add = add i32 %0, %Sum.011
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp = icmp ult i64 %indvars.iv.next, 40
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %Sum.0.lcssa = phi i32 [ %Sum.011, %for.body ], [ %add, %if.end ]
  ret i32 %Sum.0.lcssa
}

attributes #0 = { norecurse nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+sve" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
