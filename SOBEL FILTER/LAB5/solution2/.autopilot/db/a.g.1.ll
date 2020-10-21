; ModuleID = '/home/inf2015/dchristodoulou/CE435/LAB5/solution2/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sobel_sw_new.str = internal unnamed_addr constant [13 x i8] c"sobel_sw_new\00" ; [#uses=1 type=[13 x i8]*]
@memcpy_OC__OC_input.str = internal unnamed_addr constant [14 x i8] c"memcpy..input\00" ; [#uses=2 type=[14 x i8]*]
@burstread_OC_region.str = internal unnamed_addr constant [17 x i8] c"burstread.region\00" ; [#uses=4 type=[17 x i8]*]
@.str9 = private unnamed_addr constant [17 x i8] c"sobel_1_internal\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str8 = private unnamed_addr constant [5 x i8] c"move\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str7 = private unnamed_addr constant [17 x i8] c"sobel_1_external\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str6 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"INPUT\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=0]
define void @sobel_sw_new(i8* %input, i8* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_sw_new.str) nounwind
  %small_input = alloca [3072 x i8], align 16     ; [#uses=5 type=[3072 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !41), !dbg !42 ; [debug line = 55:33] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i8* %output}, i64 0, metadata !43), !dbg !44 ; [debug line = 55:63] [debug variable = output]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %output, i32 264192) nounwind, !dbg !45 ; [debug line = 56:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %input, i32 264192) nounwind, !dbg !47 ; [debug line = 56:42]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !48 ; [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %input, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 133120, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !49 ; [debug line = 58:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %output, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 133120, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !50 ; [debug line = 59:1]
  call void @llvm.dbg.declare(metadata !{[3072 x i8]* %small_input}, metadata !51), !dbg !55 ; [debug line = 65:16] [debug variable = small_input]
  %small_input.addr = getelementptr inbounds [3072 x i8]* %small_input, i64 0, i64 0, !dbg !56 ; [#uses=2 type=i8*] [debug line = 72:2]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %0
  %indvar = phi i32 [ 0, %0 ], [ %indvar.next, %burst.rd.body ] ; [#uses=3 type=i32]
  %exitcond6 = icmp eq i32 %indvar, 3072          ; [#uses=1 type=i1]
  br i1 %exitcond6, label %burst.rd.end.preheader, label %burst.rd.body

burst.rd.end.preheader:                           ; preds = %burst.rd.header
  br label %burst.rd.end, !dbg !57                ; [debug line = 74:24]

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread.rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region.str) nounwind ; [#uses=1 type=i32]
  %1 = call i32 (...)* @_ssdm_op_SpecBurst(i8* %input, i32 1, i32 3072, i32 1) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str10)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memcpy_OC__OC_input.str)
  %indvar.next = add i32 %indvar, 1               ; [#uses=1 type=i32]
  %tmp = sext i32 %indvar to i64, !dbg !56        ; [#uses=2 type=i64] [debug line = 72:2]
  %input.addr = getelementptr i8* %input, i64 %tmp, !dbg !56 ; [#uses=1 type=i8*] [debug line = 72:2]
  %input.load = load i8* %input.addr, align 1, !dbg !56 ; [#uses=1 type=i8] [debug line = 72:2]
  %small_input.addr.1 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp, !dbg !56 ; [#uses=1 type=i8*] [debug line = 72:2]
  store i8 %input.load, i8* %small_input.addr.1, align 1, !dbg !56 ; [debug line = 72:2]
  %burstread.rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region.str, i32 %burstread.rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %11, %burst.rd.end.preheader
  %i = phi i32 [ %i.1, %11 ], [ 1, %burst.rd.end.preheader ] ; [#uses=4 type=i32]
  %position = phi i32 [ %position.1, %11 ], [ 3, %burst.rd.end.preheader ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i, 257, !dbg !57      ; [#uses=1 type=i1] [debug line = 74:24]
  br i1 %exitcond2, label %12, label %2, !dbg !57 ; [debug line = 74:24]

; <label>:2                                       ; preds = %burst.rd.end
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !59 ; [debug line = 74:44]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !59 ; [#uses=1 type=i32] [debug line = 74:44]
  %tmp.1 = icmp eq i32 %i, 1, !dbg !61            ; [#uses=1 type=i1] [debug line = 75:3]
  br i1 %tmp.1, label %._crit_edge, label %.preheader.preheader, !dbg !61 ; [debug line = 75:3]

.preheader.preheader:                             ; preds = %2
  br label %.preheader, !dbg !62                  ; [debug line = 76:13]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %k = phi i32 [ %k.1, %3 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %k, 2048, !dbg !62     ; [#uses=1 type=i1] [debug line = 76:13]
  br i1 %exitcond1, label %4, label %3, !dbg !62  ; [debug line = 76:13]

; <label>:3                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !65 ; [debug line = 76:35]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !65 ; [#uses=1 type=i32] [debug line = 76:35]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !67 ; [debug line = 77:1]
  %tmp.4 = add nsw i32 %k, 1024, !dbg !68         ; [#uses=1 type=i32] [debug line = 77:5]
  %tmp.5 = sext i32 %tmp.4 to i64, !dbg !68       ; [#uses=1 type=i64] [debug line = 77:5]
  %small_input.addr.2 = getelementptr inbounds [3072 x i8]* %small_input, i64 0, i64 %tmp.5, !dbg !68 ; [#uses=1 type=i8*] [debug line = 77:5]
  %small_input.load = load i8* %small_input.addr.2, align 1, !dbg !68 ; [#uses=2 type=i8] [debug line = 77:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %small_input.load) nounwind
  %tmp.6 = sext i32 %k to i64, !dbg !68           ; [#uses=1 type=i64] [debug line = 77:5]
  %small_input.addr.3 = getelementptr inbounds [3072 x i8]* %small_input, i64 0, i64 %tmp.6, !dbg !68 ; [#uses=1 type=i8*] [debug line = 77:5]
  store i8 %small_input.load, i8* %small_input.addr.3, align 1, !dbg !68 ; [debug line = 77:5]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !69 ; [#uses=0 type=i32] [debug line = 78:4]
  %k.1 = add nsw i32 %k, 1, !dbg !70              ; [#uses=1 type=i32] [debug line = 76:30]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !71), !dbg !70 ; [debug line = 76:30] [debug variable = k]
  br label %.preheader, !dbg !70                  ; [debug line = 76:30]

; <label>:4                                       ; preds = %.preheader
  %tmp.2 = shl nsw i32 %position, 10, !dbg !72    ; [#uses=2 type=i32] [debug line = 79:4]
  %tmp.3 = sext i32 %tmp.2 to i64, !dbg !72       ; [#uses=1 type=i64] [debug line = 79:4]
  %input.addr.1 = getelementptr inbounds i8* %input, i64 %tmp.3, !dbg !72 ; [#uses=1 type=i8*] [debug line = 79:4]
  br label %burst.rd.header12

burst.rd.header12:                                ; preds = %burst.rd.body13, %4
  %indvar1 = phi i32 [ 0, %4 ], [ %indvar.next1, %burst.rd.body13 ] ; [#uses=4 type=i32]
  %exitcond3 = icmp eq i32 %indvar1, 1024         ; [#uses=1 type=i1]
  br i1 %exitcond3, label %burst.rd.end11, label %burst.rd.body13

burst.rd.body13:                                  ; preds = %burst.rd.header12
  %burstread.rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region.str) nounwind ; [#uses=1 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecBurst(i8* %input.addr.1, i32 1, i32 1024, i32 1) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str11)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memcpy_OC__OC_input.str)
  %indvar.next1 = add i32 %indvar1, 1             ; [#uses=1 type=i32]
  %input.addr2 = add i32 %indvar1, %tmp.2         ; [#uses=1 type=i32]
  %tmp.9 = sext i32 %input.addr2 to i64, !dbg !72 ; [#uses=1 type=i64] [debug line = 79:4]
  %input.addr.3 = getelementptr i8* %input, i64 %tmp.9, !dbg !72 ; [#uses=1 type=i8*] [debug line = 79:4]
  %input.load.1 = load i8* %input.addr.3, align 1, !dbg !72 ; [#uses=1 type=i8] [debug line = 79:4]
  %tmp.10 = add i32 %indvar1, 2048                ; [#uses=1 type=i32]
  %tmp.11 = sext i32 %tmp.10 to i64, !dbg !72     ; [#uses=1 type=i64] [debug line = 79:4]
  %small_input.addr.4 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp.11, !dbg !72 ; [#uses=1 type=i8*] [debug line = 79:4]
  store i8 %input.load.1, i8* %small_input.addr.4, align 1, !dbg !72 ; [debug line = 79:4]
  %burstread.rend25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region.str, i32 %burstread.rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header12

burst.rd.end11:                                   ; preds = %burst.rd.header12
  %position.2 = add nsw i32 %position, 1, !dbg !73 ; [#uses=1 type=i32] [debug line = 80:4]
  call void @llvm.dbg.value(metadata !{i32 %position.2}, i64 0, metadata !74), !dbg !73 ; [debug line = 80:4] [debug variable = position]
  br label %._crit_edge, !dbg !75                 ; [debug line = 81:3]

._crit_edge:                                      ; preds = %burst.rd.end11, %2
  %position.1 = phi i32 [ %position.2, %burst.rd.end11 ], [ %position, %2 ] ; [#uses=1 type=i32]
  %tmp.12 = shl i32 %i, 10, !dbg !76              ; [#uses=2 type=i32] [debug line = 87:5]
  br label %6, !dbg !80                           ; [debug line = 82:25]

; <label>:6                                       ; preds = %10, %._crit_edge
  %j = phi i32 [ 1, %._crit_edge ], [ %j.1, %10 ] ; [#uses=6 type=i32]
  %exitcond = icmp eq i32 %j, 1023, !dbg !80      ; [#uses=1 type=i1] [debug line = 82:25]
  br i1 %exitcond, label %11, label %7, !dbg !80  ; [debug line = 82:25]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !81 ; [debug line = 82:48]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !81 ; [#uses=1 type=i32] [debug line = 82:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !82 ; [debug line = 83:1]
  %tmp.14 = call fastcc i32 @convolution2D_horizontal(i32 %j, i8* %small_input.addr), !dbg !83 ; [#uses=3 type=i32] [debug line = 85:13]
  %neg = sub i32 0, %tmp.14                       ; [#uses=1 type=i32]
  %abscond = icmp sgt i32 %tmp.14, 0              ; [#uses=1 type=i1]
  %abs = select i1 %abscond, i32 %tmp.14, i32 %neg ; [#uses=1 type=i32]
  %tmp.15 = call fastcc i32 @convolution2D_vertical(i32 %j, i8* %small_input.addr), !dbg !84 ; [#uses=3 type=i32] [debug line = 85:63]
  %neg3 = sub i32 0, %tmp.15                      ; [#uses=1 type=i32]
  %abscond4 = icmp sgt i32 %tmp.15, 0             ; [#uses=1 type=i1]
  %abs5 = select i1 %abscond4, i32 %tmp.15, i32 %neg3 ; [#uses=1 type=i32]
  %p = add nsw i32 %abs5, %abs, !dbg !84          ; [#uses=2 type=i32] [debug line = 85:63]
  call void @llvm.dbg.value(metadata !{i32 %p}, i64 0, metadata !85), !dbg !84 ; [debug line = 85:63] [debug variable = p]
  %tmp.16 = icmp ugt i32 %p, 255, !dbg !87        ; [#uses=1 type=i1] [debug line = 86:4]
  br i1 %tmp.16, label %8, label %9, !dbg !87     ; [debug line = 86:4]

; <label>:8                                       ; preds = %7
  %tmp.17 = add nsw i32 %j, %tmp.12, !dbg !76     ; [#uses=1 type=i32] [debug line = 87:5]
  %tmp.18 = sext i32 %tmp.17 to i64, !dbg !76     ; [#uses=1 type=i64] [debug line = 87:5]
  %output.addr = getelementptr inbounds i8* %output, i64 %tmp.18, !dbg !76 ; [#uses=1 type=i8*] [debug line = 87:5]
  store i8 -1, i8* %output.addr, align 1, !dbg !76 ; [debug line = 87:5]
  br label %10, !dbg !88                          ; [debug line = 88:4]

; <label>:9                                       ; preds = %7
  %tmp.19 = trunc i32 %p to i8, !dbg !89          ; [#uses=1 type=i8] [debug line = 90:5]
  %tmp.20 = add nsw i32 %j, %tmp.12, !dbg !89     ; [#uses=1 type=i32] [debug line = 90:5]
  %tmp.21 = sext i32 %tmp.20 to i64, !dbg !89     ; [#uses=1 type=i64] [debug line = 90:5]
  %output.addr.1 = getelementptr inbounds i8* %output, i64 %tmp.21, !dbg !89 ; [#uses=1 type=i8*] [debug line = 90:5]
  store i8 %tmp.19, i8* %output.addr.1, align 1, !dbg !89 ; [debug line = 90:5]
  br label %10

; <label>:10                                      ; preds = %9, %8
  %rend29 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !91 ; [#uses=0 type=i32] [debug line = 92:3]
  %j.1 = add nsw i32 %j, 1, !dbg !92              ; [#uses=1 type=i32] [debug line = 82:41]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !93), !dbg !92 ; [debug line = 82:41] [debug variable = j]
  br label %6, !dbg !92                           ; [debug line = 82:41]

; <label>:11                                      ; preds = %6
  %rend27 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !94 ; [#uses=0 type=i32] [debug line = 93:2]
  %i.1 = add nsw i32 %i, 1, !dbg !95              ; [#uses=1 type=i32] [debug line = 74:36]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !96), !dbg !95 ; [debug line = 74:36] [debug variable = i]
  br label %burst.rd.end, !dbg !95                ; [debug line = 74:36]

; <label>:12                                      ; preds = %burst.rd.end
  ret void, !dbg !97                              ; [debug line = 94:1]
}

; [#uses=23]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc i32 @convolution2D_vertical(i32 %posx, i8* %input) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %posx}, i64 0, metadata !98), !dbg !99 ; [debug line = 16:32] [debug variable = posx]
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !100), !dbg !101 ; [debug line = 16:52] [debug variable = input]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %input, i32 3072) nounwind, !dbg !102 ; [debug line = 16:68]
  %tmp = add nsw i32 %posx, -1, !dbg !104         ; [#uses=1 type=i32] [debug line = 21:2]
  %tmp.23 = sext i32 %tmp to i64, !dbg !104       ; [#uses=1 type=i64] [debug line = 21:2]
  %input.addr = getelementptr inbounds i8* %input, i64 %tmp.23, !dbg !104 ; [#uses=1 type=i8*] [debug line = 21:2]
  %input.load = load i8* %input.addr, align 1, !dbg !104 ; [#uses=2 type=i8] [debug line = 21:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load) nounwind
  %res = zext i8 %input.load to i32, !dbg !104    ; [#uses=1 type=i32] [debug line = 21:2]
  call void @llvm.dbg.value(metadata !{i32 %res}, i64 0, metadata !105), !dbg !104 ; [debug line = 21:2] [debug variable = res]
  %tmp.25 = sext i32 %posx to i64, !dbg !106      ; [#uses=1 type=i64] [debug line = 22:2]
  %input.addr.4 = getelementptr inbounds i8* %input, i64 %tmp.25, !dbg !106 ; [#uses=1 type=i8*] [debug line = 22:2]
  %input.load.2 = load i8* %input.addr.4, align 1, !dbg !106 ; [#uses=2 type=i8] [debug line = 22:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.2) nounwind
  %tmp.26 = zext i8 %input.load.2 to i32, !dbg !106 ; [#uses=1 type=i32] [debug line = 22:2]
  %tmp.27 = mul i32 %tmp.26, 2, !dbg !106         ; [#uses=1 type=i32] [debug line = 22:2]
  call void @llvm.dbg.value(metadata !{i32 %res.1}, i64 0, metadata !105), !dbg !106 ; [debug line = 22:2] [debug variable = res]
  %tmp.28 = add nsw i32 %posx, 1, !dbg !107       ; [#uses=1 type=i32] [debug line = 23:2]
  %tmp.29 = sext i32 %tmp.28 to i64, !dbg !107    ; [#uses=1 type=i64] [debug line = 23:2]
  %input.addr.5 = getelementptr inbounds i8* %input, i64 %tmp.29, !dbg !107 ; [#uses=1 type=i8*] [debug line = 23:2]
  %input.load.3 = load i8* %input.addr.5, align 1, !dbg !107 ; [#uses=2 type=i8] [debug line = 23:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.3) nounwind
  %tmp.30 = zext i8 %input.load.3 to i32, !dbg !107 ; [#uses=1 type=i32] [debug line = 23:2]
  call void @llvm.dbg.value(metadata !{i32 %res.2}, i64 0, metadata !105), !dbg !107 ; [debug line = 23:2] [debug variable = res]
  %tmp.31 = add nsw i32 %posx, 2047, !dbg !108    ; [#uses=1 type=i32] [debug line = 24:2]
  %tmp.32 = sext i32 %tmp.31 to i64, !dbg !108    ; [#uses=1 type=i64] [debug line = 24:2]
  %input.addr.6 = getelementptr inbounds i8* %input, i64 %tmp.32, !dbg !108 ; [#uses=1 type=i8*] [debug line = 24:2]
  %input.load.4 = load i8* %input.addr.6, align 1, !dbg !108 ; [#uses=2 type=i8] [debug line = 24:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.4) nounwind
  %tmp.33 = zext i8 %input.load.4 to i32, !dbg !108 ; [#uses=1 type=i32] [debug line = 24:2]
  call void @llvm.dbg.value(metadata !{i32 %res.3}, i64 0, metadata !105), !dbg !108 ; [debug line = 24:2] [debug variable = res]
  %tmp.34 = add nsw i32 %posx, 2048, !dbg !109    ; [#uses=1 type=i32] [debug line = 25:2]
  %tmp.35 = sext i32 %tmp.34 to i64, !dbg !109    ; [#uses=1 type=i64] [debug line = 25:2]
  %input.addr.7 = getelementptr inbounds i8* %input, i64 %tmp.35, !dbg !109 ; [#uses=1 type=i8*] [debug line = 25:2]
  %input.load.5 = load i8* %input.addr.7, align 1, !dbg !109 ; [#uses=2 type=i8] [debug line = 25:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.5) nounwind
  %tmp.36 = zext i8 %input.load.5 to i32, !dbg !109 ; [#uses=1 type=i32] [debug line = 25:2]
  %tmp.37 = shl nuw nsw i32 %tmp.36, 1, !dbg !109 ; [#uses=1 type=i32] [debug line = 25:2]
  call void @llvm.dbg.value(metadata !{i32 %res.4}, i64 0, metadata !105), !dbg !109 ; [debug line = 25:2] [debug variable = res]
  %tmp.38 = add nsw i32 %posx, 2049, !dbg !110    ; [#uses=1 type=i32] [debug line = 26:2]
  %tmp.39 = sext i32 %tmp.38 to i64, !dbg !110    ; [#uses=1 type=i64] [debug line = 26:2]
  %input.addr.8 = getelementptr inbounds i8* %input, i64 %tmp.39, !dbg !110 ; [#uses=1 type=i8*] [debug line = 26:2]
  %input.load.6 = load i8* %input.addr.8, align 1, !dbg !110 ; [#uses=2 type=i8] [debug line = 26:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.6) nounwind
  %tmp.40 = zext i8 %input.load.6 to i32, !dbg !110 ; [#uses=1 type=i32] [debug line = 26:2]
  %.neg = sub i32 0, %tmp.33                      ; [#uses=1 type=i32]
  %.neg3 = sub i32 0, %tmp.37                     ; [#uses=1 type=i32]
  %.neg4 = sub i32 0, %tmp.40                     ; [#uses=1 type=i32]
  %res.1 = add i32 %tmp.27, %res, !dbg !106       ; [#uses=1 type=i32] [debug line = 22:2]
  %res.2 = add i32 %res.1, %tmp.30, !dbg !107     ; [#uses=1 type=i32] [debug line = 23:2]
  %res.3 = add i32 %res.2, %.neg, !dbg !108       ; [#uses=1 type=i32] [debug line = 24:2]
  %res.4 = add i32 %res.3, %.neg3, !dbg !109      ; [#uses=1 type=i32] [debug line = 25:2]
  %res.6 = add i32 %res.4, %.neg4, !dbg !110      ; [#uses=1 type=i32] [debug line = 26:2]
  call void @llvm.dbg.value(metadata !{i32 %res.6}, i64 0, metadata !105), !dbg !110 ; [debug line = 26:2] [debug variable = res]
  ret i32 %res.6, !dbg !111                       ; [debug line = 27:2]
}

; [#uses=1]
define internal fastcc i32 @convolution2D_horizontal(i32 %posx, i8* %input) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %posx}, i64 0, metadata !112), !dbg !113 ; [debug line = 36:34] [debug variable = posx]
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !114), !dbg !115 ; [debug line = 36:54] [debug variable = input]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %input, i32 3072) nounwind, !dbg !116 ; [debug line = 36:70]
  %tmp = add nsw i32 %posx, 1, !dbg !118          ; [#uses=1 type=i32] [debug line = 41:2]
  %tmp.41 = sext i32 %tmp to i64, !dbg !118       ; [#uses=1 type=i64] [debug line = 41:2]
  %input.addr = getelementptr inbounds i8* %input, i64 %tmp.41, !dbg !118 ; [#uses=1 type=i8*] [debug line = 41:2]
  %input.load = load i8* %input.addr, align 1, !dbg !118 ; [#uses=2 type=i8] [debug line = 41:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load) nounwind
  %res = zext i8 %input.load to i32, !dbg !118    ; [#uses=1 type=i32] [debug line = 41:2]
  call void @llvm.dbg.value(metadata !{i32 %res}, i64 0, metadata !119), !dbg !118 ; [debug line = 41:2] [debug variable = res]
  %tmp.43 = add nsw i32 %posx, 1025, !dbg !120    ; [#uses=1 type=i32] [debug line = 42:2]
  %tmp.44 = sext i32 %tmp.43 to i64, !dbg !120    ; [#uses=1 type=i64] [debug line = 42:2]
  %input.addr.9 = getelementptr inbounds i8* %input, i64 %tmp.44, !dbg !120 ; [#uses=1 type=i8*] [debug line = 42:2]
  %input.load.7 = load i8* %input.addr.9, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 42:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.7) nounwind
  %tmp.45 = zext i8 %input.load.7 to i32, !dbg !120 ; [#uses=1 type=i32] [debug line = 42:2]
  %tmp.46 = mul i32 %tmp.45, 2, !dbg !120         ; [#uses=1 type=i32] [debug line = 42:2]
  call void @llvm.dbg.value(metadata !{i32 %res.7}, i64 0, metadata !119), !dbg !120 ; [debug line = 42:2] [debug variable = res]
  %tmp.47 = add nsw i32 %posx, 2049, !dbg !121    ; [#uses=1 type=i32] [debug line = 43:2]
  %tmp.48 = sext i32 %tmp.47 to i64, !dbg !121    ; [#uses=1 type=i64] [debug line = 43:2]
  %input.addr.10 = getelementptr inbounds i8* %input, i64 %tmp.48, !dbg !121 ; [#uses=1 type=i8*] [debug line = 43:2]
  %input.load.8 = load i8* %input.addr.10, align 1, !dbg !121 ; [#uses=2 type=i8] [debug line = 43:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.8) nounwind
  %tmp.49 = zext i8 %input.load.8 to i32, !dbg !121 ; [#uses=1 type=i32] [debug line = 43:2]
  call void @llvm.dbg.value(metadata !{i32 %res.8}, i64 0, metadata !119), !dbg !121 ; [debug line = 43:2] [debug variable = res]
  %tmp.50 = add nsw i32 %posx, -1, !dbg !122      ; [#uses=1 type=i32] [debug line = 44:2]
  %tmp.51 = sext i32 %tmp.50 to i64, !dbg !122    ; [#uses=1 type=i64] [debug line = 44:2]
  %input.addr.11 = getelementptr inbounds i8* %input, i64 %tmp.51, !dbg !122 ; [#uses=1 type=i8*] [debug line = 44:2]
  %input.load.9 = load i8* %input.addr.11, align 1, !dbg !122 ; [#uses=2 type=i8] [debug line = 44:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.9) nounwind
  %tmp.52 = zext i8 %input.load.9 to i32, !dbg !122 ; [#uses=1 type=i32] [debug line = 44:2]
  call void @llvm.dbg.value(metadata !{i32 %res.9}, i64 0, metadata !119), !dbg !122 ; [debug line = 44:2] [debug variable = res]
  %tmp.53 = add nsw i32 %posx, 1023, !dbg !123    ; [#uses=1 type=i32] [debug line = 45:2]
  %tmp.54 = sext i32 %tmp.53 to i64, !dbg !123    ; [#uses=1 type=i64] [debug line = 45:2]
  %input.addr.12 = getelementptr inbounds i8* %input, i64 %tmp.54, !dbg !123 ; [#uses=1 type=i8*] [debug line = 45:2]
  %input.load.10 = load i8* %input.addr.12, align 1, !dbg !123 ; [#uses=2 type=i8] [debug line = 45:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.10) nounwind
  %tmp.55 = zext i8 %input.load.10 to i32, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:2]
  %tmp.56 = shl nuw nsw i32 %tmp.55, 1, !dbg !123 ; [#uses=1 type=i32] [debug line = 45:2]
  call void @llvm.dbg.value(metadata !{i32 %res.12}, i64 0, metadata !119), !dbg !123 ; [debug line = 45:2] [debug variable = res]
  %tmp.57 = add nsw i32 %posx, 2047, !dbg !124    ; [#uses=1 type=i32] [debug line = 46:2]
  %tmp.58 = sext i32 %tmp.57 to i64, !dbg !124    ; [#uses=1 type=i64] [debug line = 46:2]
  %input.addr.13 = getelementptr inbounds i8* %input, i64 %tmp.58, !dbg !124 ; [#uses=1 type=i8*] [debug line = 46:2]
  %input.load.11 = load i8* %input.addr.13, align 1, !dbg !124 ; [#uses=2 type=i8] [debug line = 46:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %input.load.11) nounwind
  %tmp.59 = zext i8 %input.load.11 to i32, !dbg !124 ; [#uses=1 type=i32] [debug line = 46:2]
  %.neg = sub i32 0, %tmp.52                      ; [#uses=1 type=i32]
  %.neg3 = sub i32 0, %tmp.56                     ; [#uses=1 type=i32]
  %.neg4 = sub i32 0, %tmp.59                     ; [#uses=1 type=i32]
  %res.7 = add i32 %tmp.46, %res, !dbg !120       ; [#uses=1 type=i32] [debug line = 42:2]
  %res.8 = add i32 %res.7, %tmp.49, !dbg !121     ; [#uses=1 type=i32] [debug line = 43:2]
  %res.9 = add i32 %res.8, %.neg, !dbg !122       ; [#uses=1 type=i32] [debug line = 44:2]
  %res.12 = add i32 %res.9, %.neg3, !dbg !123     ; [#uses=1 type=i32] [debug line = 45:2]
  %res11 = add i32 %res.12, %.neg4, !dbg !124     ; [#uses=1 type=i32] [debug line = 46:2]
  call void @llvm.dbg.value(metadata !{i32 %res11}, i64 0, metadata !119), !dbg !124 ; [debug line = 46:2] [debug variable = res]
  ret i32 %res11, !dbg !125                       ; [debug line = 47:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecBurst(...)

; [#uses=13]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=4]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!29, !36, !37}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/inf2015/dchristodoulou/CE435/LAB5/solution2/.autopilot/db/sobel_sw_new.pragma.2.c", metadata !"/home/inf2015/dchristodoulou/CE435", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !18} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolution2D_vertical", metadata !"convolution2D_vertical", metadata !"", metadata !6, i32 16, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8*)* @convolution2D_vertical, null, null, metadata !12, i32 16} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../sobel_sw_new.c", metadata !"/home/inf2015/dchristodoulou/CE435", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolution2D_horizontal", metadata !"convolution2D_horizontal", metadata !"", metadata !6, i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8*)* @convolution2D_horizontal, null, null, metadata !12, i32 36} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_sw_new", metadata !"sobel_sw_new", metadata !"", metadata !6, i32 55, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @sobel_sw_new, null, null, metadata !12, i32 56} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !10, metadata !10}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !20, metadata !23, metadata !24, metadata !25, metadata !27}
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !21, i32 320, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/inf2015/dchristodoulou/CE435", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !21, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !21, i32 321, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !21, i32 322, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !26, i32 26, metadata !9, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/inf2015/dchristodoulou/CE435", null} ; [ DW_TAG_file_type ]
!27 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !28, i32 162, metadata !9, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/inf2015/dchristodoulou/CE435", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 (i32, i8*)* @convolution2D_vertical, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"posx", metadata !"input"}
!35 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!36 = metadata !{i32 (i32, i8*)* @convolution2D_horizontal, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!37 = metadata !{void (i8*, i8*)* @sobel_sw_new, metadata !38, metadata !31, metadata !39, metadata !33, metadata !40, metadata !35}
!38 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"output"}
!41 = metadata !{i32 786689, metadata !15, metadata !"input", metadata !6, i32 16777271, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 55, i32 33, metadata !15, null}
!43 = metadata !{i32 786689, metadata !15, metadata !"output", metadata !6, i32 33554487, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 55, i32 63, metadata !15, null}
!45 = metadata !{i32 56, i32 2, metadata !46, null}
!46 = metadata !{i32 786443, metadata !15, i32 56, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 56, i32 42, metadata !46, null}
!48 = metadata !{i32 57, i32 1, metadata !46, null}
!49 = metadata !{i32 58, i32 1, metadata !46, null}
!50 = metadata !{i32 59, i32 1, metadata !46, null}
!51 = metadata !{i32 786688, metadata !46, metadata !"small_input", metadata !6, i32 65, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24576, i64 8, i32 0, i32 0, metadata !11, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 3071}     ; [ DW_TAG_subrange_type ]
!55 = metadata !{i32 65, i32 16, metadata !46, null}
!56 = metadata !{i32 72, i32 2, metadata !46, null}
!57 = metadata !{i32 74, i32 24, metadata !58, null}
!58 = metadata !{i32 786443, metadata !46, i32 74, i32 19, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 74, i32 44, metadata !60, null}
!60 = metadata !{i32 786443, metadata !58, i32 74, i32 43, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 75, i32 3, metadata !60, null}
!62 = metadata !{i32 76, i32 13, metadata !63, null}
!63 = metadata !{i32 786443, metadata !64, i32 76, i32 9, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786443, metadata !60, i32 75, i32 11, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 76, i32 35, metadata !66, null}
!66 = metadata !{i32 786443, metadata !63, i32 76, i32 34, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 77, i32 1, metadata !66, null}
!68 = metadata !{i32 77, i32 5, metadata !66, null}
!69 = metadata !{i32 78, i32 4, metadata !66, null}
!70 = metadata !{i32 76, i32 30, metadata !63, null}
!71 = metadata !{i32 786688, metadata !46, metadata !"k", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 79, i32 4, metadata !64, null}
!73 = metadata !{i32 80, i32 4, metadata !64, null}
!74 = metadata !{i32 786688, metadata !46, metadata !"position", metadata !6, i32 66, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 81, i32 3, metadata !64, null}
!76 = metadata !{i32 87, i32 5, metadata !77, null}
!77 = metadata !{i32 786443, metadata !78, i32 86, i32 14, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786443, metadata !79, i32 82, i32 47, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786443, metadata !60, i32 82, i32 20, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 82, i32 25, metadata !79, null}
!81 = metadata !{i32 82, i32 48, metadata !78, null}
!82 = metadata !{i32 83, i32 1, metadata !78, null}
!83 = metadata !{i32 85, i32 13, metadata !78, null}
!84 = metadata !{i32 85, i32 63, metadata !78, null}
!85 = metadata !{i32 786688, metadata !46, metadata !"p", metadata !6, i32 63, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!87 = metadata !{i32 86, i32 4, metadata !78, null}
!88 = metadata !{i32 88, i32 4, metadata !77, null}
!89 = metadata !{i32 90, i32 5, metadata !90, null}
!90 = metadata !{i32 786443, metadata !78, i32 89, i32 8, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 92, i32 3, metadata !78, null}
!92 = metadata !{i32 82, i32 41, metadata !79, null}
!93 = metadata !{i32 786688, metadata !46, metadata !"j", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 93, i32 2, metadata !60, null}
!95 = metadata !{i32 74, i32 36, metadata !58, null}
!96 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 94, i32 1, metadata !46, null}
!98 = metadata !{i32 786689, metadata !5, metadata !"posx", metadata !6, i32 16777232, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 16, i32 32, metadata !5, null}
!100 = metadata !{i32 786689, metadata !5, metadata !"input", metadata !6, i32 33554448, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 16, i32 52, metadata !5, null}
!102 = metadata !{i32 16, i32 68, metadata !103, null}
!103 = metadata !{i32 786443, metadata !5, i32 16, i32 67, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 21, i32 2, metadata !103, null}
!105 = metadata !{i32 786688, metadata !103, metadata !"res", metadata !6, i32 18, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 22, i32 2, metadata !103, null}
!107 = metadata !{i32 23, i32 2, metadata !103, null}
!108 = metadata !{i32 24, i32 2, metadata !103, null}
!109 = metadata !{i32 25, i32 2, metadata !103, null}
!110 = metadata !{i32 26, i32 2, metadata !103, null}
!111 = metadata !{i32 27, i32 2, metadata !103, null}
!112 = metadata !{i32 786689, metadata !14, metadata !"posx", metadata !6, i32 16777252, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 36, i32 34, metadata !14, null}
!114 = metadata !{i32 786689, metadata !14, metadata !"input", metadata !6, i32 33554468, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 36, i32 54, metadata !14, null}
!116 = metadata !{i32 36, i32 70, metadata !117, null}
!117 = metadata !{i32 786443, metadata !14, i32 36, i32 69, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 41, i32 2, metadata !117, null}
!119 = metadata !{i32 786688, metadata !117, metadata !"res", metadata !6, i32 38, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 42, i32 2, metadata !117, null}
!121 = metadata !{i32 43, i32 2, metadata !117, null}
!122 = metadata !{i32 44, i32 2, metadata !117, null}
!123 = metadata !{i32 45, i32 2, metadata !117, null}
!124 = metadata !{i32 46, i32 2, metadata !117, null}
!125 = metadata !{i32 47, i32 2, metadata !117, null}
