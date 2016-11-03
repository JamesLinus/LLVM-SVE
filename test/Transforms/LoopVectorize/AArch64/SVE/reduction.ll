; RUN: opt -mtriple aarch64-linux-generic -mattr=+sve -O3 \
; RUN:   -loop-vectorize -force-vector-interleave=1 -force-vector-width=4 \
; RUN:   -force-scalable-vectorization -force-vector-predication \
; RUN:   -verify-dom-info -verify-loop-info -S < %s | FileCheck %s

; This is a SVE version of Transforms/LoopVectorize/reduction.ll.

target datalayout = "e-m:e-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-gnueabi"

;CHECK-LABEL: @reduction_sum(
;CHECK: phi <n x 4 x i32> [ zeroinitializer, %min.iters.checked ],
;CHECK: <n x 4 x i32> @llvm.masked.load.nxv4i32(
;CHECK: add <n x 4 x i32>
;CHECK-LABEL: middle.block
;CHECK: call i64 @llvm.aarch64.sve.uaddv.nxv4i32
;CHECK: ret i32
define i32 @reduction_sum(i32 %n, i32* noalias nocapture %A, i32* noalias nocapture %B) nounwind uwtable readonly noinline ssp {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %sum.02 = phi i32 [ %9, %.lr.ph ], [ 0, %0 ]
  %2 = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds i32, i32* %B, i64 %indvars.iv
  %5 = load i32, i32* %4, align 4
  %6 = trunc i64 %indvars.iv to i32
  %7 = add i32 %sum.02, %6
  %8 = add i32 %7, %3
  %9 = add i32 %8, %5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %0
  %sum.0.lcssa = phi i32 [ 0, %0 ], [ %9, %.lr.ph ]
  ret i32 %sum.0.lcssa
}

;CHECK-LABEL: @reduction_prod(
;CHECK-NOT: phi <n x 4 x i32>
define i32 @reduction_prod(i32 %n, i32* noalias nocapture %A, i32* noalias nocapture %B) nounwind uwtable readonly noinline ssp {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %prod.02 = phi i32 [ %9, %.lr.ph ], [ 1, %0 ]
  %2 = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds i32, i32* %B, i64 %indvars.iv
  %5 = load i32, i32* %4, align 4
  %6 = trunc i64 %indvars.iv to i32
  %7 = mul i32 %prod.02, %6
  %8 = mul i32 %7, %3
  %9 = mul i32 %8, %5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %0
  %prod.0.lcssa = phi i32 [ 1, %0 ], [ %9, %.lr.ph ]
  ret i32 %prod.0.lcssa
}

;CHECK-LABEL: @reduction_mix(
;CHECK: phi <n x 4 x i32> [ zeroinitializer, %min.iters.checked ],
;CHECK: <n x 4 x i32> @llvm.masked.load.nxv4i32(
;CHECK: mul nsw <n x 4 x i32>
;CHECK-LABEL: middle.block
;CHECK: call i64 @llvm.aarch64.sve.uaddv.nxv4i32
;CHECK: ret i32
define i32 @reduction_mix(i32 %n, i32* noalias nocapture %A, i32* noalias nocapture %B) nounwind uwtable readonly noinline ssp {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %sum.02 = phi i32 [ %9, %.lr.ph ], [ 0, %0 ]
  %2 = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds i32, i32* %B, i64 %indvars.iv
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 %5, %3
  %7 = trunc i64 %indvars.iv to i32
  %8 = add i32 %sum.02, %7
  %9 = add i32 %8, %6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %0
  %sum.0.lcssa = phi i32 [ 0, %0 ], [ %9, %.lr.ph ]
  ret i32 %sum.0.lcssa
}


;CHECK-LABEL: @start_at_non_zero(
;CHECK: phi <n x 4 x i32> [ insertelement (<n x 4 x i32> zeroinitializer, i32 120, i32 0), %min.iters.checked ],
;CHECK: <n x 4 x i32> @llvm.masked.load.nxv4i32(
;CHECK: add nsw <n x 4 x i32>
;CHECK-LABEL: middle.block
;CHECK: call i64 @llvm.aarch64.sve.uaddv.nxv4i32
;CHECK: ret i32
define i32 @start_at_non_zero(i32* nocapture %in, i32* nocapture %coeff, i32* nocapture %out, i32 %n) nounwind uwtable readonly ssp {
entry:
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sum.09 = phi i32 [ %add, %for.body ], [ 120, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %in, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %coeff, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4
  %mul = mul nsw i32 %1, %0
  %add = add nsw i32 %mul, %sum.09
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %sum.0.lcssa = phi i32 [ 120, %entry ], [ %add, %for.body ]
  ret i32 %sum.0.lcssa
}

;CHECK-LABEL: @reduction_and(
;TODO: this could be better, no point in the extra insert
;CHECK: phi <n x 4 x i32> [ insertelement (<n x 4 x i32> shufflevector (<n x 4 x i32> insertelement (<n x 4 x i32> undef, i32 -1, i32 0), <n x 4 x i32> undef, <n x 4 x i32> zeroinitializer), i32 -1, i32 0), %min.iters.checked ],
;CHECK: <n x 4 x i32> @llvm.masked.load.nxv4i32(
;CHECK: and <n x 4 x i32>
;CHECK-LABEL: middle.block
;CHECK: call i32 @llvm.aarch64.sve.andv.nxv4i32
;CHECK: ret i32
define i32 @reduction_and(i32 %n, i32* nocapture %A, i32* nocapture %B) nounwind uwtable readonly {
entry:
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %result.08 = phi i32 [ %and, %for.body ], [ -1, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %B, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %1, %0
  %and = and i32 %add, %result.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %result.0.lcssa = phi i32 [ -1, %entry ], [ %and, %for.body ]
  ret i32 %result.0.lcssa
}

;CHECK-LABEL: @reduction_logical_and(
;TODO: this could be better, no point in the extra insert
;CHECK: phi <n x 4 x i1> [ insertelement (<n x 4 x i1> shufflevector (<n x 4 x i1> insertelement (<n x 4 x i1> undef, i1 true, i32 0), <n x 4 x i1> undef, <n x 4 x i32> zeroinitializer), i1 true, i32 0), %min.iters.checked ],
;CHECK: <n x 4 x i32> @llvm.masked.load.nxv4i32(
;CHECK: icmp eq <n x 4 x i32>
;CHECK: and <n x 4 x i1>
;CHECK-LABEL: middle.block
;CHECK: zext <n x 4 x i1> %.lcssa to <n x 4 x i8>
;CHECK: call i8 @llvm.aarch64.sve.andv.nxv4i8
;CHECK: ret i1
define i1 @reduction_logical_and(i32 %n, i32* nocapture %A, i32* nocapture %B) nounwind uwtable readonly {
entry:
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %result.08 = phi i1 [ %and, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %B, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp eq i32 %1, %0
  %and = and i1 %cmp, %result.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %result.0.lcssa = phi i1 [ 1, %entry ], [ %and, %for.body ]
  ret i1 %result.0.lcssa
}

;CHECK-LABEL: @reduction_or(
;CHECK: phi <n x 4 x i32> [ zeroinitializer, %min.iters.checked ],
;CHECK: <n x 4 x i32> @llvm.masked.load.nxv4i32(
;CHECK: or <n x 4 x i32>
;CHECK-LABEL: middle.block
;CHECK: call i32 @llvm.aarch64.sve.orv.nxv4i32
;CHECK: ret i32
define i32 @reduction_or(i32 %n, i32* nocapture %A, i32* nocapture %B) nounwind uwtable readonly {
entry:
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %result.08 = phi i32 [ %or, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %B, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %1, %0
  %or = or i32 %add, %result.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %result.0.lcssa = phi i32 [ 0, %entry ], [ %or, %for.body ]
  ret i32 %result.0.lcssa
}

;CHECK-LABEL: @reduction_xor(
;CHECK: phi <n x 4 x i32> [ zeroinitializer, %min.iters.checked ],
;CHECK: <n x 4 x i32> @llvm.masked.load.nxv4i32(
;CHECK: xor <n x 4 x i32>
;CHECK-LABEL: middle.block
;CHECK: call i32 @llvm.aarch64.sve.eorv.nxv4i32
;CHECK: ret i32
define i32 @reduction_xor(i32 %n, i32* nocapture %A, i32* nocapture %B) nounwind uwtable readonly {
entry:
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %result.08 = phi i32 [ %xor, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %B, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %1, %0
  %xor = xor i32 %add, %result.08
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %result.0.lcssa = phi i32 [ 0, %entry ], [ %xor, %for.body ]
  ret i32 %result.0.lcssa
}

; In this code the subtracted variable is on the RHS and this is not an induction variable.
;CHECK-LABEL: @reduction_sub_rhs(
;CHECK-NOT: phi <n x 4 x i32>
;CHECK-NOT: sub nsw <n x 4 x i32>
;CHECK: ret i32
define i32 @reduction_sub_rhs(i32 %n, i32* noalias nocapture %A) nounwind uwtable readonly {
entry:
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %x.05 = phi i32 [ %sub, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %0, %x.05
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %x.0.lcssa = phi i32 [ 0, %entry ], [ %sub, %for.body ]
  ret i32 %x.0.lcssa
}


; In this test the reduction variable is on the LHS and we can vectorize it.
;CHECK-LABEL: @reduction_sub_lhs(
;CHECK: phi <n x 4 x i32>
;CHECK: sub nsw <n x 4 x i32>

define i32 @reduction_sub_lhs(i32 %n, i32* noalias nocapture %A) nounwind uwtable readonly {
entry:
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %x.05 = phi i32 [ %sub, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %x.05, %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %x.0.lcssa = phi i32 [ 0, %entry ], [ %sub, %for.body ]
  ret i32 %x.0.lcssa
}

; We can vectorize conditional reductions with multi-input phis.
;CHECK-LABEL: @reduction_conditional
;CHECK: phi <n x 4 x float>
;CHECK: <n x 4 x float> @llvm.masked.load.nxv4f32(
;CHECK: fadd <n x 4 x float>
;CHECK-LABEL: middle.block
;CHECK: call float @llvm.aarch64.sve.addv.nxv4f32
;CHECK: ret float
define float @reduction_conditional(float* %A, float* %B, float* %C, float %S) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %sum.033 = phi float [ %S, %entry ], [ %sum.1, %for.inc ]
  %arrayidx = getelementptr inbounds float, float* %A, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds float, float* %B, i64 %indvars.iv
  %1 = load float, float* %arrayidx2, align 4
  %cmp3 = fcmp ogt float %0, %1
  br i1 %cmp3, label %if.then, label %for.inc

if.then:
  %cmp6 = fcmp ogt float %1, 1.000000e+00
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:
  %add = fadd fast float %sum.033, %0
  br label %for.inc

if.else:
  %cmp14 = fcmp ogt float %0, 2.000000e+00
  br i1 %cmp14, label %if.then16, label %for.inc

if.then16:
  %add19 = fadd fast float %sum.033, %1
  br label %for.inc

for.inc:
  %sum.1 = phi float [ %add, %if.then8 ], [ %add19, %if.then16 ], [ %sum.033, %if.else ], [ %sum.033, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp ne i32 %lftr.wideiv, 128
  br i1 %exitcond, label %for.body, label %for.end

for.end:
  %sum.1.lcssa = phi float [ %sum.1, %for.inc ]
  ret float %sum.1.lcssa
}

; We can't vectorize reductions with phi inputs from outside the reduction.
;CHECK-LABEL: @noreduction_phi
;CHECK-NOT: fadd <n x 4 x float>
;CHECK: ret
define float @noreduction_phi(float* %A, float* %B, float* %C, float %S) {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %sum.033 = phi float [ %S, %entry ], [ %sum.1, %for.inc ]
  %arrayidx = getelementptr inbounds float, float* %A, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds float, float* %B, i64 %indvars.iv
  %1 = load float, float* %arrayidx2, align 4
  %cmp3 = fcmp ogt float %0, %1
  br i1 %cmp3, label %if.then, label %for.inc

if.then:
  %cmp6 = fcmp ogt float %1, 1.000000e+00
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:
  %add = fadd fast float %sum.033, %0
  br label %for.inc

if.else:
  %cmp14 = fcmp ogt float %0, 2.000000e+00
  br i1 %cmp14, label %if.then16, label %for.inc

if.then16:
  %add19 = fadd fast float %sum.033, %1
  br label %for.inc

for.inc:
  %sum.1 = phi float [ %add, %if.then8 ], [ %add19, %if.then16 ], [ 0.000000e+00, %if.else ], [ %sum.033, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp ne i32 %lftr.wideiv, 128
  br i1 %exitcond, label %for.body, label %for.end

for.end:
  %sum.1.lcssa = phi float [ %sum.1, %for.inc ]
  ret float %sum.1.lcssa
}

; We can't vectorize reductions that feed another header PHI.
;CHECK-LABEL: @noredux_header_phi
;CHECK-NOT: fadd <n x 4 x float>
;CHECK: ret
define float @noredux_header_phi(float* %A, float* %B, float* %C, float %S)  {
entry:
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %sum2.09 = phi float [ 0.000000e+00, %entry ], [ %add1, %for.body ]
  %sum.08 = phi float [ %S, %entry ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds float, float* %B, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %add = fadd fast float %sum.08, %0
  %add1 = fadd fast float %sum2.09, %add
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp ne i32 %lftr.wideiv, 128
  br i1 %exitcond, label %for.body, label %for.end

for.end:
  %add1.lcssa = phi float [ %add1, %for.body ]
  %add.lcssa = phi float [ %add, %for.body ]
  %add2 = fadd fast float %add.lcssa, %add1.lcssa
  ret float %add2
}


; When vectorizing a reduction whose loop header phi value is used outside the
; loop special care must be taken. Otherwise, the reduced value feeding into the
; outside user misses a few iterations (VF-1) of the loop.
; PR16522

;CHECK-LABEL: @phivalueredux(
;CHECK-NOT: x i32>
;CHECK: ret
define i32 @phivalueredux(i32 %p) {
entry:
  br label %for.body

for.body:
  %t.03 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %p.addr.02 = phi i32 [ %p, %entry ], [ %xor, %for.body ]
  %xor = xor i32 %p.addr.02, -1
  %inc = add nsw i32 %t.03, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 %p.addr.02
}

; Don't vectorize a reduction value that is not the last in a reduction cyle. We
; would loose iterations (VF-1) on the operations after that use.
; PR17498

;CHECK-LABEL: @not_last_operation
;CHECK-NOT: x i32>
;CHECK: ret
define i32 @not_last_operation(i32 %p, i32 %val) {
entry:
  %tobool = icmp eq i32 %p, 0
  br label %for.body

for.body:
  %inc613.1 = phi i32 [ 0, %entry ], [ %inc6.1, %for.body ]
  %inc511.1 = phi i32 [ %val, %entry ], [ %inc5.1, %for.body ]
  %0 = zext i1 %tobool to i32
  %inc4.1 = xor i32 %0, 1
  %inc511.1.inc4.1 = add nsw i32 %inc511.1, %inc4.1
  %inc5.1 = add nsw i32 %inc511.1.inc4.1, 1
  %inc6.1 = add nsw i32 %inc613.1, 1
  %exitcond.1 = icmp eq i32 %inc6.1, 22
  br i1 %exitcond.1, label %exit, label %for.body

exit:
  %inc.2 = add nsw i32 %inc511.1.inc4.1, 2
  ret i32 %inc.2
}
