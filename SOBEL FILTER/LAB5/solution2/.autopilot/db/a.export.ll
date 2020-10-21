; ModuleID = '/home/inf2015/dchristodoulou/CE435/LAB5/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sobel_sw_new_str = internal unnamed_addr constant [13 x i8] c"sobel_sw_new\00"
@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@memcpy_OC_OC_input_s = internal unnamed_addr constant [14 x i8] c"memcpy..input\00"
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@p_str9 = private unnamed_addr constant [17 x i8] c"sobel_1_internal\00", align 1
@p_str8 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@p_str7 = private unnamed_addr constant [17 x i8] c"sobel_1_external\00", align 1
@p_str6 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1
@p_str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"INPUT\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str2 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define void @sobel_sw_new(i8* %INPUT_r, i8* %OUTPUT_r, i32 %input_r_r, i32 %output_r_r) {
  %output_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_r_r)
  %input_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_r_r)
  %tmp_20_cast = sext i32 %output_read to i33
  %tmp_2 = sext i32 %input_read to i64
  %tmp_21_cast = sext i32 %input_read to i33
  %INPUT_addr = getelementptr i8* %INPUT_r, i64 %tmp_2
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %OUTPUT_r), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %INPUT_r), !map !21
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_sw_new_str) nounwind
  %small_input = alloca [3072 x i8], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %INPUT_r, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 133120, [6 x i8]* @p_str4, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_r_r, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 133120, [1 x i8]* @bundle, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %OUTPUT_r, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 133120, [7 x i8]* @p_str6, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_r_r, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 133120, [1 x i8]* @bundle4, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %INPUT_addr_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %INPUT_addr, i32 3072)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %0
  %indvar = phi i12 [ 0, %0 ], [ %indvar_next, %burst.rd.body ]
  %exitcond6 = icmp eq i12 %indvar, -1024
  %indvar_next = add i12 %indvar, 1
  br i1 %exitcond6, label %burst.rd.end.preheader, label %burst.rd.body

burst.rd.end.preheader:                           ; preds = %burst.rd.header
  %position = alloca i32
  store i32 3, i32* %position
  br label %burst.rd.end

burst.rd.body:                                    ; preds = %burst.rd.header
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3072, i64 3072, i64 3072) nounwind
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str10)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memcpy_OC_OC_input_s)
  %tmp = zext i12 %indvar to i64
  %INPUT_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %INPUT_addr)
  %small_input_addr = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp
  store i8 %INPUT_addr_read, i8* %small_input_addr, align 1
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.end.preheader, %9
  %i = phi i9 [ %i_1, %9 ], [ 1, %burst.rd.end.preheader ]
  %exitcond2 = icmp eq i9 %i, -255
  br i1 %exitcond2, label %10, label %1

; <label>:1                                       ; preds = %burst.rd.end
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str7) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str7) nounwind
  %tmp_1 = icmp eq i9 %i, 1
  br i1 %tmp_1, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %2
  %k = phi i12 [ %k_1, %2 ], [ 0, %.preheader.preheader ]
  %exitcond1 = icmp eq i12 %k, -2048
  %k_1 = add i12 %k, 1
  br i1 %exitcond1, label %3, label %2

; <label>:2                                       ; preds = %.preheader
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str8) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str8) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_4 = add i12 %k, 1024
  %tmp_5 = zext i12 %tmp_4 to i64
  %small_input_addr_1 = getelementptr inbounds [3072 x i8]* %small_input, i64 0, i64 %tmp_5
  %small_input_load = load i8* %small_input_addr_1, align 1
  %tmp_6 = zext i12 %k to i64
  %small_input_addr_2 = getelementptr inbounds [3072 x i8]* %small_input, i64 0, i64 %tmp_6
  store i8 %small_input_load, i8* %small_input_addr_2, align 1
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str8, i32 %tmp_8) nounwind
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  %position_load_1 = load i32* %position
  %tmp_3 = shl i32 %position_load_1, 10
  %tmp_3_cast = sext i32 %tmp_3 to i33
  %input2_sum5 = add i33 %tmp_21_cast, %tmp_3_cast
  %input2_sum5_cast = sext i33 %input2_sum5 to i64
  %INPUT_addr_1 = getelementptr i8* %INPUT_r, i64 %input2_sum5_cast
  %INPUT_addr_2_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %INPUT_addr_1, i32 1024)
  br label %burst.rd.header12

burst.rd.header12:                                ; preds = %burst.rd.body13, %3
  %indvar1 = phi i11 [ 0, %3 ], [ %indvar_next1, %burst.rd.body13 ]
  %exitcond3 = icmp eq i11 %indvar1, -1024
  %indvar_next1 = add i11 %indvar1, 1
  br i1 %exitcond3, label %burst.rd.end11, label %burst.rd.body13

burst.rd.body13:                                  ; preds = %burst.rd.header12
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) nounwind
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str11)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memcpy_OC_OC_input_s)
  %INPUT_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %INPUT_addr_1)
  %tmp_9 = call i12 @_ssdm_op_BitConcatenate.i12.i1.i11(i1 true, i11 %indvar1)
  %tmp_7 = zext i12 %tmp_9 to i64
  %small_input_addr_3 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_7
  store i8 %INPUT_addr_1_read, i8* %small_input_addr_3, align 1
  %burstread_rend25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin1) nounwind
  br label %burst.rd.header12

burst.rd.end11:                                   ; preds = %burst.rd.header12
  %position_load = load i32* %position
  %position_1 = add nsw i32 %position_load, 1
  store i32 %position_1, i32* %position
  br label %._crit_edge

._crit_edge:                                      ; preds = %burst.rd.end11, %1
  br label %4

; <label>:4                                       ; preds = %8, %._crit_edge
  %posx_assign = phi i10 [ 1, %._crit_edge ], [ %j, %8 ]
  %exitcond = icmp eq i10 %posx_assign, -1
  br i1 %exitcond, label %9, label %5

; <label>:5                                       ; preds = %4
  %posx_assign_cast8 = zext i10 %posx_assign to i12
  %posx_assign_cast = zext i10 %posx_assign to i11
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1022, i64 1022, i64 1022) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str9) nounwind
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %j = add i10 1, %posx_assign
  %tmp_i = zext i10 %j to i64
  %small_input_addr_4 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_i
  %small_input_load_1 = load i8* %small_input_addr_4, align 1
  %res_cast = zext i8 %small_input_load_1 to i9
  %tmp_34_i = add i11 -1023, %posx_assign_cast
  %tmp_35_i = zext i11 %tmp_34_i to i64
  %small_input_addr_5 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_35_i
  %small_input_load_2 = load i8* %small_input_addr_5, align 1
  %tmp_37_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %small_input_load_2, i1 false)
  %tmp_37_i_cast = zext i9 %tmp_37_i to i10
  %tmp_38_i = add i12 -2047, %posx_assign_cast8
  %tmp_39_i = zext i12 %tmp_38_i to i64
  %small_input_addr_6 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_39_i
  %small_input_load_3 = load i8* %small_input_addr_6, align 1
  %tmp_40_i_cast6 = zext i8 %small_input_load_3 to i9
  %tmp_40_i_cast = zext i8 %small_input_load_3 to i11
  %tmp_41_i = add i10 -1, %posx_assign
  %tmp_42_i = zext i10 %tmp_41_i to i64
  %small_input_addr_7 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_42_i
  %small_input_load_4 = load i8* %small_input_addr_7, align 1
  %res_2_cast5 = zext i8 %small_input_load_4 to i9
  %res_2_cast = zext i8 %small_input_load_4 to i11
  %tmp_44_i = add i11 1023, %posx_assign_cast
  %tmp_45_i = zext i11 %tmp_44_i to i64
  %small_input_addr_8 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_45_i
  %small_input_load_5 = load i8* %small_input_addr_8, align 1
  %tmp_47_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %small_input_load_5, i1 false)
  %tmp_47_i_cast = zext i9 %tmp_47_i to i11
  %tmp_48_i = add i12 2047, %posx_assign_cast8
  %tmp_49_i = zext i12 %tmp_48_i to i64
  %small_input_addr_9 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_49_i
  %small_input_load_6 = load i8* %small_input_addr_9, align 1
  %tmp_50_i_cast = zext i8 %small_input_load_6 to i11
  %tmp1 = add i9 %res_cast, %tmp_40_i_cast6
  %tmp1_cast = zext i9 %tmp1 to i10
  %res_7_i = add i10 %tmp1_cast, %tmp_37_i_cast
  %res_7_i_cast = zext i10 %res_7_i to i11
  %res_8_i = sub i11 %res_7_i_cast, %res_2_cast
  %res_9_i = sub i11 %res_8_i, %tmp_47_i_cast
  %res = sub i11 %res_9_i, %tmp_50_i_cast
  %neg = sub i11 0, %res
  %abscond = icmp sgt i11 %res, 0
  %abs = select i1 %abscond, i11 %res, i11 %neg
  %abs_cast4 = sext i11 %abs to i12
  %tmp_18_i = zext i10 %posx_assign to i64
  %small_input_addr_10 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_18_i
  %small_input_load_7 = load i8* %small_input_addr_10, align 1
  %tmp_20_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %small_input_load_7, i1 false)
  %tmp_20_i_cast = zext i9 %tmp_20_i to i10
  %tmp_27_i = call i12 @_ssdm_op_BitConcatenate.i12.i2.i10(i2 -2, i10 %posx_assign)
  %tmp_28_i = zext i12 %tmp_27_i to i64
  %small_input_addr_11 = getelementptr [3072 x i8]* %small_input, i64 0, i64 %tmp_28_i
  %small_input_load_8 = load i8* %small_input_addr_11, align 1
  %tmp_30_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %small_input_load_8, i1 false)
  %tmp_30_i_cast = zext i9 %tmp_30_i to i11
  %tmp2 = add i9 %res_2_cast5, %res_cast
  %tmp2_cast = zext i9 %tmp2 to i10
  %res_2_i = add i10 %tmp2_cast, %tmp_20_i_cast
  %res_2_i_cast = zext i10 %res_2_i to i11
  %res_3_i = sub i11 %res_2_i_cast, %tmp_50_i_cast
  %res_4_i = sub i11 %res_3_i, %tmp_30_i_cast
  %res_1 = sub i11 %res_4_i, %tmp_40_i_cast
  %neg3 = sub i11 0, %res_1
  %abscond4 = icmp sgt i11 %res_1, 0
  %abs5 = select i1 %abscond4, i11 %res_1, i11 %neg3
  %abs5_cast3 = sext i11 %abs5 to i12
  %tmp_11 = trunc i11 %abs to i8
  %tmp_12 = trunc i11 %abs5 to i8
  %p = add i12 %abs_cast4, %abs5_cast3
  %tmp_14 = call i4 @_ssdm_op_PartSelect.i4.i12.i32.i32(i12 %p, i32 8, i32 11)
  %icmp = icmp eq i4 %tmp_14, 0
  br i1 %icmp, label %7, label %6

; <label>:6                                       ; preds = %5
  %tmp_13 = call i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9 %i, i10 %posx_assign)
  %tmp_14_cast = zext i19 %tmp_13 to i33
  %output4_sum7 = add i33 %tmp_14_cast, %tmp_20_cast
  %output4_sum7_cast = sext i33 %output4_sum7 to i64
  %OUTPUT_addr = getelementptr i8* %OUTPUT_r, i64 %output4_sum7_cast
  %OUTPUT_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %OUTPUT_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %OUTPUT_addr, i8 -1, i1 true)
  %OUTPUT_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %OUTPUT_addr)
  br label %8

; <label>:7                                       ; preds = %5
  %tmp_15 = add i8 %tmp_12, %tmp_11
  %tmp_16 = call i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9 %i, i10 %posx_assign)
  %tmp_17_cast = zext i19 %tmp_16 to i33
  %output4_sum = add i33 %tmp_17_cast, %tmp_20_cast
  %output4_sum_cast = sext i33 %output4_sum to i64
  %OUTPUT_addr_1 = getelementptr i8* %OUTPUT_r, i64 %output4_sum_cast
  %OUTPUT_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %OUTPUT_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %OUTPUT_addr_1, i8 %tmp_15, i1 true)
  %OUTPUT_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %OUTPUT_addr_1)
  br label %8

; <label>:8                                       ; preds = %7, %6
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str9, i32 %tmp_10) nounwind
  br label %4

; <label>:9                                       ; preds = %4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str7, i32 %tmp_s) nounwind
  %i_1 = add i9 %i, 1
  br label %burst.rd.end

; <label>:10                                      ; preds = %burst.rd.end
  ret void
}

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_12 = trunc i12 %empty to i4
  ret i4 %empty_12
}

declare i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_13 = zext i1 %1 to i9
  %empty_14 = shl i9 %empty, 1
  %empty_15 = or i9 %empty_14, %empty_13
  ret i9 %empty_15
}

declare i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22, i10) nounwind readnone

define weak i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9, i10) nounwind readnone {
entry:
  %empty = zext i9 %0 to i19
  %empty_16 = zext i10 %1 to i19
  %empty_17 = shl i19 %empty, 10
  %empty_18 = or i19 %empty_17, %empty_16
  ret i19 %empty_18
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i2.i10(i2, i10) nounwind readnone {
entry:
  %empty = zext i2 %0 to i12
  %empty_19 = zext i10 %1 to i12
  %empty_20 = shl i12 %empty, 10
  %empty_21 = or i12 %empty_20, %empty_19
  ret i12 %empty_21
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i1.i11(i1, i11) nounwind readnone {
entry:
  %empty = zext i1 %0 to i12
  %empty_22 = zext i11 %1 to i12
  %empty_23 = shl i12 %empty, 11
  %empty_24 = or i12 %empty_23, %empty_22
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
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 7, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"output", metadata !19, metadata !"unsigned char", i32 0, i32 7}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 264191, i32 1}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 7, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"input", metadata !19, metadata !"unsigned char", i32 0, i32 7}
