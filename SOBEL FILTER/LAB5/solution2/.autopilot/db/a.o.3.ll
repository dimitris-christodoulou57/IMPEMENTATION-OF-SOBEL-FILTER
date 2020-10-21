; ModuleID = '/home/inf2015/dchristodoulou/CE435/LAB5/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sobel_sw_new_str = internal unnamed_addr constant [13 x i8] c"sobel_sw_new\00" ; [#uses=1 type=[13 x i8]*]
@mode3 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@mode = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@memcpy_OC_OC_input_s = internal unnamed_addr constant [14 x i8] c"memcpy..input\00" ; [#uses=2 type=[14 x i8]*]
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00" ; [#uses=4 type=[17 x i8]*]
@bundle4 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@bundle = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str9 = private unnamed_addr constant [17 x i8] c"sobel_1_internal\00", align 1 ; [#uses=3 type=[17 x i8]*]
@p_str8 = private unnamed_addr constant [5 x i8] c"move\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str7 = private unnamed_addr constant [17 x i8] c"sobel_1_external\00", align 1 ; [#uses=3 type=[17 x i8]*]
@p_str6 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=4 type=[6 x i8]*]
@p_str4 = private unnamed_addr constant [6 x i8] c"INPUT\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@p_str2 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=23 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=0]
define void @sobel_sw_new(i8* %INPUT, i8* %OUTPUT, i32 %input, i32 %output) {
  %output_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %output_read}, i64 0, metadata !15), !dbg !27 ; [debug line = 55:63] [debug variable = output]
  %input_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %input_read}, i64 0, metadata !28), !dbg !29 ; [debug line = 55:33] [debug variable = input]
  %tmp_20_cast = sext i32 %output_read to i33     ; [#uses=2 type=i33]
  %tmp_2 = sext i32 %input_read to i64            ; [#uses=1 type=i64]
  %tmp_21_cast = sext i32 %input_read to i33      ; [#uses=1 type=i33]
  %INPUT_addr = getelementptr i8* %INPUT, i64 %tmp_2 ; [#uses=2 type=i8*]
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %OUTPUT), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %INPUT), !map !36
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_sw_new_str) nounwind
  %small_input = alloca [3072 x i8], align 16     ; [#uses=12 type=[3072 x i8]*]
  call void @llvm.dbg.value(metadata !{i32 %input}, i64 0, metadata !28), !dbg !29 ; [debug line = 55:33] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i32 %output}, i64 0, metadata !15), !dbg !27 ; [debug line = 55:63] [debug variable = output]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !40 ; [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %INPUT, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 133120, [6 x i8]* @p_str4, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %input, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 133120, [1 x i8]* @bundle, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %OUTPUT, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 133120, [7 x i8]* @p_str6, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %output, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 133120, [1 x i8]* @bundle4, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.declare(metadata !{[3072 x i8]* %small_input}, metadata !42), !dbg !46 ; [debug line = 65:16] [debug variable = small_input]
  %INPUT_addr_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %INPUT_addr, i32 3072), !dbg !47 ; [#uses=0 type=i1] [debug line = 72:2]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %0
  %indvar = phi i12 [ 0, %0 ], [ %indvar_next, %burst.rd.body ] ; [#uses=3 type=i12]
  %exitcond6 = icmp eq i12 %indvar, -1024         ; [#uses=1 type=i1]
  %indvar_next = add i12 %indvar, 1               ; [#uses=1 type=i12]
  br i1 %exitcond6, label %burst.rd.end.preheader, label %burst.rd.body

burst.rd.end.preheader:                           ; preds = %burst.rd.header
  %position = alloca i32                          ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %position}, metadata !48) ; [debug variable = position]
  store i32 3, i32* %position
  br label %burst.rd.end, !dbg !50                ; [debug line = 74:24]

burst.rd.body:                                    ; preds = %burst.rd.header
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3072, i64 3072, i64 3072) nounwind ; [#uses=0 type=i32]
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str10)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memcpy_OC_OC_input_s)
  %tmp = zext i12 %indvar to i64, !dbg !47        ; [#uses=1 type=i64] [debug line = 72:2]
  %INPUT_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %INPUT_addr), !dbg !47 ; [#uses=1 type=i8] [debug line = 72:2]
  %small_input_addr = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp, !dbg !47 ; [#uses=1 type=i8*] [debug line = 72:2]
  store i8 %INPUT_addr_read, i8* %small_input_addr, align 1, !dbg !47 ; [debug line = 72:2]
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %9, %burst.rd.end.preheader
  %i = phi i9 [ %i_1, %9 ], [ 1, %burst.rd.end.preheader ] ; [#uses=5 type=i9]
  %exitcond2 = icmp eq i9 %i, -255, !dbg !50      ; [#uses=1 type=i1] [debug line = 74:24]
  br i1 %exitcond2, label %10, label %1, !dbg !50 ; [debug line = 74:24]

; <label>:1                                       ; preds = %burst.rd.end
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str7) nounwind, !dbg !52 ; [debug line = 74:44]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str7) nounwind, !dbg !52 ; [#uses=1 type=i32] [debug line = 74:44]
  %tmp_1 = icmp eq i9 %i, 1, !dbg !54             ; [#uses=1 type=i1] [debug line = 75:3]
  br i1 %tmp_1, label %._crit_edge, label %.preheader.preheader, !dbg !54 ; [debug line = 75:3]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !55                  ; [debug line = 76:13]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %k = phi i12 [ %k_1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i12]
  %exitcond1 = icmp eq i12 %k, -2048, !dbg !55    ; [#uses=1 type=i1] [debug line = 76:13]
  %k_1 = add i12 %k, 1, !dbg !58                  ; [#uses=1 type=i12] [debug line = 76:30]
  br i1 %exitcond1, label %3, label %2, !dbg !55  ; [debug line = 76:13]

; <label>:2                                       ; preds = %.preheader
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str8) nounwind, !dbg !59 ; [debug line = 76:35]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str8) nounwind, !dbg !59 ; [#uses=1 type=i32] [debug line = 76:35]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !61 ; [debug line = 77:1]
  %tmp_4 = add i12 %k, 1024, !dbg !62             ; [#uses=1 type=i12] [debug line = 77:5]
  %tmp_5 = zext i12 %tmp_4 to i64, !dbg !62       ; [#uses=1 type=i64] [debug line = 77:5]
  %small_input_addr_1 = getelementptr inbounds [3072 x i8]* %small_input, i64 0, i64 %tmp_5, !dbg !62 ; [#uses=1 type=i8*] [debug line = 77:5]
  %small_input_load = load i8* %small_input_addr_1, align 1, !dbg !62 ; [#uses=1 type=i8] [debug line = 77:5]
  %tmp_6 = zext i12 %k to i64, !dbg !62           ; [#uses=1 type=i64] [debug line = 77:5]
  %small_input_addr_2 = getelementptr inbounds [3072 x i8]* %small_input, i64 0, i64 %tmp_6, !dbg !62 ; [#uses=1 type=i8*] [debug line = 77:5]
  store i8 %small_input_load, i8* %small_input_addr_2, align 1, !dbg !62 ; [debug line = 77:5]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str8, i32 %tmp_8) nounwind, !dbg !63 ; [#uses=0 type=i32] [debug line = 78:4]
  call void @llvm.dbg.value(metadata !{i12 %k_1}, i64 0, metadata !64), !dbg !58 ; [debug line = 76:30] [debug variable = k]
  br label %.preheader, !dbg !58                  ; [debug line = 76:30]

; <label>:3                                       ; preds = %.preheader
  %position_load_1 = load i32* %position, !dbg !65 ; [#uses=1 type=i32] [debug line = 79:4]
  %tmp_3 = shl i32 %position_load_1, 10, !dbg !65 ; [#uses=1 type=i32] [debug line = 79:4]
  %tmp_3_cast = sext i32 %tmp_3 to i33            ; [#uses=1 type=i33]
  %input2_sum5 = add i33 %tmp_21_cast, %tmp_3_cast ; [#uses=1 type=i33]
  %input2_sum5_cast = sext i33 %input2_sum5 to i64 ; [#uses=1 type=i64]
  %INPUT_addr_1 = getelementptr i8* %INPUT, i64 %input2_sum5_cast ; [#uses=2 type=i8*]
  %INPUT_addr_2_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %INPUT_addr_1, i32 1024), !dbg !65 ; [#uses=0 type=i1] [debug line = 79:4]
  br label %burst.rd.header12

burst.rd.header12:                                ; preds = %burst.rd.body13, %3
  %indvar1 = phi i11 [ 0, %3 ], [ %indvar_next1, %burst.rd.body13 ] ; [#uses=3 type=i11]
  %exitcond3 = icmp eq i11 %indvar1, -1024        ; [#uses=1 type=i1]
  %indvar_next1 = add i11 %indvar1, 1             ; [#uses=1 type=i11]
  br i1 %exitcond3, label %burst.rd.end11, label %burst.rd.body13

burst.rd.body13:                                  ; preds = %burst.rd.header12
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) nounwind ; [#uses=0 type=i32]
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str11)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memcpy_OC_OC_input_s)
  %INPUT_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %INPUT_addr_1), !dbg !65 ; [#uses=1 type=i8] [debug line = 79:4]
  %tmp_9 = call i12 @_ssdm_op_BitConcatenate.i12.i1.i11(i1 true, i11 %indvar1) ; [#uses=1 type=i12]
  %tmp_7 = zext i12 %tmp_9 to i64, !dbg !65       ; [#uses=1 type=i64] [debug line = 79:4]
  %small_input_addr_3 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_7, !dbg !65 ; [#uses=1 type=i8*] [debug line = 79:4]
  store i8 %INPUT_addr_1_read, i8* %small_input_addr_3, align 1, !dbg !65 ; [debug line = 79:4]
  %burstread_rend25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header12

burst.rd.end11:                                   ; preds = %burst.rd.header12
  %position_load = load i32* %position, !dbg !66  ; [#uses=1 type=i32] [debug line = 80:4]
  %position_1 = add nsw i32 %position_load, 1, !dbg !66 ; [#uses=1 type=i32] [debug line = 80:4]
  call void @llvm.dbg.value(metadata !{i32 %position_1}, i64 0, metadata !48), !dbg !66 ; [debug line = 80:4] [debug variable = position]
  store i32 %position_1, i32* %position, !dbg !66 ; [debug line = 80:4]
  br label %._crit_edge, !dbg !67                 ; [debug line = 81:3]

._crit_edge:                                      ; preds = %burst.rd.end11, %1
  br label %4, !dbg !68                           ; [debug line = 82:25]

; <label>:4                                       ; preds = %8, %._crit_edge
  %posx_assign = phi i10 [ 1, %._crit_edge ], [ %j, %8 ] ; [#uses=9 type=i10]
  %exitcond = icmp eq i10 %posx_assign, -1, !dbg !68 ; [#uses=1 type=i1] [debug line = 82:25]
  br i1 %exitcond, label %9, label %5, !dbg !68   ; [debug line = 82:25]

; <label>:5                                       ; preds = %4
  %posx_assign_cast8 = zext i10 %posx_assign to i12, !dbg !68 ; [#uses=2 type=i12] [debug line = 82:25]
  %posx_assign_cast = zext i10 %posx_assign to i11, !dbg !68 ; [#uses=2 type=i11] [debug line = 82:25]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1022, i64 1022, i64 1022) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str9) nounwind, !dbg !70 ; [debug line = 82:48]
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str9) nounwind, !dbg !70 ; [#uses=1 type=i32] [debug line = 82:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !72 ; [debug line = 83:1]
  call void @llvm.dbg.value(metadata !{i10 %posx_assign}, i64 0, metadata !73) nounwind, !dbg !78 ; [debug line = 36:34@85:13] [debug variable = posx]
  call void @llvm.dbg.value(metadata !{[3072 x i8]* %small_input}, i64 0, metadata !79) nounwind, !dbg !80 ; [debug line = 36:54@85:13] [debug variable = input]
  %j = add i10 1, %posx_assign, !dbg !81          ; [#uses=2 type=i10] [debug line = 41:2@85:13]
  %tmp_i = zext i10 %j to i64, !dbg !81           ; [#uses=1 type=i64] [debug line = 41:2@85:13]
  %small_input_addr_4 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_i, !dbg !81 ; [#uses=1 type=i8*] [debug line = 41:2@85:13]
  %small_input_load_1 = load i8* %small_input_addr_4, align 1, !dbg !81 ; [#uses=1 type=i8] [debug line = 41:2@85:13]
  %res_cast = zext i8 %small_input_load_1 to i9, !dbg !81 ; [#uses=2 type=i9] [debug line = 41:2@85:13]
  %tmp_34_i = add i11 -1023, %posx_assign_cast, !dbg !83 ; [#uses=1 type=i11] [debug line = 42:2@85:13]
  %tmp_35_i = zext i11 %tmp_34_i to i64, !dbg !83 ; [#uses=1 type=i64] [debug line = 42:2@85:13]
  %small_input_addr_5 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_35_i, !dbg !83 ; [#uses=1 type=i8*] [debug line = 42:2@85:13]
  %small_input_load_2 = load i8* %small_input_addr_5, align 1, !dbg !83 ; [#uses=1 type=i8] [debug line = 42:2@85:13]
  %tmp_37_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %small_input_load_2, i1 false), !dbg !83 ; [#uses=1 type=i9] [debug line = 42:2@85:13]
  %tmp_37_i_cast = zext i9 %tmp_37_i to i10, !dbg !83 ; [#uses=1 type=i10] [debug line = 42:2@85:13]
  %tmp_38_i = add i12 -2047, %posx_assign_cast8, !dbg !84 ; [#uses=1 type=i12] [debug line = 43:2@85:13]
  %tmp_39_i = zext i12 %tmp_38_i to i64, !dbg !84 ; [#uses=1 type=i64] [debug line = 43:2@85:13]
  %small_input_addr_6 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_39_i, !dbg !84 ; [#uses=1 type=i8*] [debug line = 43:2@85:13]
  %small_input_load_3 = load i8* %small_input_addr_6, align 1, !dbg !84 ; [#uses=2 type=i8] [debug line = 43:2@85:13]
  %tmp_40_i_cast6 = zext i8 %small_input_load_3 to i9, !dbg !85 ; [#uses=1 type=i9] [debug line = 44:2@85:13]
  %tmp_40_i_cast = zext i8 %small_input_load_3 to i11, !dbg !85 ; [#uses=1 type=i11] [debug line = 44:2@85:13]
  %tmp_41_i = add i10 -1, %posx_assign, !dbg !85  ; [#uses=1 type=i10] [debug line = 44:2@85:13]
  %tmp_42_i = zext i10 %tmp_41_i to i64, !dbg !85 ; [#uses=1 type=i64] [debug line = 44:2@85:13]
  %small_input_addr_7 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_42_i, !dbg !85 ; [#uses=1 type=i8*] [debug line = 44:2@85:13]
  %small_input_load_4 = load i8* %small_input_addr_7, align 1, !dbg !85 ; [#uses=2 type=i8] [debug line = 44:2@85:13]
  %res_2_cast5 = zext i8 %small_input_load_4 to i9, !dbg !86 ; [#uses=1 type=i9] [debug line = 45:2@85:13]
  %res_2_cast = zext i8 %small_input_load_4 to i11, !dbg !86 ; [#uses=1 type=i11] [debug line = 45:2@85:13]
  %tmp_44_i = add i11 1023, %posx_assign_cast, !dbg !86 ; [#uses=1 type=i11] [debug line = 45:2@85:13]
  %tmp_45_i = zext i11 %tmp_44_i to i64, !dbg !86 ; [#uses=1 type=i64] [debug line = 45:2@85:13]
  %small_input_addr_8 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_45_i, !dbg !86 ; [#uses=1 type=i8*] [debug line = 45:2@85:13]
  %small_input_load_5 = load i8* %small_input_addr_8, align 1, !dbg !86 ; [#uses=1 type=i8] [debug line = 45:2@85:13]
  %tmp_47_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %small_input_load_5, i1 false), !dbg !86 ; [#uses=1 type=i9] [debug line = 45:2@85:13]
  %tmp_47_i_cast = zext i9 %tmp_47_i to i11, !dbg !86 ; [#uses=1 type=i11] [debug line = 45:2@85:13]
  %tmp_48_i = add i12 2047, %posx_assign_cast8, !dbg !87 ; [#uses=1 type=i12] [debug line = 46:2@85:13]
  %tmp_49_i = zext i12 %tmp_48_i to i64, !dbg !87 ; [#uses=1 type=i64] [debug line = 46:2@85:13]
  %small_input_addr_9 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_49_i, !dbg !87 ; [#uses=1 type=i8*] [debug line = 46:2@85:13]
  %small_input_load_6 = load i8* %small_input_addr_9, align 1, !dbg !87 ; [#uses=1 type=i8] [debug line = 46:2@85:13]
  %tmp_50_i_cast = zext i8 %small_input_load_6 to i11, !dbg !84 ; [#uses=2 type=i11] [debug line = 43:2@85:13]
  %tmp1 = add i9 %res_cast, %tmp_40_i_cast6, !dbg !84 ; [#uses=1 type=i9] [debug line = 43:2@85:13]
  %tmp1_cast = zext i9 %tmp1 to i10, !dbg !84     ; [#uses=1 type=i10] [debug line = 43:2@85:13]
  %res_7_i = add i10 %tmp1_cast, %tmp_37_i_cast, !dbg !84 ; [#uses=1 type=i10] [debug line = 43:2@85:13]
  %res_7_i_cast = zext i10 %res_7_i to i11, !dbg !84 ; [#uses=1 type=i11] [debug line = 43:2@85:13]
  %res_8_i = sub i11 %res_7_i_cast, %res_2_cast, !dbg !85 ; [#uses=1 type=i11] [debug line = 44:2@85:13]
  %res_9_i = sub i11 %res_8_i, %tmp_47_i_cast, !dbg !86 ; [#uses=1 type=i11] [debug line = 45:2@85:13]
  %res = sub i11 %res_9_i, %tmp_50_i_cast, !dbg !87 ; [#uses=3 type=i11] [debug line = 46:2@85:13]
  call void @llvm.dbg.value(metadata !{i11 %res}, i64 0, metadata !88) nounwind, !dbg !87 ; [debug line = 46:2@85:13] [debug variable = res]
  %neg = sub i11 0, %res                          ; [#uses=1 type=i11]
  %abscond = icmp sgt i11 %res, 0                 ; [#uses=1 type=i1]
  %abs = select i1 %abscond, i11 %res, i11 %neg   ; [#uses=2 type=i11]
  %abs_cast4 = sext i11 %abs to i12               ; [#uses=1 type=i12]
  call void @llvm.dbg.value(metadata !{i10 %posx_assign}, i64 0, metadata !89) nounwind, !dbg !92 ; [debug line = 16:32@85:63] [debug variable = posx]
  call void @llvm.dbg.value(metadata !{[3072 x i8]* %small_input}, i64 0, metadata !93) nounwind, !dbg !94 ; [debug line = 16:52@85:63] [debug variable = input]
  %tmp_18_i = zext i10 %posx_assign to i64, !dbg !95 ; [#uses=1 type=i64] [debug line = 22:2@85:63]
  %small_input_addr_10 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_18_i, !dbg !95 ; [#uses=1 type=i8*] [debug line = 22:2@85:63]
  %small_input_load_7 = load i8* %small_input_addr_10, align 1, !dbg !95 ; [#uses=1 type=i8] [debug line = 22:2@85:63]
  %tmp_20_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %small_input_load_7, i1 false), !dbg !95 ; [#uses=1 type=i9] [debug line = 22:2@85:63]
  %tmp_20_i_cast = zext i9 %tmp_20_i to i10, !dbg !95 ; [#uses=1 type=i10] [debug line = 22:2@85:63]
  %tmp_27_i = call i12 @_ssdm_op_BitConcatenate.i12.i2.i10(i2 -2, i10 %posx_assign), !dbg !97 ; [#uses=1 type=i12] [debug line = 25:2@85:63]
  %tmp_28_i = zext i12 %tmp_27_i to i64, !dbg !97 ; [#uses=1 type=i64] [debug line = 25:2@85:63]
  %small_input_addr_11 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_28_i, !dbg !97 ; [#uses=1 type=i8*] [debug line = 25:2@85:63]
  %small_input_load_8 = load i8* %small_input_addr_11, align 1, !dbg !97 ; [#uses=1 type=i8] [debug line = 25:2@85:63]
  %tmp_30_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %small_input_load_8, i1 false), !dbg !97 ; [#uses=1 type=i9] [debug line = 25:2@85:63]
  %tmp_30_i_cast = zext i9 %tmp_30_i to i11, !dbg !97 ; [#uses=1 type=i11] [debug line = 25:2@85:63]
  %tmp2 = add i9 %res_2_cast5, %res_cast, !dbg !98 ; [#uses=1 type=i9] [debug line = 23:2@85:63]
  %tmp2_cast = zext i9 %tmp2 to i10, !dbg !98     ; [#uses=1 type=i10] [debug line = 23:2@85:63]
  %res_2_i = add i10 %tmp2_cast, %tmp_20_i_cast, !dbg !98 ; [#uses=1 type=i10] [debug line = 23:2@85:63]
  %res_2_i_cast = zext i10 %res_2_i to i11, !dbg !98 ; [#uses=1 type=i11] [debug line = 23:2@85:63]
  %res_3_i = sub i11 %res_2_i_cast, %tmp_50_i_cast, !dbg !99 ; [#uses=1 type=i11] [debug line = 24:2@85:63]
  %res_4_i = sub i11 %res_3_i, %tmp_30_i_cast, !dbg !97 ; [#uses=1 type=i11] [debug line = 25:2@85:63]
  %res_1 = sub i11 %res_4_i, %tmp_40_i_cast, !dbg !100 ; [#uses=3 type=i11] [debug line = 26:2@85:63]
  call void @llvm.dbg.value(metadata !{i11 %res_1}, i64 0, metadata !101) nounwind, !dbg !100 ; [debug line = 26:2@85:63] [debug variable = res]
  %neg3 = sub i11 0, %res_1                       ; [#uses=1 type=i11]
  %abscond4 = icmp sgt i11 %res_1, 0              ; [#uses=1 type=i1]
  %abs5 = select i1 %abscond4, i11 %res_1, i11 %neg3 ; [#uses=2 type=i11]
  %abs5_cast3 = sext i11 %abs5 to i12             ; [#uses=1 type=i12]
  %tmp_11 = trunc i11 %abs to i8                  ; [#uses=1 type=i8]
  %tmp_12 = trunc i11 %abs5 to i8                 ; [#uses=1 type=i8]
  %p = add i12 %abs_cast4, %abs5_cast3, !dbg !91  ; [#uses=1 type=i12] [debug line = 85:63]
  call void @llvm.dbg.value(metadata !{i12 %p}, i64 0, metadata !102), !dbg !91 ; [debug line = 85:63] [debug variable = p]
  %tmp_14 = call i4 @_ssdm_op_PartSelect.i4.i12.i32.i32(i12 %p, i32 8, i32 11), !dbg !104 ; [#uses=1 type=i4] [debug line = 86:4]
  %icmp = icmp eq i4 %tmp_14, 0, !dbg !104        ; [#uses=1 type=i1] [debug line = 86:4]
  br i1 %icmp, label %7, label %6, !dbg !104      ; [debug line = 86:4]

; <label>:6                                       ; preds = %5
  %tmp_13 = call i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9 %i, i10 %posx_assign), !dbg !105 ; [#uses=1 type=i19] [debug line = 87:5]
  %tmp_14_cast = zext i19 %tmp_13 to i33          ; [#uses=1 type=i33]
  %output4_sum7 = add i33 %tmp_14_cast, %tmp_20_cast ; [#uses=1 type=i33]
  %output4_sum7_cast = sext i33 %output4_sum7 to i64 ; [#uses=1 type=i64]
  %OUTPUT_addr = getelementptr i8* %OUTPUT, i64 %output4_sum7_cast ; [#uses=3 type=i8*]
  %OUTPUT_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %OUTPUT_addr, i32 1), !dbg !105 ; [#uses=0 type=i1] [debug line = 87:5]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %OUTPUT_addr, i8 -1, i1 true), !dbg !105 ; [debug line = 87:5]
  %OUTPUT_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %OUTPUT_addr), !dbg !105 ; [#uses=0 type=i1] [debug line = 87:5]
  br label %8, !dbg !107                          ; [debug line = 88:4]

; <label>:7                                       ; preds = %5
  %tmp_15 = add i8 %tmp_12, %tmp_11, !dbg !108    ; [#uses=1 type=i8] [debug line = 90:5]
  %tmp_16 = call i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9 %i, i10 %posx_assign), !dbg !108 ; [#uses=1 type=i19] [debug line = 90:5]
  %tmp_17_cast = zext i19 %tmp_16 to i33          ; [#uses=1 type=i33]
  %output4_sum = add i33 %tmp_17_cast, %tmp_20_cast ; [#uses=1 type=i33]
  %output4_sum_cast = sext i33 %output4_sum to i64 ; [#uses=1 type=i64]
  %OUTPUT_addr_1 = getelementptr i8* %OUTPUT, i64 %output4_sum_cast ; [#uses=3 type=i8*]
  %OUTPUT_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %OUTPUT_addr_1, i32 1), !dbg !108 ; [#uses=0 type=i1] [debug line = 90:5]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %OUTPUT_addr_1, i8 %tmp_15, i1 true), !dbg !108 ; [debug line = 90:5]
  %OUTPUT_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %OUTPUT_addr_1), !dbg !108 ; [#uses=0 type=i1] [debug line = 90:5]
  br label %8

; <label>:8                                       ; preds = %7, %6
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str9, i32 %tmp_10) nounwind, !dbg !110 ; [#uses=0 type=i32] [debug line = 92:3]
  call void @llvm.dbg.value(metadata !{i10 %j}, i64 0, metadata !111), !dbg !112 ; [debug line = 82:41] [debug variable = j]
  br label %4, !dbg !112                          ; [debug line = 82:41]

; <label>:9                                       ; preds = %4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str7, i32 %tmp_s) nounwind, !dbg !113 ; [#uses=0 type=i32] [debug line = 93:2]
  %i_1 = add i9 %i, 1, !dbg !114                  ; [#uses=1 type=i9] [debug line = 74:36]
  call void @llvm.dbg.value(metadata !{i9 %i_1}, i64 0, metadata !115), !dbg !114 ; [debug line = 74:36] [debug variable = i]
  br label %burst.rd.end, !dbg !114               ; [debug line = 74:36]

; <label>:10                                      ; preds = %burst.rd.end
  ret void, !dbg !116                             ; [debug line = 94:1]
}

; [#uses=1]
declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

; [#uses=15]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=2]
define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

; [#uses=1]
define weak i4 @_ssdm_op_PartSelect.i4.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2) ; [#uses=1 type=i12]
  %empty_12 = trunc i12 %empty to i4              ; [#uses=1 type=i4]
  ret i4 %empty_12
}

; [#uses=0]
declare i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=4]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_13 = zext i1 %1 to i9                    ; [#uses=1 type=i9]
  %empty_14 = shl i9 %empty, 1                    ; [#uses=1 type=i9]
  %empty_15 = or i9 %empty_14, %empty_13          ; [#uses=1 type=i9]
  ret i9 %empty_15
}

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22, i10) nounwind readnone

; [#uses=2]
define weak i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9, i10) nounwind readnone {
entry:
  %empty = zext i9 %0 to i19                      ; [#uses=1 type=i19]
  %empty_16 = zext i10 %1 to i19                  ; [#uses=1 type=i19]
  %empty_17 = shl i19 %empty, 10                  ; [#uses=1 type=i19]
  %empty_18 = or i19 %empty_17, %empty_16         ; [#uses=1 type=i19]
  ret i19 %empty_18
}

; [#uses=1]
define weak i12 @_ssdm_op_BitConcatenate.i12.i2.i10(i2, i10) nounwind readnone {
entry:
  %empty = zext i2 %0 to i12                      ; [#uses=1 type=i12]
  %empty_19 = zext i10 %1 to i12                  ; [#uses=1 type=i12]
  %empty_20 = shl i12 %empty, 10                  ; [#uses=1 type=i12]
  %empty_21 = or i12 %empty_20, %empty_19         ; [#uses=1 type=i12]
  ret i12 %empty_21
}

; [#uses=1]
define weak i12 @_ssdm_op_BitConcatenate.i12.i1.i11(i1, i11) nounwind readnone {
entry:
  %empty = zext i1 %0 to i12                      ; [#uses=1 type=i12]
  %empty_22 = zext i11 %1 to i12                  ; [#uses=1 type=i12]
  %empty_23 = shl i12 %empty, 11                  ; [#uses=1 type=i12]
  %empty_24 = or i12 %empty_23, %empty_22         ; [#uses=1 type=i12]
  ret i12 %empty_24
}

!opencl.kernels = !{!0, !0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!axi4.master.portmap = !{!11, !12}
!axi4.slave.bundlemap = !{!13, !14}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"posx", metadata !"input"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !2, metadata !9, metadata !4, metadata !10, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_type", metadata !"uchar*", metadata !"uchar*"}
!10 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"output"}
!11 = metadata !{metadata !"INPUT", metadata !"input", metadata !"READONLY"}
!12 = metadata !{metadata !"OUTPUT", metadata !"output", metadata !"WRITEONLY"}
!13 = metadata !{metadata !"input", metadata !""}
!14 = metadata !{metadata !"output", metadata !""}
!15 = metadata !{i32 786689, metadata !16, metadata !"output", null, i32 55, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 786478, i32 0, metadata !17, metadata !"sobel_sw_new", metadata !"sobel_sw_new", metadata !"", metadata !17, i32 55, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 56} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786473, metadata !"../sobel_sw_new.c", metadata !"/home/inf2015/dchristodoulou/CE435", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !20, metadata !20}
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2113536, i64 8, i32 0, i32 0, metadata !21, metadata !25, i32 0, i32 0} ; [ DW_TAG_array_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 264191}   ; [ DW_TAG_subrange_type ]
!27 = metadata !{i32 55, i32 63, metadata !16, null}
!28 = metadata !{i32 786689, metadata !16, metadata !"input", null, i32 55, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 55, i32 33, metadata !16, null}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 7, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"output", metadata !34, metadata !"unsigned char", i32 0, i32 7}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 264191, i32 1}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 7, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"input", metadata !34, metadata !"unsigned char", i32 0, i32 7}
!40 = metadata !{i32 57, i32 1, metadata !41, null}
!41 = metadata !{i32 786443, metadata !16, i32 56, i32 1, metadata !17, i32 2} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 786688, metadata !41, metadata !"small_input", metadata !17, i32 65, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24576, i64 8, i32 0, i32 0, metadata !21, metadata !44, i32 0, i32 0} ; [ DW_TAG_array_type ]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786465, i64 0, i64 3071}     ; [ DW_TAG_subrange_type ]
!46 = metadata !{i32 65, i32 16, metadata !41, null}
!47 = metadata !{i32 72, i32 2, metadata !41, null}
!48 = metadata !{i32 786688, metadata !41, metadata !"position", metadata !17, i32 66, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 74, i32 24, metadata !51, null}
!51 = metadata !{i32 786443, metadata !41, i32 74, i32 19, metadata !17, i32 3} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 74, i32 44, metadata !53, null}
!53 = metadata !{i32 786443, metadata !51, i32 74, i32 43, metadata !17, i32 4} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 75, i32 3, metadata !53, null}
!55 = metadata !{i32 76, i32 13, metadata !56, null}
!56 = metadata !{i32 786443, metadata !57, i32 76, i32 9, metadata !17, i32 6} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786443, metadata !53, i32 75, i32 11, metadata !17, i32 5} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 76, i32 30, metadata !56, null}
!59 = metadata !{i32 76, i32 35, metadata !60, null}
!60 = metadata !{i32 786443, metadata !56, i32 76, i32 34, metadata !17, i32 7} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 77, i32 1, metadata !60, null}
!62 = metadata !{i32 77, i32 5, metadata !60, null}
!63 = metadata !{i32 78, i32 4, metadata !60, null}
!64 = metadata !{i32 786688, metadata !41, metadata !"k", metadata !17, i32 62, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 79, i32 4, metadata !57, null}
!66 = metadata !{i32 80, i32 4, metadata !57, null}
!67 = metadata !{i32 81, i32 3, metadata !57, null}
!68 = metadata !{i32 82, i32 25, metadata !69, null}
!69 = metadata !{i32 786443, metadata !53, i32 82, i32 20, metadata !17, i32 8} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 82, i32 48, metadata !71, null}
!71 = metadata !{i32 786443, metadata !69, i32 82, i32 47, metadata !17, i32 9} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 83, i32 1, metadata !71, null}
!73 = metadata !{i32 786689, metadata !74, metadata !"posx", metadata !17, i32 16777252, metadata !49, i32 0, metadata !77} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 786478, i32 0, metadata !17, metadata !"convolution2D_horizontal", metadata !"convolution2D_horizontal", metadata !"", metadata !17, i32 36, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 36} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !49, metadata !49, metadata !20}
!77 = metadata !{i32 85, i32 13, metadata !71, null}
!78 = metadata !{i32 36, i32 34, metadata !74, metadata !77}
!79 = metadata !{i32 786689, metadata !74, metadata !"input", null, i32 36, metadata !43, i32 0, metadata !77} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 36, i32 54, metadata !74, metadata !77}
!81 = metadata !{i32 41, i32 2, metadata !82, metadata !77}
!82 = metadata !{i32 786443, metadata !74, i32 36, i32 69, metadata !17, i32 1} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 42, i32 2, metadata !82, metadata !77}
!84 = metadata !{i32 43, i32 2, metadata !82, metadata !77}
!85 = metadata !{i32 44, i32 2, metadata !82, metadata !77}
!86 = metadata !{i32 45, i32 2, metadata !82, metadata !77}
!87 = metadata !{i32 46, i32 2, metadata !82, metadata !77}
!88 = metadata !{i32 786688, metadata !82, metadata !"res", metadata !17, i32 38, metadata !49, i32 0, metadata !77} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 786689, metadata !90, metadata !"posx", metadata !17, i32 16777232, metadata !49, i32 0, metadata !91} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 786478, i32 0, metadata !17, metadata !"convolution2D_vertical", metadata !"convolution2D_vertical", metadata !"", metadata !17, i32 16, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 16} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 85, i32 63, metadata !71, null}
!92 = metadata !{i32 16, i32 32, metadata !90, metadata !91}
!93 = metadata !{i32 786689, metadata !90, metadata !"input", null, i32 16, metadata !43, i32 0, metadata !91} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 16, i32 52, metadata !90, metadata !91}
!95 = metadata !{i32 22, i32 2, metadata !96, metadata !91}
!96 = metadata !{i32 786443, metadata !90, i32 16, i32 67, metadata !17, i32 0} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 25, i32 2, metadata !96, metadata !91}
!98 = metadata !{i32 23, i32 2, metadata !96, metadata !91}
!99 = metadata !{i32 24, i32 2, metadata !96, metadata !91}
!100 = metadata !{i32 26, i32 2, metadata !96, metadata !91}
!101 = metadata !{i32 786688, metadata !96, metadata !"res", metadata !17, i32 18, metadata !49, i32 0, metadata !91} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 786688, metadata !41, metadata !"p", metadata !17, i32 63, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!104 = metadata !{i32 86, i32 4, metadata !71, null}
!105 = metadata !{i32 87, i32 5, metadata !106, null}
!106 = metadata !{i32 786443, metadata !71, i32 86, i32 14, metadata !17, i32 10} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 88, i32 4, metadata !106, null}
!108 = metadata !{i32 90, i32 5, metadata !109, null}
!109 = metadata !{i32 786443, metadata !71, i32 89, i32 8, metadata !17, i32 11} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 92, i32 3, metadata !71, null}
!111 = metadata !{i32 786688, metadata !41, metadata !"j", metadata !17, i32 62, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 82, i32 41, metadata !69, null}
!113 = metadata !{i32 93, i32 2, metadata !53, null}
!114 = metadata !{i32 74, i32 36, metadata !51, null}
!115 = metadata !{i32 786688, metadata !41, metadata !"i", metadata !17, i32 62, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 94, i32 1, metadata !41, null}
