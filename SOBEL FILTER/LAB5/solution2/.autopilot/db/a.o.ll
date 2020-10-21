; ModuleID = '/home/inf2015/dchristodoulou/CE435/LAB5/solution2/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus = type opaque

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [6 x i8] c"INPUT\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str7 = private unnamed_addr constant [17 x i8] c"sobel_1_external\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str8 = private unnamed_addr constant [5 x i8] c"move\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str9 = private unnamed_addr constant [17 x i8] c"sobel_1_internal\00", align 1 ; [#uses=1 type=[17 x i8]*]
@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]
@signgam = external global i32                    ; [#uses=0 type=i32*]

; [#uses=1]
define i32 @convolution2D_vertical(i32 %posx, i8* %input) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %2 = alloca i8*, align 8                        ; [#uses=8 type=i8**]
  %res = alloca i32, align 4                      ; [#uses=14 type=i32*]
  store i32 %posx, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !41), !dbg !42 ; [debug line = 16:32] [debug variable = posx]
  store i8* %input, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !43), !dbg !44 ; [debug line = 16:52] [debug variable = input]
  %3 = load i8** %2, align 8, !dbg !45            ; [#uses=1 type=i8*] [debug line = 16:68]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %3, i32 3072) nounwind, !dbg !45 ; [debug line = 16:68]
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !47), !dbg !48 ; [debug line = 18:6] [debug variable = res]
  store i32 0, i32* %res, align 4, !dbg !49       ; [debug line = 20:2]
  %4 = load i32* %1, align 4, !dbg !50            ; [#uses=1 type=i32] [debug line = 21:2]
  %5 = add nsw i32 %4, -1, !dbg !50               ; [#uses=1 type=i32] [debug line = 21:2]
  %6 = sext i32 %5 to i64, !dbg !50               ; [#uses=1 type=i64] [debug line = 21:2]
  %7 = load i8** %2, align 8, !dbg !50            ; [#uses=1 type=i8*] [debug line = 21:2]
  %8 = getelementptr inbounds i8* %7, i64 %6, !dbg !50 ; [#uses=1 type=i8*] [debug line = 21:2]
  %9 = load i8* %8, align 1, !dbg !50             ; [#uses=1 type=i8] [debug line = 21:2]
  %10 = zext i8 %9 to i32, !dbg !50               ; [#uses=1 type=i32] [debug line = 21:2]
  %11 = load i32* %res, align 4, !dbg !50         ; [#uses=1 type=i32] [debug line = 21:2]
  %12 = add nsw i32 %11, %10, !dbg !50            ; [#uses=1 type=i32] [debug line = 21:2]
  store i32 %12, i32* %res, align 4, !dbg !50     ; [debug line = 21:2]
  %13 = load i32* %1, align 4, !dbg !51           ; [#uses=1 type=i32] [debug line = 22:2]
  %14 = sext i32 %13 to i64, !dbg !51             ; [#uses=1 type=i64] [debug line = 22:2]
  %15 = load i8** %2, align 8, !dbg !51           ; [#uses=1 type=i8*] [debug line = 22:2]
  %16 = getelementptr inbounds i8* %15, i64 %14, !dbg !51 ; [#uses=1 type=i8*] [debug line = 22:2]
  %17 = load i8* %16, align 1, !dbg !51           ; [#uses=1 type=i8] [debug line = 22:2]
  %18 = zext i8 %17 to i32, !dbg !51              ; [#uses=1 type=i32] [debug line = 22:2]
  %19 = shl i32 %18, 1, !dbg !51                  ; [#uses=1 type=i32] [debug line = 22:2]
  %20 = load i32* %res, align 4, !dbg !51         ; [#uses=1 type=i32] [debug line = 22:2]
  %21 = add nsw i32 %20, %19, !dbg !51            ; [#uses=1 type=i32] [debug line = 22:2]
  store i32 %21, i32* %res, align 4, !dbg !51     ; [debug line = 22:2]
  %22 = load i32* %1, align 4, !dbg !52           ; [#uses=1 type=i32] [debug line = 23:2]
  %23 = add nsw i32 %22, 1, !dbg !52              ; [#uses=1 type=i32] [debug line = 23:2]
  %24 = sext i32 %23 to i64, !dbg !52             ; [#uses=1 type=i64] [debug line = 23:2]
  %25 = load i8** %2, align 8, !dbg !52           ; [#uses=1 type=i8*] [debug line = 23:2]
  %26 = getelementptr inbounds i8* %25, i64 %24, !dbg !52 ; [#uses=1 type=i8*] [debug line = 23:2]
  %27 = load i8* %26, align 1, !dbg !52           ; [#uses=1 type=i8] [debug line = 23:2]
  %28 = zext i8 %27 to i32, !dbg !52              ; [#uses=1 type=i32] [debug line = 23:2]
  %29 = load i32* %res, align 4, !dbg !52         ; [#uses=1 type=i32] [debug line = 23:2]
  %30 = add nsw i32 %29, %28, !dbg !52            ; [#uses=1 type=i32] [debug line = 23:2]
  store i32 %30, i32* %res, align 4, !dbg !52     ; [debug line = 23:2]
  %31 = load i32* %1, align 4, !dbg !53           ; [#uses=1 type=i32] [debug line = 24:2]
  %32 = add nsw i32 2048, %31, !dbg !53           ; [#uses=1 type=i32] [debug line = 24:2]
  %33 = add nsw i32 %32, -1, !dbg !53             ; [#uses=1 type=i32] [debug line = 24:2]
  %34 = sext i32 %33 to i64, !dbg !53             ; [#uses=1 type=i64] [debug line = 24:2]
  %35 = load i8** %2, align 8, !dbg !53           ; [#uses=1 type=i8*] [debug line = 24:2]
  %36 = getelementptr inbounds i8* %35, i64 %34, !dbg !53 ; [#uses=1 type=i8*] [debug line = 24:2]
  %37 = load i8* %36, align 1, !dbg !53           ; [#uses=1 type=i8] [debug line = 24:2]
  %38 = zext i8 %37 to i32, !dbg !53              ; [#uses=1 type=i32] [debug line = 24:2]
  %39 = load i32* %res, align 4, !dbg !53         ; [#uses=1 type=i32] [debug line = 24:2]
  %40 = sub nsw i32 %39, %38, !dbg !53            ; [#uses=1 type=i32] [debug line = 24:2]
  store i32 %40, i32* %res, align 4, !dbg !53     ; [debug line = 24:2]
  %41 = load i32* %1, align 4, !dbg !54           ; [#uses=1 type=i32] [debug line = 25:2]
  %42 = add nsw i32 2048, %41, !dbg !54           ; [#uses=1 type=i32] [debug line = 25:2]
  %43 = sext i32 %42 to i64, !dbg !54             ; [#uses=1 type=i64] [debug line = 25:2]
  %44 = load i8** %2, align 8, !dbg !54           ; [#uses=1 type=i8*] [debug line = 25:2]
  %45 = getelementptr inbounds i8* %44, i64 %43, !dbg !54 ; [#uses=1 type=i8*] [debug line = 25:2]
  %46 = load i8* %45, align 1, !dbg !54           ; [#uses=1 type=i8] [debug line = 25:2]
  %47 = zext i8 %46 to i32, !dbg !54              ; [#uses=1 type=i32] [debug line = 25:2]
  %48 = shl i32 %47, 1, !dbg !54                  ; [#uses=1 type=i32] [debug line = 25:2]
  %49 = load i32* %res, align 4, !dbg !54         ; [#uses=1 type=i32] [debug line = 25:2]
  %50 = sub nsw i32 %49, %48, !dbg !54            ; [#uses=1 type=i32] [debug line = 25:2]
  store i32 %50, i32* %res, align 4, !dbg !54     ; [debug line = 25:2]
  %51 = load i32* %1, align 4, !dbg !55           ; [#uses=1 type=i32] [debug line = 26:2]
  %52 = add nsw i32 2048, %51, !dbg !55           ; [#uses=1 type=i32] [debug line = 26:2]
  %53 = add nsw i32 %52, 1, !dbg !55              ; [#uses=1 type=i32] [debug line = 26:2]
  %54 = sext i32 %53 to i64, !dbg !55             ; [#uses=1 type=i64] [debug line = 26:2]
  %55 = load i8** %2, align 8, !dbg !55           ; [#uses=1 type=i8*] [debug line = 26:2]
  %56 = getelementptr inbounds i8* %55, i64 %54, !dbg !55 ; [#uses=1 type=i8*] [debug line = 26:2]
  %57 = load i8* %56, align 1, !dbg !55           ; [#uses=1 type=i8] [debug line = 26:2]
  %58 = zext i8 %57 to i32, !dbg !55              ; [#uses=1 type=i32] [debug line = 26:2]
  %59 = load i32* %res, align 4, !dbg !55         ; [#uses=1 type=i32] [debug line = 26:2]
  %60 = sub nsw i32 %59, %58, !dbg !55            ; [#uses=1 type=i32] [debug line = 26:2]
  store i32 %60, i32* %res, align 4, !dbg !55     ; [debug line = 26:2]
  %61 = load i32* %res, align 4, !dbg !56         ; [#uses=1 type=i32] [debug line = 27:2]
  ret i32 %61, !dbg !56                           ; [debug line = 27:2]
}

; [#uses=18]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
define i32 @convolution2D_horizontal(i32 %posx, i8* %input) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %2 = alloca i8*, align 8                        ; [#uses=8 type=i8**]
  %res = alloca i32, align 4                      ; [#uses=14 type=i32*]
  store i32 %posx, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !57), !dbg !58 ; [debug line = 36:34] [debug variable = posx]
  store i8* %input, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !59), !dbg !60 ; [debug line = 36:54] [debug variable = input]
  %3 = load i8** %2, align 8, !dbg !61            ; [#uses=1 type=i8*] [debug line = 36:70]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %3, i32 3072) nounwind, !dbg !61 ; [debug line = 36:70]
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !63), !dbg !64 ; [debug line = 38:6] [debug variable = res]
  store i32 0, i32* %res, align 4, !dbg !65       ; [debug line = 40:2]
  %4 = load i32* %1, align 4, !dbg !66            ; [#uses=1 type=i32] [debug line = 41:2]
  %5 = add nsw i32 %4, 1, !dbg !66                ; [#uses=1 type=i32] [debug line = 41:2]
  %6 = sext i32 %5 to i64, !dbg !66               ; [#uses=1 type=i64] [debug line = 41:2]
  %7 = load i8** %2, align 8, !dbg !66            ; [#uses=1 type=i8*] [debug line = 41:2]
  %8 = getelementptr inbounds i8* %7, i64 %6, !dbg !66 ; [#uses=1 type=i8*] [debug line = 41:2]
  %9 = load i8* %8, align 1, !dbg !66             ; [#uses=1 type=i8] [debug line = 41:2]
  %10 = zext i8 %9 to i32, !dbg !66               ; [#uses=1 type=i32] [debug line = 41:2]
  %11 = load i32* %res, align 4, !dbg !66         ; [#uses=1 type=i32] [debug line = 41:2]
  %12 = add nsw i32 %11, %10, !dbg !66            ; [#uses=1 type=i32] [debug line = 41:2]
  store i32 %12, i32* %res, align 4, !dbg !66     ; [debug line = 41:2]
  %13 = load i32* %1, align 4, !dbg !67           ; [#uses=1 type=i32] [debug line = 42:2]
  %14 = add nsw i32 1024, %13, !dbg !67           ; [#uses=1 type=i32] [debug line = 42:2]
  %15 = add nsw i32 %14, 1, !dbg !67              ; [#uses=1 type=i32] [debug line = 42:2]
  %16 = sext i32 %15 to i64, !dbg !67             ; [#uses=1 type=i64] [debug line = 42:2]
  %17 = load i8** %2, align 8, !dbg !67           ; [#uses=1 type=i8*] [debug line = 42:2]
  %18 = getelementptr inbounds i8* %17, i64 %16, !dbg !67 ; [#uses=1 type=i8*] [debug line = 42:2]
  %19 = load i8* %18, align 1, !dbg !67           ; [#uses=1 type=i8] [debug line = 42:2]
  %20 = zext i8 %19 to i32, !dbg !67              ; [#uses=1 type=i32] [debug line = 42:2]
  %21 = shl i32 %20, 1, !dbg !67                  ; [#uses=1 type=i32] [debug line = 42:2]
  %22 = load i32* %res, align 4, !dbg !67         ; [#uses=1 type=i32] [debug line = 42:2]
  %23 = add nsw i32 %22, %21, !dbg !67            ; [#uses=1 type=i32] [debug line = 42:2]
  store i32 %23, i32* %res, align 4, !dbg !67     ; [debug line = 42:2]
  %24 = load i32* %1, align 4, !dbg !68           ; [#uses=1 type=i32] [debug line = 43:2]
  %25 = add nsw i32 2048, %24, !dbg !68           ; [#uses=1 type=i32] [debug line = 43:2]
  %26 = add nsw i32 %25, 1, !dbg !68              ; [#uses=1 type=i32] [debug line = 43:2]
  %27 = sext i32 %26 to i64, !dbg !68             ; [#uses=1 type=i64] [debug line = 43:2]
  %28 = load i8** %2, align 8, !dbg !68           ; [#uses=1 type=i8*] [debug line = 43:2]
  %29 = getelementptr inbounds i8* %28, i64 %27, !dbg !68 ; [#uses=1 type=i8*] [debug line = 43:2]
  %30 = load i8* %29, align 1, !dbg !68           ; [#uses=1 type=i8] [debug line = 43:2]
  %31 = zext i8 %30 to i32, !dbg !68              ; [#uses=1 type=i32] [debug line = 43:2]
  %32 = load i32* %res, align 4, !dbg !68         ; [#uses=1 type=i32] [debug line = 43:2]
  %33 = add nsw i32 %32, %31, !dbg !68            ; [#uses=1 type=i32] [debug line = 43:2]
  store i32 %33, i32* %res, align 4, !dbg !68     ; [debug line = 43:2]
  %34 = load i32* %1, align 4, !dbg !69           ; [#uses=1 type=i32] [debug line = 44:2]
  %35 = add nsw i32 %34, -1, !dbg !69             ; [#uses=1 type=i32] [debug line = 44:2]
  %36 = sext i32 %35 to i64, !dbg !69             ; [#uses=1 type=i64] [debug line = 44:2]
  %37 = load i8** %2, align 8, !dbg !69           ; [#uses=1 type=i8*] [debug line = 44:2]
  %38 = getelementptr inbounds i8* %37, i64 %36, !dbg !69 ; [#uses=1 type=i8*] [debug line = 44:2]
  %39 = load i8* %38, align 1, !dbg !69           ; [#uses=1 type=i8] [debug line = 44:2]
  %40 = zext i8 %39 to i32, !dbg !69              ; [#uses=1 type=i32] [debug line = 44:2]
  %41 = load i32* %res, align 4, !dbg !69         ; [#uses=1 type=i32] [debug line = 44:2]
  %42 = sub nsw i32 %41, %40, !dbg !69            ; [#uses=1 type=i32] [debug line = 44:2]
  store i32 %42, i32* %res, align 4, !dbg !69     ; [debug line = 44:2]
  %43 = load i32* %1, align 4, !dbg !70           ; [#uses=1 type=i32] [debug line = 45:2]
  %44 = add nsw i32 1024, %43, !dbg !70           ; [#uses=1 type=i32] [debug line = 45:2]
  %45 = add nsw i32 %44, -1, !dbg !70             ; [#uses=1 type=i32] [debug line = 45:2]
  %46 = sext i32 %45 to i64, !dbg !70             ; [#uses=1 type=i64] [debug line = 45:2]
  %47 = load i8** %2, align 8, !dbg !70           ; [#uses=1 type=i8*] [debug line = 45:2]
  %48 = getelementptr inbounds i8* %47, i64 %46, !dbg !70 ; [#uses=1 type=i8*] [debug line = 45:2]
  %49 = load i8* %48, align 1, !dbg !70           ; [#uses=1 type=i8] [debug line = 45:2]
  %50 = zext i8 %49 to i32, !dbg !70              ; [#uses=1 type=i32] [debug line = 45:2]
  %51 = shl i32 %50, 1, !dbg !70                  ; [#uses=1 type=i32] [debug line = 45:2]
  %52 = load i32* %res, align 4, !dbg !70         ; [#uses=1 type=i32] [debug line = 45:2]
  %53 = sub nsw i32 %52, %51, !dbg !70            ; [#uses=1 type=i32] [debug line = 45:2]
  store i32 %53, i32* %res, align 4, !dbg !70     ; [debug line = 45:2]
  %54 = load i32* %1, align 4, !dbg !71           ; [#uses=1 type=i32] [debug line = 46:2]
  %55 = add nsw i32 2048, %54, !dbg !71           ; [#uses=1 type=i32] [debug line = 46:2]
  %56 = add nsw i32 %55, -1, !dbg !71             ; [#uses=1 type=i32] [debug line = 46:2]
  %57 = sext i32 %56 to i64, !dbg !71             ; [#uses=1 type=i64] [debug line = 46:2]
  %58 = load i8** %2, align 8, !dbg !71           ; [#uses=1 type=i8*] [debug line = 46:2]
  %59 = getelementptr inbounds i8* %58, i64 %57, !dbg !71 ; [#uses=1 type=i8*] [debug line = 46:2]
  %60 = load i8* %59, align 1, !dbg !71           ; [#uses=1 type=i8] [debug line = 46:2]
  %61 = zext i8 %60 to i32, !dbg !71              ; [#uses=1 type=i32] [debug line = 46:2]
  %62 = load i32* %res, align 4, !dbg !71         ; [#uses=1 type=i32] [debug line = 46:2]
  %63 = sub nsw i32 %62, %61, !dbg !71            ; [#uses=1 type=i32] [debug line = 46:2]
  store i32 %63, i32* %res, align 4, !dbg !71     ; [debug line = 46:2]
  %64 = load i32* %res, align 4, !dbg !72         ; [#uses=1 type=i32] [debug line = 47:2]
  ret i32 %64, !dbg !72                           ; [debug line = 47:2]
}

; [#uses=0]
define void @sobel_sw_new(i8* %input, i8* %output) nounwind uwtable {
  %1 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %2 = alloca i8*, align 8                        ; [#uses=5 type=i8**]
  %t = alloca double, align 8                     ; [#uses=0 type=double*]
  %i = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=8 type=i32*]
  %k = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %p = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %x = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %y = alloca i32, align 4                        ; [#uses=0 type=i32*]
  %res = alloca i32, align 4                      ; [#uses=0 type=i32*]
  %small_input = alloca [3072 x i8], align 16     ; [#uses=6 type=[3072 x i8]*]
  %position = alloca i32, align 4                 ; [#uses=6 type=i32*]
  store i8* %input, i8** %1, align 8
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !73), !dbg !74 ; [debug line = 55:33] [debug variable = input]
  store i8* %output, i8** %2, align 8
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !75), !dbg !76 ; [debug line = 55:63] [debug variable = output]
  %3 = load i8** %2, align 8, !dbg !77            ; [#uses=1 type=i8*] [debug line = 56:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %3, i32 264192) nounwind, !dbg !77 ; [debug line = 56:2]
  %4 = load i8** %1, align 8, !dbg !79            ; [#uses=1 type=i8*] [debug line = 56:42]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 264192) nounwind, !dbg !79 ; [debug line = 56:42]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !80 ; [debug line = 57:1]
  %5 = load i8** %1, align 8, !dbg !81            ; [#uses=1 type=i8*] [debug line = 58:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %5, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 133120, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 58:1]
  %6 = load i8** %2, align 8, !dbg !82            ; [#uses=1 type=i8*] [debug line = 59:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %6, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 133120, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 59:1]
  call void @llvm.dbg.declare(metadata !{double* %t}, metadata !83), !dbg !85 ; [debug line = 61:9] [debug variable = t]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !86), !dbg !87 ; [debug line = 62:6] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !88), !dbg !89 ; [debug line = 62:9] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !90), !dbg !91 ; [debug line = 62:12] [debug variable = k]
  call void @llvm.dbg.declare(metadata !{i32* %p}, metadata !92), !dbg !94 ; [debug line = 63:15] [debug variable = p]
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !95), !dbg !96 ; [debug line = 63:17] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{i32* %y}, metadata !97), !dbg !98 ; [debug line = 63:19] [debug variable = y]
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !99), !dbg !100 ; [debug line = 64:6] [debug variable = res]
  call void @llvm.dbg.declare(metadata !{[3072 x i8]* %small_input}, metadata !101), !dbg !105 ; [debug line = 65:16] [debug variable = small_input]
  call void @llvm.dbg.declare(metadata !{i32* %position}, metadata !106), !dbg !107 ; [debug line = 66:6] [debug variable = position]
  store i32 0, i32* %position, align 4, !dbg !108 ; [debug line = 66:18]
  %7 = getelementptr inbounds [3072 x i8]* %small_input, i32 0, i32 0, !dbg !109 ; [#uses=1 type=i8*] [debug line = 72:2]
  %8 = load i8** %1, align 8, !dbg !109           ; [#uses=1 type=i8*] [debug line = 72:2]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 3072, i32 1, i1 false), !dbg !109 ; [debug line = 72:2]
  %9 = load i32* %position, align 4, !dbg !110    ; [#uses=1 type=i32] [debug line = 73:2]
  %10 = add nsw i32 %9, 3, !dbg !110              ; [#uses=1 type=i32] [debug line = 73:2]
  store i32 %10, i32* %position, align 4, !dbg !110 ; [debug line = 73:2]
  br label %11, !dbg !110                         ; [debug line = 73:2]

; <label>:11                                      ; preds = %0
  store i32 1, i32* %i, align 4, !dbg !111        ; [debug line = 74:24]
  br label %12, !dbg !111                         ; [debug line = 74:24]

; <label>:12                                      ; preds = %85, %11
  %13 = load i32* %i, align 4, !dbg !111          ; [#uses=1 type=i32] [debug line = 74:24]
  %14 = icmp slt i32 %13, 257, !dbg !111          ; [#uses=1 type=i1] [debug line = 74:24]
  br i1 %14, label %15, label %88, !dbg !111      ; [debug line = 74:24]

; <label>:15                                      ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !113 ; [debug line = 74:44]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !113 ; [debug line = 74:44]
  %16 = load i32* %i, align 4, !dbg !115          ; [#uses=1 type=i32] [debug line = 75:3]
  %17 = icmp ne i32 %16, 1, !dbg !115             ; [#uses=1 type=i1] [debug line = 75:3]
  br i1 %17, label %18, label %45, !dbg !115      ; [debug line = 75:3]

; <label>:18                                      ; preds = %15
  br label %19, !dbg !116                         ; [debug line = 75:11]

; <label>:19                                      ; preds = %18
  store i32 0, i32* %k, align 4, !dbg !118        ; [debug line = 76:13]
  br label %20, !dbg !118                         ; [debug line = 76:13]

; <label>:20                                      ; preds = %32, %19
  %21 = load i32* %k, align 4, !dbg !118          ; [#uses=1 type=i32] [debug line = 76:13]
  %22 = icmp slt i32 %21, 2048, !dbg !118         ; [#uses=1 type=i1] [debug line = 76:13]
  br i1 %22, label %23, label %35, !dbg !118      ; [debug line = 76:13]

; <label>:23                                      ; preds = %20
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !120 ; [debug line = 76:35]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !120 ; [debug line = 76:35]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !122 ; [debug line = 77:1]
  %24 = load i32* %k, align 4, !dbg !123          ; [#uses=1 type=i32] [debug line = 77:5]
  %25 = add nsw i32 %24, 1024, !dbg !123          ; [#uses=1 type=i32] [debug line = 77:5]
  %26 = sext i32 %25 to i64, !dbg !123            ; [#uses=1 type=i64] [debug line = 77:5]
  %27 = getelementptr inbounds [3072 x i8]* %small_input, i32 0, i64 %26, !dbg !123 ; [#uses=1 type=i8*] [debug line = 77:5]
  %28 = load i8* %27, align 1, !dbg !123          ; [#uses=1 type=i8] [debug line = 77:5]
  %29 = load i32* %k, align 4, !dbg !123          ; [#uses=1 type=i32] [debug line = 77:5]
  %30 = sext i32 %29 to i64, !dbg !123            ; [#uses=1 type=i64] [debug line = 77:5]
  %31 = getelementptr inbounds [3072 x i8]* %small_input, i32 0, i64 %30, !dbg !123 ; [#uses=1 type=i8*] [debug line = 77:5]
  store i8 %28, i8* %31, align 1, !dbg !123       ; [debug line = 77:5]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !124 ; [debug line = 78:4]
  br label %32, !dbg !124                         ; [debug line = 78:4]

; <label>:32                                      ; preds = %23
  %33 = load i32* %k, align 4, !dbg !125          ; [#uses=1 type=i32] [debug line = 76:30]
  %34 = add nsw i32 %33, 1, !dbg !125             ; [#uses=1 type=i32] [debug line = 76:30]
  store i32 %34, i32* %k, align 4, !dbg !125      ; [debug line = 76:30]
  br label %20, !dbg !125                         ; [debug line = 76:30]

; <label>:35                                      ; preds = %20
  %36 = getelementptr inbounds [3072 x i8]* %small_input, i32 0, i32 0, !dbg !126 ; [#uses=1 type=i8*] [debug line = 79:4]
  %37 = getelementptr inbounds i8* %36, i64 2048, !dbg !126 ; [#uses=1 type=i8*] [debug line = 79:4]
  %38 = load i8** %1, align 8, !dbg !126          ; [#uses=1 type=i8*] [debug line = 79:4]
  %39 = load i32* %position, align 4, !dbg !126   ; [#uses=1 type=i32] [debug line = 79:4]
  %40 = mul nsw i32 1024, %39, !dbg !126          ; [#uses=1 type=i32] [debug line = 79:4]
  %41 = sext i32 %40 to i64, !dbg !126            ; [#uses=1 type=i64] [debug line = 79:4]
  %42 = getelementptr inbounds i8* %38, i64 %41, !dbg !126 ; [#uses=1 type=i8*] [debug line = 79:4]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %42, i64 1024, i32 1, i1 false), !dbg !126 ; [debug line = 79:4]
  %43 = load i32* %position, align 4, !dbg !127   ; [#uses=1 type=i32] [debug line = 80:4]
  %44 = add nsw i32 %43, 1, !dbg !127             ; [#uses=1 type=i32] [debug line = 80:4]
  store i32 %44, i32* %position, align 4, !dbg !127 ; [debug line = 80:4]
  br label %45, !dbg !128                         ; [debug line = 81:3]

; <label>:45                                      ; preds = %35, %15
  br label %46, !dbg !128                         ; [debug line = 81:3]

; <label>:46                                      ; preds = %45
  store i32 1, i32* %j, align 4, !dbg !129        ; [debug line = 82:25]
  br label %47, !dbg !129                         ; [debug line = 82:25]

; <label>:47                                      ; preds = %81, %46
  %48 = load i32* %j, align 4, !dbg !129          ; [#uses=1 type=i32] [debug line = 82:25]
  %49 = icmp slt i32 %48, 1023, !dbg !129         ; [#uses=1 type=i1] [debug line = 82:25]
  br i1 %49, label %50, label %84, !dbg !129      ; [debug line = 82:25]

; <label>:50                                      ; preds = %47
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !131 ; [debug line = 82:48]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !131 ; [debug line = 82:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !133 ; [debug line = 83:1]
  %51 = load i32* %j, align 4, !dbg !134          ; [#uses=1 type=i32] [debug line = 85:13]
  %52 = getelementptr inbounds [3072 x i8]* %small_input, i32 0, i32 0, !dbg !134 ; [#uses=1 type=i8*] [debug line = 85:13]
  %53 = call i32 @convolution2D_horizontal(i32 %51, i8* %52), !dbg !134 ; [#uses=1 type=i32] [debug line = 85:13]
  %54 = call i32 (...)* @abs(i32 %53), !dbg !134  ; [#uses=1 type=i32] [debug line = 85:13]
  %55 = load i32* %j, align 4, !dbg !135          ; [#uses=1 type=i32] [debug line = 85:63]
  %56 = getelementptr inbounds [3072 x i8]* %small_input, i32 0, i32 0, !dbg !135 ; [#uses=1 type=i8*] [debug line = 85:63]
  %57 = call i32 @convolution2D_vertical(i32 %55, i8* %56), !dbg !135 ; [#uses=1 type=i32] [debug line = 85:63]
  %58 = call i32 (...)* @abs(i32 %57), !dbg !135  ; [#uses=1 type=i32] [debug line = 85:63]
  %59 = add nsw i32 %54, %58, !dbg !135           ; [#uses=1 type=i32] [debug line = 85:63]
  store i32 %59, i32* %p, align 4, !dbg !135      ; [debug line = 85:63]
  %60 = load i32* %p, align 4, !dbg !136          ; [#uses=1 type=i32] [debug line = 86:4]
  %61 = icmp ugt i32 %60, 255, !dbg !136          ; [#uses=1 type=i1] [debug line = 86:4]
  br i1 %61, label %62, label %70, !dbg !136      ; [debug line = 86:4]

; <label>:62                                      ; preds = %50
  %63 = load i32* %i, align 4, !dbg !137          ; [#uses=1 type=i32] [debug line = 87:5]
  %64 = shl i32 %63, 10, !dbg !137                ; [#uses=1 type=i32] [debug line = 87:5]
  %65 = load i32* %j, align 4, !dbg !137          ; [#uses=1 type=i32] [debug line = 87:5]
  %66 = add nsw i32 %64, %65, !dbg !137           ; [#uses=1 type=i32] [debug line = 87:5]
  %67 = sext i32 %66 to i64, !dbg !137            ; [#uses=1 type=i64] [debug line = 87:5]
  %68 = load i8** %2, align 8, !dbg !137          ; [#uses=1 type=i8*] [debug line = 87:5]
  %69 = getelementptr inbounds i8* %68, i64 %67, !dbg !137 ; [#uses=1 type=i8*] [debug line = 87:5]
  store i8 -1, i8* %69, align 1, !dbg !137        ; [debug line = 87:5]
  br label %80, !dbg !139                         ; [debug line = 88:4]

; <label>:70                                      ; preds = %50
  %71 = load i32* %p, align 4, !dbg !140          ; [#uses=1 type=i32] [debug line = 90:5]
  %72 = trunc i32 %71 to i8, !dbg !140            ; [#uses=1 type=i8] [debug line = 90:5]
  %73 = load i32* %i, align 4, !dbg !140          ; [#uses=1 type=i32] [debug line = 90:5]
  %74 = shl i32 %73, 10, !dbg !140                ; [#uses=1 type=i32] [debug line = 90:5]
  %75 = load i32* %j, align 4, !dbg !140          ; [#uses=1 type=i32] [debug line = 90:5]
  %76 = add nsw i32 %74, %75, !dbg !140           ; [#uses=1 type=i32] [debug line = 90:5]
  %77 = sext i32 %76 to i64, !dbg !140            ; [#uses=1 type=i64] [debug line = 90:5]
  %78 = load i8** %2, align 8, !dbg !140          ; [#uses=1 type=i8*] [debug line = 90:5]
  %79 = getelementptr inbounds i8* %78, i64 %77, !dbg !140 ; [#uses=1 type=i8*] [debug line = 90:5]
  store i8 %72, i8* %79, align 1, !dbg !140       ; [debug line = 90:5]
  br label %80

; <label>:80                                      ; preds = %70, %62
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !142 ; [debug line = 92:3]
  br label %81, !dbg !142                         ; [debug line = 92:3]

; <label>:81                                      ; preds = %80
  %82 = load i32* %j, align 4, !dbg !143          ; [#uses=1 type=i32] [debug line = 82:41]
  %83 = add nsw i32 %82, 1, !dbg !143             ; [#uses=1 type=i32] [debug line = 82:41]
  store i32 %83, i32* %j, align 4, !dbg !143      ; [debug line = 82:41]
  br label %47, !dbg !143                         ; [debug line = 82:41]

; <label>:84                                      ; preds = %47
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !144 ; [debug line = 93:2]
  br label %85, !dbg !144                         ; [debug line = 93:2]

; <label>:85                                      ; preds = %84
  %86 = load i32* %i, align 4, !dbg !145          ; [#uses=1 type=i32] [debug line = 74:36]
  %87 = add nsw i32 %86, 1, !dbg !145             ; [#uses=1 type=i32] [debug line = 74:36]
  store i32 %87, i32* %i, align 4, !dbg !145      ; [debug line = 74:36]
  br label %12, !dbg !145                         ; [debug line = 74:36]

; <label>:88                                      ; preds = %12
  ret void, !dbg !146                             ; [debug line = 94:1]
}

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=2]
declare i32 @abs(...)

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
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !21, i32 320, metadata !22, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/inf2015/dchristodoulou/CE435", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !21, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !21, i32 321, metadata !22, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !21, i32 322, metadata !22, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !26, i32 26, metadata !9, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/inf2015/dchristodoulou/CE435", null} ; [ DW_TAG_file_type ]
!27 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !28, i32 162, metadata !9, i32 0, i32 1, i32* @signgam} ; [ DW_TAG_variable ]
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
!41 = metadata !{i32 786689, metadata !5, metadata !"posx", metadata !6, i32 16777232, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 16, i32 32, metadata !5, null}
!43 = metadata !{i32 786689, metadata !5, metadata !"input", metadata !6, i32 33554448, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 16, i32 52, metadata !5, null}
!45 = metadata !{i32 16, i32 68, metadata !46, null}
!46 = metadata !{i32 786443, metadata !5, i32 16, i32 67, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786688, metadata !46, metadata !"res", metadata !6, i32 18, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 18, i32 6, metadata !46, null}
!49 = metadata !{i32 20, i32 2, metadata !46, null}
!50 = metadata !{i32 21, i32 2, metadata !46, null}
!51 = metadata !{i32 22, i32 2, metadata !46, null}
!52 = metadata !{i32 23, i32 2, metadata !46, null}
!53 = metadata !{i32 24, i32 2, metadata !46, null}
!54 = metadata !{i32 25, i32 2, metadata !46, null}
!55 = metadata !{i32 26, i32 2, metadata !46, null}
!56 = metadata !{i32 27, i32 2, metadata !46, null}
!57 = metadata !{i32 786689, metadata !14, metadata !"posx", metadata !6, i32 16777252, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 36, i32 34, metadata !14, null}
!59 = metadata !{i32 786689, metadata !14, metadata !"input", metadata !6, i32 33554468, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 36, i32 54, metadata !14, null}
!61 = metadata !{i32 36, i32 70, metadata !62, null}
!62 = metadata !{i32 786443, metadata !14, i32 36, i32 69, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786688, metadata !62, metadata !"res", metadata !6, i32 38, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 38, i32 6, metadata !62, null}
!65 = metadata !{i32 40, i32 2, metadata !62, null}
!66 = metadata !{i32 41, i32 2, metadata !62, null}
!67 = metadata !{i32 42, i32 2, metadata !62, null}
!68 = metadata !{i32 43, i32 2, metadata !62, null}
!69 = metadata !{i32 44, i32 2, metadata !62, null}
!70 = metadata !{i32 45, i32 2, metadata !62, null}
!71 = metadata !{i32 46, i32 2, metadata !62, null}
!72 = metadata !{i32 47, i32 2, metadata !62, null}
!73 = metadata !{i32 786689, metadata !15, metadata !"input", metadata !6, i32 16777271, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 55, i32 33, metadata !15, null}
!75 = metadata !{i32 786689, metadata !15, metadata !"output", metadata !6, i32 33554487, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 55, i32 63, metadata !15, null}
!77 = metadata !{i32 56, i32 2, metadata !78, null}
!78 = metadata !{i32 786443, metadata !15, i32 56, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 56, i32 42, metadata !78, null}
!80 = metadata !{i32 57, i32 1, metadata !78, null}
!81 = metadata !{i32 58, i32 1, metadata !78, null}
!82 = metadata !{i32 59, i32 1, metadata !78, null}
!83 = metadata !{i32 786688, metadata !78, metadata !"t", metadata !6, i32 61, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!85 = metadata !{i32 61, i32 9, metadata !78, null}
!86 = metadata !{i32 786688, metadata !78, metadata !"i", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 62, i32 6, metadata !78, null}
!88 = metadata !{i32 786688, metadata !78, metadata !"j", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 62, i32 9, metadata !78, null}
!90 = metadata !{i32 786688, metadata !78, metadata !"k", metadata !6, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 62, i32 12, metadata !78, null}
!92 = metadata !{i32 786688, metadata !78, metadata !"p", metadata !6, i32 63, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 63, i32 15, metadata !78, null}
!95 = metadata !{i32 786688, metadata !78, metadata !"x", metadata !6, i32 63, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 63, i32 17, metadata !78, null}
!97 = metadata !{i32 786688, metadata !78, metadata !"y", metadata !6, i32 63, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 63, i32 19, metadata !78, null}
!99 = metadata !{i32 786688, metadata !78, metadata !"res", metadata !6, i32 64, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 64, i32 6, metadata !78, null}
!101 = metadata !{i32 786688, metadata !78, metadata !"small_input", metadata !6, i32 65, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24576, i64 8, i32 0, i32 0, metadata !11, metadata !103, i32 0, i32 0} ; [ DW_TAG_array_type ]
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786465, i64 0, i64 3071}    ; [ DW_TAG_subrange_type ]
!105 = metadata !{i32 65, i32 16, metadata !78, null}
!106 = metadata !{i32 786688, metadata !78, metadata !"position", metadata !6, i32 66, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 66, i32 6, metadata !78, null}
!108 = metadata !{i32 66, i32 18, metadata !78, null}
!109 = metadata !{i32 72, i32 2, metadata !78, null}
!110 = metadata !{i32 73, i32 2, metadata !78, null}
!111 = metadata !{i32 74, i32 24, metadata !112, null}
!112 = metadata !{i32 786443, metadata !78, i32 74, i32 19, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 74, i32 44, metadata !114, null}
!114 = metadata !{i32 786443, metadata !112, i32 74, i32 43, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 75, i32 3, metadata !114, null}
!116 = metadata !{i32 75, i32 11, metadata !117, null}
!117 = metadata !{i32 786443, metadata !114, i32 75, i32 11, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 76, i32 13, metadata !119, null}
!119 = metadata !{i32 786443, metadata !117, i32 76, i32 9, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 76, i32 35, metadata !121, null}
!121 = metadata !{i32 786443, metadata !119, i32 76, i32 34, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 77, i32 1, metadata !121, null}
!123 = metadata !{i32 77, i32 5, metadata !121, null}
!124 = metadata !{i32 78, i32 4, metadata !121, null}
!125 = metadata !{i32 76, i32 30, metadata !119, null}
!126 = metadata !{i32 79, i32 4, metadata !117, null}
!127 = metadata !{i32 80, i32 4, metadata !117, null}
!128 = metadata !{i32 81, i32 3, metadata !117, null}
!129 = metadata !{i32 82, i32 25, metadata !130, null}
!130 = metadata !{i32 786443, metadata !114, i32 82, i32 20, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 82, i32 48, metadata !132, null}
!132 = metadata !{i32 786443, metadata !130, i32 82, i32 47, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 83, i32 1, metadata !132, null}
!134 = metadata !{i32 85, i32 13, metadata !132, null}
!135 = metadata !{i32 85, i32 63, metadata !132, null}
!136 = metadata !{i32 86, i32 4, metadata !132, null}
!137 = metadata !{i32 87, i32 5, metadata !138, null}
!138 = metadata !{i32 786443, metadata !132, i32 86, i32 14, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 88, i32 4, metadata !138, null}
!140 = metadata !{i32 90, i32 5, metadata !141, null}
!141 = metadata !{i32 786443, metadata !132, i32 89, i32 8, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 92, i32 3, metadata !132, null}
!143 = metadata !{i32 82, i32 41, metadata !130, null}
!144 = metadata !{i32 93, i32 2, metadata !114, null}
!145 = metadata !{i32 74, i32 36, metadata !112, null}
!146 = metadata !{i32 94, i32 1, metadata !78, null}
