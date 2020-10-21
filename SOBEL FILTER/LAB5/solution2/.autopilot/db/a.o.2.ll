; ModuleID = '/home/inf2015/dchristodoulou/CE435/LAB5/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sobel_sw_new.str = internal unnamed_addr constant [13 x i8] c"sobel_sw_new\00" ; [#uses=1 type=[13 x i8]*]
@memcpy_OC__OC_input.str = internal unnamed_addr constant [14 x i8] c"memcpy..input\00" ; [#uses=2 type=[14 x i8]*]
@burstread_OC_region.str = internal unnamed_addr constant [17 x i8] c"burstread.region\00" ; [#uses=4 type=[17 x i8]*]
@.str9 = private unnamed_addr constant [17 x i8] c"sobel_1_internal\00", align 1 ; [#uses=3 type=[17 x i8]*]
@.str8 = private unnamed_addr constant [5 x i8] c"move\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str7 = private unnamed_addr constant [17 x i8] c"sobel_1_external\00", align 1 ; [#uses=3 type=[17 x i8]*]
@.str6 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"INPUT\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=15 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=0]
define void @sobel_sw_new([264192 x i8]* %input, [264192 x i8]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([264192 x i8]* %input) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap([264192 x i8]* %output) nounwind, !map !46
  %input.addr = getelementptr [264192 x i8]* %input, i64 0, i64 0 ; [#uses=1 type=i8*]
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_sw_new.str) nounwind
  %small_input = alloca [3072 x i8], align 16     ; [#uses=12 type=[3072 x i8]*]
  call void @llvm.dbg.value(metadata !{[264192 x i8]* %input}, i64 0, metadata !50), !dbg !54 ; [debug line = 55:33] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[264192 x i8]* %output}, i64 0, metadata !55), !dbg !56 ; [debug line = 55:63] [debug variable = output]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !57 ; [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecInterface([264192 x i8]* %input, [6 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 133120, [6 x i8]* @.str4, [6 x i8]* @.str5, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([264192 x i8]* %output, [6 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 133120, [7 x i8]* @.str6, [6 x i8]* @.str5, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.declare(metadata !{[3072 x i8]* %small_input}, metadata !59), !dbg !63 ; [debug line = 65:16] [debug variable = small_input]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %0
  %indvar = phi i12 [ 0, %0 ], [ %indvar.next, %burst.rd.body ] ; [#uses=3 type=i12]
  %exitcond6 = icmp eq i12 %indvar, -1024         ; [#uses=1 type=i1]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3072, i64 3072, i64 3072) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond6, label %burst.rd.end.preheader, label %burst.rd.body

burst.rd.end.preheader:                           ; preds = %burst.rd.header
  br label %burst.rd.end, !dbg !64                ; [debug line = 74:24]

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread.rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region.str) nounwind ; [#uses=1 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecBurst(i8* %input.addr, i32 1, i32 3072, i32 1) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str10)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memcpy_OC__OC_input.str)
  %indvar.next = add i12 %indvar, 1               ; [#uses=1 type=i12]
  %tmp = zext i12 %indvar to i64, !dbg !66        ; [#uses=2 type=i64] [debug line = 72:2]
  %input.addr.1 = getelementptr [264192 x i8]* %input, i64 0, i64 %tmp, !dbg !66 ; [#uses=1 type=i8*] [debug line = 72:2]
  %input.load = load i8* %input.addr.1, align 1, !dbg !66 ; [#uses=1 type=i8] [debug line = 72:2]
  %small_input.addr = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp, !dbg !66 ; [#uses=1 type=i8*] [debug line = 72:2]
  store i8 %input.load, i8* %small_input.addr, align 1, !dbg !66 ; [debug line = 72:2]
  %burstread.rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region.str, i32 %burstread.rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %18, %burst.rd.end.preheader
  %i = phi i9 [ %i.1, %18 ], [ 1, %burst.rd.end.preheader ] ; [#uses=5 type=i9]
  %position = phi i32 [ %position.1, %18 ], [ 3, %burst.rd.end.preheader ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i9 %i, -255, !dbg !64      ; [#uses=1 type=i1] [debug line = 74:24]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %20, label %4, !dbg !64 ; [debug line = 74:24]

; <label>:4                                       ; preds = %burst.rd.end
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str7) nounwind, !dbg !67 ; [debug line = 74:44]
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str7) nounwind, !dbg !67 ; [#uses=1 type=i32] [debug line = 74:44]
  %tmp.1 = icmp eq i9 %i, 1, !dbg !69             ; [#uses=1 type=i1] [debug line = 75:3]
  br i1 %tmp.1, label %._crit_edge, label %.preheader.preheader, !dbg !69 ; [debug line = 75:3]

.preheader.preheader:                             ; preds = %4
  br label %.preheader, !dbg !70                  ; [debug line = 76:13]

.preheader:                                       ; preds = %6, %.preheader.preheader
  %k = phi i12 [ %k.1, %6 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i12]
  %exitcond1 = icmp eq i12 %k, -2048, !dbg !70    ; [#uses=1 type=i1] [debug line = 76:13]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %8, label %6, !dbg !70  ; [debug line = 76:13]

; <label>:6                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str8) nounwind, !dbg !73 ; [debug line = 76:35]
  %tmp.8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str8) nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 76:35]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !75 ; [debug line = 77:1]
  %tmp.4 = add i12 %k, 1024, !dbg !76             ; [#uses=1 type=i12] [debug line = 77:5]
  %tmp.5 = zext i12 %tmp.4 to i64, !dbg !76       ; [#uses=1 type=i64] [debug line = 77:5]
  %small_input.addr.1 = getelementptr inbounds [3072 x i8]* %small_input, i64 0, i64 %tmp.5, !dbg !76 ; [#uses=1 type=i8*] [debug line = 77:5]
  %small_input.load = load i8* %small_input.addr.1, align 1, !dbg !76 ; [#uses=1 type=i8] [debug line = 77:5]
  %tmp.6 = zext i12 %k to i64, !dbg !76           ; [#uses=1 type=i64] [debug line = 77:5]
  %small_input.addr.2 = getelementptr inbounds [3072 x i8]* %small_input, i64 0, i64 %tmp.6, !dbg !76 ; [#uses=1 type=i8*] [debug line = 77:5]
  store i8 %small_input.load, i8* %small_input.addr.2, align 1, !dbg !76 ; [debug line = 77:5]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str8, i32 %tmp.8) nounwind, !dbg !77 ; [#uses=0 type=i32] [debug line = 78:4]
  %k.1 = add i12 %k, 1, !dbg !78                  ; [#uses=1 type=i12] [debug line = 76:30]
  call void @llvm.dbg.value(metadata !{i12 %k.1}, i64 0, metadata !79), !dbg !78 ; [debug line = 76:30] [debug variable = k]
  br label %.preheader, !dbg !78                  ; [debug line = 76:30]

; <label>:8                                       ; preds = %.preheader
  %tmp.2 = shl nsw i32 %position, 10, !dbg !80    ; [#uses=2 type=i32] [debug line = 79:4]
  %tmp.3 = sext i32 %tmp.2 to i64, !dbg !80       ; [#uses=1 type=i64] [debug line = 79:4]
  %input.addr.2 = getelementptr [264192 x i8]* %input, i64 0, i64 %tmp.3, !dbg !80 ; [#uses=1 type=i8*] [debug line = 79:4]
  br label %burst.rd.header12

burst.rd.header12:                                ; preds = %burst.rd.body13, %8
  %indvar1 = phi i11 [ 0, %8 ], [ %indvar.next1, %burst.rd.body13 ] ; [#uses=4 type=i11]
  %indvar1.cast1 = zext i11 %indvar1 to i32       ; [#uses=1 type=i32]
  %indvar1.cast = zext i11 %indvar1 to i12        ; [#uses=1 type=i12]
  %exitcond3 = icmp eq i11 %indvar1, -1024        ; [#uses=1 type=i1]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %burst.rd.end11, label %burst.rd.body13

burst.rd.body13:                                  ; preds = %burst.rd.header12
  %burstread.rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region.str) nounwind ; [#uses=1 type=i32]
  %10 = call i32 (...)* @_ssdm_op_SpecBurst(i8* %input.addr.2, i32 1, i32 1024, i32 1) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str11)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memcpy_OC__OC_input.str)
  %indvar.next1 = add i11 %indvar1, 1             ; [#uses=1 type=i11]
  %input.addr2 = add i32 %indvar1.cast1, %tmp.2   ; [#uses=1 type=i32]
  %tmp.9 = sext i32 %input.addr2 to i64, !dbg !80 ; [#uses=1 type=i64] [debug line = 79:4]
  %input.addr.3 = getelementptr [264192 x i8]* %input, i64 0, i64 %tmp.9, !dbg !80 ; [#uses=1 type=i8*] [debug line = 79:4]
  %input.load.1 = load i8* %input.addr.3, align 1, !dbg !80 ; [#uses=1 type=i8] [debug line = 79:4]
  %tmp.10 = or i12 %indvar1.cast, -2048           ; [#uses=1 type=i12]
  %tmp.7 = zext i12 %tmp.10 to i64, !dbg !80      ; [#uses=1 type=i64] [debug line = 79:4]
  %small_input.addr.3 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp.7, !dbg !80 ; [#uses=1 type=i8*] [debug line = 79:4]
  store i8 %input.load.1, i8* %small_input.addr.3, align 1, !dbg !80 ; [debug line = 79:4]
  %burstread.rend25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region.str, i32 %burstread.rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header12

burst.rd.end11:                                   ; preds = %burst.rd.header12
  %position.2 = add nsw i32 %position, 1, !dbg !81 ; [#uses=1 type=i32] [debug line = 80:4]
  call void @llvm.dbg.value(metadata !{i32 %position.2}, i64 0, metadata !82), !dbg !81 ; [debug line = 80:4] [debug variable = position]
  br label %._crit_edge, !dbg !83                 ; [debug line = 81:3]

._crit_edge:                                      ; preds = %burst.rd.end11, %4
  %position.1 = phi i32 [ %position.2, %burst.rd.end11 ], [ %position, %4 ] ; [#uses=1 type=i32]
  br label %11, !dbg !84                          ; [debug line = 82:25]

; <label>:11                                      ; preds = %16, %._crit_edge
  %posx.assign = phi i10 [ 1, %._crit_edge ], [ %j, %16 ] ; [#uses=8 type=i10]
  %posx.assign.cast8 = zext i10 %posx.assign to i12, !dbg !84 ; [#uses=3 type=i12] [debug line = 82:25]
  %posx.assign.cast = zext i10 %posx.assign to i11, !dbg !84 ; [#uses=2 type=i11] [debug line = 82:25]
  %exitcond = icmp eq i10 %posx.assign, -1, !dbg !84 ; [#uses=1 type=i1] [debug line = 82:25]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1022, i64 1022, i64 1022) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %18, label %13, !dbg !84 ; [debug line = 82:25]

; <label>:13                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str9) nounwind, !dbg !86 ; [debug line = 82:48]
  %tmp.11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str9) nounwind, !dbg !86 ; [#uses=1 type=i32] [debug line = 82:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !88 ; [debug line = 83:1]
  call void @llvm.dbg.value(metadata !{i10 %posx.assign}, i64 0, metadata !89) nounwind, !dbg !91 ; [debug line = 36:34@85:13] [debug variable = posx]
  call void @llvm.dbg.value(metadata !{[3072 x i8]* %small_input}, i64 0, metadata !92) nounwind, !dbg !93 ; [debug line = 36:54@85:13] [debug variable = input]
  %j = add i10 %posx.assign, 1, !dbg !94          ; [#uses=2 type=i10] [debug line = 41:2@85:13]
  %tmp..i = zext i10 %j to i64, !dbg !94          ; [#uses=1 type=i64] [debug line = 41:2@85:13]
  %input.assign.addr = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp..i, !dbg !94 ; [#uses=1 type=i8*] [debug line = 41:2@85:13]
  %input.assign.load = load i8* %input.assign.addr, align 1, !dbg !94 ; [#uses=1 type=i8] [debug line = 41:2@85:13]
  %res.cast = zext i8 %input.assign.load to i9, !dbg !94 ; [#uses=2 type=i9] [debug line = 41:2@85:13]
  %tmp.34.i = add i11 %posx.assign.cast, -1023, !dbg !96 ; [#uses=1 type=i11] [debug line = 42:2@85:13]
  %tmp.35.i = zext i11 %tmp.34.i to i64, !dbg !96 ; [#uses=1 type=i64] [debug line = 42:2@85:13]
  %input.assign.addr.1 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp.35.i, !dbg !96 ; [#uses=1 type=i8*] [debug line = 42:2@85:13]
  %input.assign.load.1 = load i8* %input.assign.addr.1, align 1, !dbg !96 ; [#uses=1 type=i8] [debug line = 42:2@85:13]
  %tmp.36.i.cast = zext i8 %input.assign.load.1 to i9, !dbg !96 ; [#uses=1 type=i9] [debug line = 42:2@85:13]
  %tmp.37.i = shl nuw i9 %tmp.36.i.cast, 1, !dbg !96 ; [#uses=1 type=i9] [debug line = 42:2@85:13]
  %tmp.37.i.cast = zext i9 %tmp.37.i to i10, !dbg !96 ; [#uses=1 type=i10] [debug line = 42:2@85:13]
  %tmp.38.i = add i12 %posx.assign.cast8, -2047, !dbg !97 ; [#uses=1 type=i12] [debug line = 43:2@85:13]
  %tmp.39.i = zext i12 %tmp.38.i to i64, !dbg !97 ; [#uses=1 type=i64] [debug line = 43:2@85:13]
  %input.assign.addr.2 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp.39.i, !dbg !97 ; [#uses=1 type=i8*] [debug line = 43:2@85:13]
  %input.assign.load.2 = load i8* %input.assign.addr.2, align 1, !dbg !97 ; [#uses=2 type=i8] [debug line = 43:2@85:13]
  %tmp.40.i.cast6 = zext i8 %input.assign.load.2 to i9, !dbg !98 ; [#uses=1 type=i9] [debug line = 44:2@85:13]
  %tmp.40.i.cast = zext i8 %input.assign.load.2 to i11, !dbg !98 ; [#uses=1 type=i11] [debug line = 44:2@85:13]
  %tmp.41.i = add i10 %posx.assign, -1, !dbg !98  ; [#uses=1 type=i10] [debug line = 44:2@85:13]
  %tmp.42.i = zext i10 %tmp.41.i to i64, !dbg !98 ; [#uses=1 type=i64] [debug line = 44:2@85:13]
  %input.assign.addr.3 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp.42.i, !dbg !98 ; [#uses=1 type=i8*] [debug line = 44:2@85:13]
  %input.assign.load.3 = load i8* %input.assign.addr.3, align 1, !dbg !98 ; [#uses=2 type=i8] [debug line = 44:2@85:13]
  %res.2.cast5 = zext i8 %input.assign.load.3 to i9, !dbg !99 ; [#uses=1 type=i9] [debug line = 45:2@85:13]
  %res.2.cast = zext i8 %input.assign.load.3 to i11, !dbg !99 ; [#uses=1 type=i11] [debug line = 45:2@85:13]
  %tmp.44.i = add i11 %posx.assign.cast, 1023, !dbg !99 ; [#uses=1 type=i11] [debug line = 45:2@85:13]
  %tmp.45.i = zext i11 %tmp.44.i to i64, !dbg !99 ; [#uses=1 type=i64] [debug line = 45:2@85:13]
  %input.assign.addr.4 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp.45.i, !dbg !99 ; [#uses=1 type=i8*] [debug line = 45:2@85:13]
  %input.assign.load.4 = load i8* %input.assign.addr.4, align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 45:2@85:13]
  %tmp.46.i.cast = zext i8 %input.assign.load.4 to i9, !dbg !99 ; [#uses=1 type=i9] [debug line = 45:2@85:13]
  %tmp.47.i = shl nuw i9 %tmp.46.i.cast, 1, !dbg !99 ; [#uses=1 type=i9] [debug line = 45:2@85:13]
  %tmp.47.i.cast = zext i9 %tmp.47.i to i11, !dbg !99 ; [#uses=1 type=i11] [debug line = 45:2@85:13]
  %tmp.48.i = add i12 %posx.assign.cast8, 2047, !dbg !100 ; [#uses=1 type=i12] [debug line = 46:2@85:13]
  %tmp.49.i = zext i12 %tmp.48.i to i64, !dbg !100 ; [#uses=1 type=i64] [debug line = 46:2@85:13]
  %input.assign.addr.5 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp.49.i, !dbg !100 ; [#uses=1 type=i8*] [debug line = 46:2@85:13]
  %input.assign.load.5 = load i8* %input.assign.addr.5, align 1, !dbg !100 ; [#uses=1 type=i8] [debug line = 46:2@85:13]
  %tmp.50.i.cast = zext i8 %input.assign.load.5 to i11, !dbg !97 ; [#uses=2 type=i11] [debug line = 43:2@85:13]
  %tmp1 = add i9 %tmp.40.i.cast6, %res.cast, !dbg !97 ; [#uses=1 type=i9] [debug line = 43:2@85:13]
  %tmp1.cast = zext i9 %tmp1 to i10, !dbg !97     ; [#uses=1 type=i10] [debug line = 43:2@85:13]
  %res.7.i = add i10 %tmp.37.i.cast, %tmp1.cast, !dbg !97 ; [#uses=1 type=i10] [debug line = 43:2@85:13]
  %res.7.i.cast = zext i10 %res.7.i to i11, !dbg !97 ; [#uses=1 type=i11] [debug line = 43:2@85:13]
  %res.8.i = sub i11 %res.7.i.cast, %res.2.cast, !dbg !98 ; [#uses=1 type=i11] [debug line = 44:2@85:13]
  %res.9.i = sub i11 %res.8.i, %tmp.47.i.cast, !dbg !99 ; [#uses=1 type=i11] [debug line = 45:2@85:13]
  %res = sub i11 %res.9.i, %tmp.50.i.cast, !dbg !100 ; [#uses=3 type=i11] [debug line = 46:2@85:13]
  call void @llvm.dbg.value(metadata !{i11 %res}, i64 0, metadata !101) nounwind, !dbg !100 ; [debug line = 46:2@85:13] [debug variable = res]
  %neg = sub i11 0, %res                          ; [#uses=1 type=i11]
  %abscond = icmp sgt i11 %res, 0                 ; [#uses=1 type=i1]
  %abs = select i1 %abscond, i11 %res, i11 %neg   ; [#uses=2 type=i11]
  %abs.cast4 = sext i11 %abs to i12               ; [#uses=1 type=i12]
  call void @llvm.dbg.value(metadata !{i10 %posx.assign}, i64 0, metadata !102) nounwind, !dbg !104 ; [debug line = 16:32@85:63] [debug variable = posx]
  call void @llvm.dbg.value(metadata !{[3072 x i8]* %small_input}, i64 0, metadata !105) nounwind, !dbg !106 ; [debug line = 16:52@85:63] [debug variable = input]
  %tmp.18.i = zext i10 %posx.assign to i64, !dbg !107 ; [#uses=1 type=i64] [debug line = 22:2@85:63]
  %input.assign.addr.6 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp.18.i, !dbg !107 ; [#uses=1 type=i8*] [debug line = 22:2@85:63]
  %input.assign.load.6 = load i8* %input.assign.addr.6, align 1, !dbg !107 ; [#uses=1 type=i8] [debug line = 22:2@85:63]
  %tmp.19.i.cast = zext i8 %input.assign.load.6 to i9, !dbg !107 ; [#uses=1 type=i9] [debug line = 22:2@85:63]
  %tmp.20.i = shl nuw i9 %tmp.19.i.cast, 1, !dbg !107 ; [#uses=1 type=i9] [debug line = 22:2@85:63]
  %tmp.20.i.cast = zext i9 %tmp.20.i to i10, !dbg !107 ; [#uses=1 type=i10] [debug line = 22:2@85:63]
  %tmp.27.i = or i12 %posx.assign.cast8, -2048, !dbg !109 ; [#uses=1 type=i12] [debug line = 25:2@85:63]
  %tmp.28.i = zext i12 %tmp.27.i to i64, !dbg !109 ; [#uses=1 type=i64] [debug line = 25:2@85:63]
  %input.assign.addr.7 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp.28.i, !dbg !109 ; [#uses=1 type=i8*] [debug line = 25:2@85:63]
  %input.assign.load.7 = load i8* %input.assign.addr.7, align 1, !dbg !109 ; [#uses=1 type=i8] [debug line = 25:2@85:63]
  %tmp.29.i.cast = zext i8 %input.assign.load.7 to i9, !dbg !109 ; [#uses=1 type=i9] [debug line = 25:2@85:63]
  %tmp.30.i = shl nuw i9 %tmp.29.i.cast, 1, !dbg !109 ; [#uses=1 type=i9] [debug line = 25:2@85:63]
  %tmp.30.i.cast = zext i9 %tmp.30.i to i11, !dbg !109 ; [#uses=1 type=i11] [debug line = 25:2@85:63]
  %tmp2 = add i9 %res.cast, %res.2.cast5, !dbg !110 ; [#uses=1 type=i9] [debug line = 23:2@85:63]
  %tmp2.cast = zext i9 %tmp2 to i10, !dbg !110    ; [#uses=1 type=i10] [debug line = 23:2@85:63]
  %res.2.i = add i10 %tmp.20.i.cast, %tmp2.cast, !dbg !110 ; [#uses=1 type=i10] [debug line = 23:2@85:63]
  %res.2.i.cast = zext i10 %res.2.i to i11, !dbg !110 ; [#uses=1 type=i11] [debug line = 23:2@85:63]
  %res.3.i = sub i11 %res.2.i.cast, %tmp.50.i.cast, !dbg !111 ; [#uses=1 type=i11] [debug line = 24:2@85:63]
  %res.4.i = sub i11 %res.3.i, %tmp.30.i.cast, !dbg !109 ; [#uses=1 type=i11] [debug line = 25:2@85:63]
  %res.1 = sub i11 %res.4.i, %tmp.40.i.cast, !dbg !112 ; [#uses=3 type=i11] [debug line = 26:2@85:63]
  call void @llvm.dbg.value(metadata !{i11 %res.1}, i64 0, metadata !113) nounwind, !dbg !112 ; [debug line = 26:2@85:63] [debug variable = res]
  %neg3 = sub i11 0, %res.1                       ; [#uses=1 type=i11]
  %abscond4 = icmp sgt i11 %res.1, 0              ; [#uses=1 type=i1]
  %abs5 = select i1 %abscond4, i11 %res.1, i11 %neg3 ; [#uses=2 type=i11]
  %abs5.cast3 = sext i11 %abs5 to i12             ; [#uses=1 type=i12]
  %tmp.18 = trunc i11 %abs to i8                  ; [#uses=1 type=i8]
  %tmp.19 = trunc i11 %abs5 to i8                 ; [#uses=1 type=i8]
  %p = add i12 %abs5.cast3, %abs.cast4, !dbg !103 ; [#uses=1 type=i12] [debug line = 85:63]
  call void @llvm.dbg.value(metadata !{i12 %p}, i64 0, metadata !114), !dbg !103 ; [debug line = 85:63] [debug variable = p]
  %tmp.12 = icmp ugt i12 %p, 255, !dbg !116       ; [#uses=1 type=i1] [debug line = 86:4]
  br i1 %tmp.12, label %14, label %15, !dbg !116  ; [debug line = 86:4]

; <label>:14                                      ; preds = %13
  %tmp.13 = call i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9 %i, i10 %posx.assign), !dbg !117 ; [#uses=1 type=i19] [debug line = 87:5]
  %tmp.14 = zext i19 %tmp.13 to i64, !dbg !117    ; [#uses=1 type=i64] [debug line = 87:5]
  %output.addr = getelementptr [264192 x i8]* %output, i64 0, i64 %tmp.14, !dbg !117 ; [#uses=1 type=i8*] [debug line = 87:5]
  store i8 -1, i8* %output.addr, align 1, !dbg !117 ; [debug line = 87:5]
  br label %16, !dbg !119                         ; [debug line = 88:4]

; <label>:15                                      ; preds = %13
  %tmp.15 = add i8 %tmp.19, %tmp.18, !dbg !120    ; [#uses=1 type=i8] [debug line = 90:5]
  %tmp.16 = call i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9 %i, i10 %posx.assign), !dbg !120 ; [#uses=1 type=i19] [debug line = 90:5]
  %tmp.17 = zext i19 %tmp.16 to i64, !dbg !120    ; [#uses=1 type=i64] [debug line = 90:5]
  %output.addr.1 = getelementptr [264192 x i8]* %output, i64 0, i64 %tmp.17, !dbg !120 ; [#uses=1 type=i8*] [debug line = 90:5]
  store i8 %tmp.15, i8* %output.addr.1, align 1, !dbg !120 ; [debug line = 90:5]
  br label %16

; <label>:16                                      ; preds = %15, %14
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str9, i32 %tmp.11) nounwind, !dbg !122 ; [#uses=0 type=i32] [debug line = 92:3]
  call void @llvm.dbg.value(metadata !{i10 %j}, i64 0, metadata !123), !dbg !124 ; [debug line = 82:41] [debug variable = j]
  br label %11, !dbg !124                         ; [debug line = 82:41]

; <label>:18                                      ; preds = %11
  %19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str7, i32 %tmp.) nounwind, !dbg !125 ; [#uses=0 type=i32] [debug line = 93:2]
  %i.1 = add i9 %i, 1, !dbg !126                  ; [#uses=1 type=i9] [debug line = 74:36]
  call void @llvm.dbg.value(metadata !{i9 %i.1}, i64 0, metadata !127), !dbg !126 ; [debug line = 74:36] [debug variable = i]
  br label %burst.rd.end, !dbg !126               ; [debug line = 74:36]

; <label>:20                                      ; preds = %burst.rd.end
  ret void, !dbg !128                             ; [debug line = 94:1]
}

; [#uses=13]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=5]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=5]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecBurst(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i9 @_ssdm_op_PartSelect.i9.i9.i32.i32(i9, i32, i32) nounwind readnone

; [#uses=0]
declare i9 @_ssdm_op_PartSelect.i9.i19.i32.i32(i19, i32, i32) nounwind readnone

; [#uses=2]
declare i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9, i10) nounwind readnone

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!29, !29, !36}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/inf2015/dchristodoulou/CE435/LAB5/solution2/.autopilot/db/sobel_sw_new.pragma.2.c", metadata !"/home/inf2015/dchristodoulou/CE435", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !18} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolution2D_vertical", metadata !"convolution2D_vertical", metadata !"", metadata !6, i32 16, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 16} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../sobel_sw_new.c", metadata !"/home/inf2015/dchristodoulou/CE435", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolution2D_horizontal", metadata !"convolution2D_horizontal", metadata !"", metadata !6, i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 36} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_sw_new", metadata !"sobel_sw_new", metadata !"", metadata !6, i32 55, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 56} ; [ DW_TAG_subprogram ]
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
!29 = metadata !{null, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"posx", metadata !"input"}
!35 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!36 = metadata !{null, metadata !37, metadata !31, metadata !38, metadata !33, metadata !39, metadata !35}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"output"}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 7, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"input", metadata !44, metadata !"unsigned char", i32 0, i32 7}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 264191, i32 1}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 7, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"output", metadata !44, metadata !"unsigned char", i32 0, i32 7}
!50 = metadata !{i32 786689, metadata !15, metadata !"input", null, i32 55, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2113536, i64 8, i32 0, i32 0, metadata !11, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786465, i64 0, i64 264191}   ; [ DW_TAG_subrange_type ]
!54 = metadata !{i32 55, i32 33, metadata !15, null}
!55 = metadata !{i32 786689, metadata !15, metadata !"output", null, i32 55, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 55, i32 63, metadata !15, null}
!57 = metadata !{i32 57, i32 1, metadata !58, null}
!58 = metadata !{i32 786443, metadata !15, i32 56, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 786688, metadata !58, metadata !"small_input", metadata !6, i32 65, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24576, i64 8, i32 0, i32 0, metadata !11, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786465, i64 0, i64 3071}     ; [ DW_TAG_subrange_type ]
!63 = metadata !{i32 65, i32 16, metadata !58, null}
!64 = metadata !{i32 74, i32 24, metadata !65, null}
!65 = metadata !{i32 786443, metadata !58, i32 74, i32 19, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 72, i32 2, metadata !58, null}
!67 = metadata !{i32 74, i32 44, metadata !68, null}
!68 = metadata !{i32 786443, metadata !65, i32 74, i32 43, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 75, i32 3, metadata !68, null}
!70 = metadata !{i32 76, i32 13, metadata !71, null}
!71 = metadata !{i32 786443, metadata !72, i32 76, i32 9, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786443, metadata !68, i32 75, i32 11, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 76, i32 35, metadata !74, null}
!74 = metadata !{i32 786443, metadata !71, i32 76, i32 34, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 77, i32 1, metadata !74, null}
!76 = metadata !{i32 77, i32 5, metadata !74, null}
!77 = metadata !{i32 78, i32 4, metadata !74, null}
!78 = metadata !{i32 76, i32 30, metadata !71, null}
!79 = metadata !{i32 786688, metadata !58, metadata !"k", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 79, i32 4, metadata !72, null}
!81 = metadata !{i32 80, i32 4, metadata !72, null}
!82 = metadata !{i32 786688, metadata !58, metadata !"position", metadata !6, i32 66, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 81, i32 3, metadata !72, null}
!84 = metadata !{i32 82, i32 25, metadata !85, null}
!85 = metadata !{i32 786443, metadata !68, i32 82, i32 20, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 82, i32 48, metadata !87, null}
!87 = metadata !{i32 786443, metadata !85, i32 82, i32 47, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 83, i32 1, metadata !87, null}
!89 = metadata !{i32 786689, metadata !14, metadata !"posx", metadata !6, i32 16777252, metadata !9, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 85, i32 13, metadata !87, null}
!91 = metadata !{i32 36, i32 34, metadata !14, metadata !90}
!92 = metadata !{i32 786689, metadata !14, metadata !"input", null, i32 36, metadata !60, i32 0, metadata !90} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 36, i32 54, metadata !14, metadata !90}
!94 = metadata !{i32 41, i32 2, metadata !95, metadata !90}
!95 = metadata !{i32 786443, metadata !14, i32 36, i32 69, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 42, i32 2, metadata !95, metadata !90}
!97 = metadata !{i32 43, i32 2, metadata !95, metadata !90}
!98 = metadata !{i32 44, i32 2, metadata !95, metadata !90}
!99 = metadata !{i32 45, i32 2, metadata !95, metadata !90}
!100 = metadata !{i32 46, i32 2, metadata !95, metadata !90}
!101 = metadata !{i32 786688, metadata !95, metadata !"res", metadata !6, i32 38, metadata !9, i32 0, metadata !90} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 786689, metadata !5, metadata !"posx", metadata !6, i32 16777232, metadata !9, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 85, i32 63, metadata !87, null}
!104 = metadata !{i32 16, i32 32, metadata !5, metadata !103}
!105 = metadata !{i32 786689, metadata !5, metadata !"input", null, i32 16, metadata !60, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 16, i32 52, metadata !5, metadata !103}
!107 = metadata !{i32 22, i32 2, metadata !108, metadata !103}
!108 = metadata !{i32 786443, metadata !5, i32 16, i32 67, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 25, i32 2, metadata !108, metadata !103}
!110 = metadata !{i32 23, i32 2, metadata !108, metadata !103}
!111 = metadata !{i32 24, i32 2, metadata !108, metadata !103}
!112 = metadata !{i32 26, i32 2, metadata !108, metadata !103}
!113 = metadata !{i32 786688, metadata !108, metadata !"res", metadata !6, i32 18, metadata !9, i32 0, metadata !103} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 786688, metadata !58, metadata !"p", metadata !6, i32 63, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!116 = metadata !{i32 86, i32 4, metadata !87, null}
!117 = metadata !{i32 87, i32 5, metadata !118, null}
!118 = metadata !{i32 786443, metadata !87, i32 86, i32 14, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 88, i32 4, metadata !118, null}
!120 = metadata !{i32 90, i32 5, metadata !121, null}
!121 = metadata !{i32 786443, metadata !87, i32 89, i32 8, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 92, i32 3, metadata !87, null}
!123 = metadata !{i32 786688, metadata !58, metadata !"j", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 82, i32 41, metadata !85, null}
!125 = metadata !{i32 93, i32 2, metadata !68, null}
!126 = metadata !{i32 74, i32 36, metadata !65, null}
!127 = metadata !{i32 786688, metadata !58, metadata !"i", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 94, i32 1, metadata !58, null}
