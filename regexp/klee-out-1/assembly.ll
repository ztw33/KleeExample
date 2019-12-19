; ModuleID = 'Regexp.bc'
source_filename = "Regexp.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @match(i8*, i8*) #0 !dbg !8 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !14, metadata !DIExpression()), !dbg !15
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !16, metadata !DIExpression()), !dbg !17
  %6 = load i8*, i8** %4, align 8, !dbg !18
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !18
  %8 = load i8, i8* %7, align 1, !dbg !18
  %9 = sext i8 %8 to i32, !dbg !18
  %10 = icmp eq i32 %9, 94, !dbg !20
  br i1 %10, label %11, label %16, !dbg !21

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !22
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !23
  %14 = load i8*, i8** %5, align 8, !dbg !24
  %15 = call i32 @matchhere(i8* %13, i8* %14), !dbg !25
  store i32 %15, i32* %3, align 4, !dbg !26
  br label %30, !dbg !26

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !27, !llvm.loop !28

; <label>:17:                                     ; preds = %23, %16
  %18 = load i8*, i8** %4, align 8, !dbg !30
  %19 = load i8*, i8** %5, align 8, !dbg !33
  %20 = call i32 @matchhere(i8* %18, i8* %19), !dbg !34
  %21 = icmp ne i32 %20, 0, !dbg !34
  br i1 %21, label %22, label %23, !dbg !35

; <label>:22:                                     ; preds = %17
  store i32 1, i32* %3, align 4, !dbg !36
  br label %30, !dbg !36

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %5, align 8, !dbg !37
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !37
  store i8* %25, i8** %5, align 8, !dbg !37
  %26 = load i8, i8* %24, align 1, !dbg !38
  %27 = sext i8 %26 to i32, !dbg !38
  %28 = icmp ne i32 %27, 0, !dbg !39
  br i1 %28, label %17, label %29, !dbg !40, !llvm.loop !28

; <label>:29:                                     ; preds = %23
  store i32 0, i32* %3, align 4, !dbg !41
  br label %30, !dbg !41

; <label>:30:                                     ; preds = %29, %22, %11
  %31 = load i32, i32* %3, align 4, !dbg !42
  ret i32 %31, !dbg !42
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @matchhere(i8*, i8*) #0 !dbg !43 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !44, metadata !DIExpression()), !dbg !45
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !46, metadata !DIExpression()), !dbg !47
  %6 = load i8*, i8** %4, align 8, !dbg !48
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !48
  %8 = load i8, i8* %7, align 1, !dbg !48
  %9 = sext i8 %8 to i32, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !50
  br i1 %10, label %11, label %12, !dbg !51

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !52
  br label %68, !dbg !52

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !53
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !53
  %15 = load i8, i8* %14, align 1, !dbg !53
  %16 = sext i8 %15 to i32, !dbg !53
  %17 = icmp eq i32 %16, 42, !dbg !55
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  br i1 %17, label %22, label %27, !dbg !56

; <label>:22:                                     ; preds = %12
  %23 = load i8*, i8** %4, align 8, !dbg !57
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !58
  %25 = load i8*, i8** %5, align 8, !dbg !59
  %26 = call i32 @matchstar(i32 %21, i8* %24, i8* %25), !dbg !60
  store i32 %26, i32* %3, align 4, !dbg !61
  br label %68, !dbg !61

; <label>:27:                                     ; preds = %12
  %28 = icmp eq i32 %21, 36, !dbg !62
  br i1 %28, label %29, label %41, !dbg !64

; <label>:29:                                     ; preds = %27
  %30 = load i8*, i8** %4, align 8, !dbg !65
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !65
  %32 = load i8, i8* %31, align 1, !dbg !65
  %33 = sext i8 %32 to i32, !dbg !65
  %34 = icmp eq i32 %33, 0, !dbg !66
  br i1 %34, label %35, label %41, !dbg !67

; <label>:35:                                     ; preds = %29
  %36 = load i8*, i8** %5, align 8, !dbg !68
  %37 = load i8, i8* %36, align 1, !dbg !69
  %38 = sext i8 %37 to i32, !dbg !69
  %39 = icmp eq i32 %38, 0, !dbg !70
  %40 = zext i1 %39 to i32, !dbg !70
  store i32 %40, i32* %3, align 4, !dbg !71
  br label %68, !dbg !71

; <label>:41:                                     ; preds = %29, %27
  %42 = load i8*, i8** %5, align 8, !dbg !72
  %43 = load i8, i8* %42, align 1, !dbg !74
  %44 = sext i8 %43 to i32, !dbg !74
  %45 = icmp ne i32 %44, 0, !dbg !75
  br i1 %45, label %46, label %67, !dbg !76

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %4, align 8, !dbg !77
  %48 = getelementptr inbounds i8, i8* %47, i64 0, !dbg !77
  %49 = load i8, i8* %48, align 1, !dbg !77
  %50 = sext i8 %49 to i32, !dbg !77
  %51 = icmp eq i32 %50, 46, !dbg !78
  br i1 %51, label %61, label %52, !dbg !79

; <label>:52:                                     ; preds = %46
  %53 = load i8*, i8** %4, align 8, !dbg !80
  %54 = getelementptr inbounds i8, i8* %53, i64 0, !dbg !80
  %55 = load i8, i8* %54, align 1, !dbg !80
  %56 = sext i8 %55 to i32, !dbg !80
  %57 = load i8*, i8** %5, align 8, !dbg !81
  %58 = load i8, i8* %57, align 1, !dbg !82
  %59 = sext i8 %58 to i32, !dbg !82
  %60 = icmp eq i32 %56, %59, !dbg !83
  br i1 %60, label %61, label %67, !dbg !84

; <label>:61:                                     ; preds = %52, %46
  %62 = load i8*, i8** %4, align 8, !dbg !85
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !86
  %64 = load i8*, i8** %5, align 8, !dbg !87
  %65 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !88
  %66 = call i32 @matchhere(i8* %63, i8* %65), !dbg !89
  store i32 %66, i32* %3, align 4, !dbg !90
  br label %68, !dbg !90

; <label>:67:                                     ; preds = %52, %41
  store i32 0, i32* %3, align 4, !dbg !91
  br label %68, !dbg !91

; <label>:68:                                     ; preds = %67, %61, %35, %22, %11
  %69 = load i32, i32* %3, align 4, !dbg !92
  ret i32 %69, !dbg !92
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !93 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [7 x i8]* %2, metadata !96, metadata !DIExpression()), !dbg !100
  %3 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 0, !dbg !101
  call void @klee_make_symbolic(i8* %3, i64 7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)), !dbg !102
  %4 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i32 0, i32 0, !dbg !103
  %5 = call i32 @match(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)), !dbg !104
  ret i32 0, !dbg !105
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @matchstar(i32, i8*, i8*) #0 !dbg !106 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !109, metadata !DIExpression()), !dbg !110
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !111, metadata !DIExpression()), !dbg !112
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !113, metadata !DIExpression()), !dbg !114
  br label %8, !dbg !115, !llvm.loop !116

; <label>:8:                                      ; preds = %19, %3
  %9 = load i8*, i8** %6, align 8, !dbg !118
  %10 = load i8*, i8** %7, align 8, !dbg !121
  %11 = call i32 @matchhere(i8* %9, i8* %10), !dbg !122
  %12 = icmp ne i32 %11, 0, !dbg !122
  br i1 %12, label %13, label %14, !dbg !123

; <label>:13:                                     ; preds = %8
  store i32 1, i32* %4, align 4, !dbg !124
  br label %29, !dbg !124

; <label>:14:                                     ; preds = %8
  %15 = load i8*, i8** %7, align 8, !dbg !125
  %16 = load i8, i8* %15, align 1, !dbg !126
  %17 = sext i8 %16 to i32, !dbg !126
  %18 = icmp ne i32 %17, 0, !dbg !127
  br i1 %18, label %19, label %.critedge, !dbg !128

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %7, align 8, !dbg !129
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !129
  store i8* %21, i8** %7, align 8, !dbg !129
  %22 = load i8, i8* %20, align 1, !dbg !130
  %23 = sext i8 %22 to i32, !dbg !130
  %24 = load i32, i32* %5, align 4, !dbg !131
  %25 = icmp eq i32 %23, %24, !dbg !132
  %26 = load i32, i32* %5, align 4, !dbg !133
  %27 = icmp eq i32 %26, 46, !dbg !134
  %28 = select i1 %25, i1 true, i1 %27, !dbg !135
  br i1 %28, label %8, label %.critedge, !dbg !136, !llvm.loop !116

.critedge:                                        ; preds = %14, %19
  store i32 0, i32* %4, align 4, !dbg !137
  br label %29, !dbg !137

; <label>:29:                                     ; preds = %.critedge, %13
  %30 = load i32, i32* %4, align 4, !dbg !138
  ret i32 %30, !dbg !138
}

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "Regexp.c", directory: "/Users/zhutingwei/KleeExample/regexp")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!8 = distinct !DISubprogram(name: "match", scope: !1, file: !1, line: 34, type: !9, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "re", arg: 1, scope: !8, file: !1, line: 34, type: !12)
!15 = !DILocation(line: 34, column: 17, scope: !8)
!16 = !DILocalVariable(name: "text", arg: 2, scope: !8, file: !1, line: 34, type: !12)
!17 = !DILocation(line: 34, column: 27, scope: !8)
!18 = !DILocation(line: 35, column: 7, scope: !19)
!19 = distinct !DILexicalBlock(scope: !8, file: !1, line: 35, column: 7)
!20 = !DILocation(line: 35, column: 13, scope: !19)
!21 = !DILocation(line: 35, column: 7, scope: !8)
!22 = !DILocation(line: 36, column: 22, scope: !19)
!23 = !DILocation(line: 36, column: 24, scope: !19)
!24 = !DILocation(line: 36, column: 28, scope: !19)
!25 = !DILocation(line: 36, column: 12, scope: !19)
!26 = !DILocation(line: 36, column: 5, scope: !19)
!27 = !DILocation(line: 37, column: 3, scope: !8)
!28 = distinct !{!28, !27, !29}
!29 = !DILocation(line: 40, column: 27, scope: !8)
!30 = !DILocation(line: 38, column: 19, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 38, column: 9)
!32 = distinct !DILexicalBlock(scope: !8, file: !1, line: 37, column: 6)
!33 = !DILocation(line: 38, column: 23, scope: !31)
!34 = !DILocation(line: 38, column: 9, scope: !31)
!35 = !DILocation(line: 38, column: 9, scope: !32)
!36 = !DILocation(line: 39, column: 7, scope: !31)
!37 = !DILocation(line: 40, column: 17, scope: !8)
!38 = !DILocation(line: 40, column: 12, scope: !8)
!39 = !DILocation(line: 40, column: 20, scope: !8)
!40 = !DILocation(line: 40, column: 3, scope: !32)
!41 = !DILocation(line: 41, column: 3, scope: !8)
!42 = !DILocation(line: 42, column: 1, scope: !8)
!43 = distinct !DISubprogram(name: "matchhere", scope: !1, file: !1, line: 22, type: !9, isLocal: true, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!44 = !DILocalVariable(name: "re", arg: 1, scope: !43, file: !1, line: 22, type: !12)
!45 = !DILocation(line: 22, column: 28, scope: !43)
!46 = !DILocalVariable(name: "text", arg: 2, scope: !43, file: !1, line: 22, type: !12)
!47 = !DILocation(line: 22, column: 38, scope: !43)
!48 = !DILocation(line: 23, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 23, column: 7)
!50 = !DILocation(line: 23, column: 13, scope: !49)
!51 = !DILocation(line: 23, column: 7, scope: !43)
!52 = !DILocation(line: 24, column: 6, scope: !49)
!53 = !DILocation(line: 25, column: 7, scope: !54)
!54 = distinct !DILexicalBlock(scope: !43, file: !1, line: 25, column: 7)
!55 = !DILocation(line: 25, column: 13, scope: !54)
!56 = !DILocation(line: 25, column: 7, scope: !43)
!57 = !DILocation(line: 26, column: 29, scope: !54)
!58 = !DILocation(line: 26, column: 31, scope: !54)
!59 = !DILocation(line: 26, column: 35, scope: !54)
!60 = !DILocation(line: 26, column: 12, scope: !54)
!61 = !DILocation(line: 26, column: 5, scope: !54)
!62 = !DILocation(line: 27, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !43, file: !1, line: 27, column: 7)
!64 = !DILocation(line: 27, column: 20, scope: !63)
!65 = !DILocation(line: 27, column: 23, scope: !63)
!66 = !DILocation(line: 27, column: 28, scope: !63)
!67 = !DILocation(line: 27, column: 7, scope: !43)
!68 = !DILocation(line: 28, column: 13, scope: !63)
!69 = !DILocation(line: 28, column: 12, scope: !63)
!70 = !DILocation(line: 28, column: 18, scope: !63)
!71 = !DILocation(line: 28, column: 5, scope: !63)
!72 = !DILocation(line: 29, column: 8, scope: !73)
!73 = distinct !DILexicalBlock(scope: !43, file: !1, line: 29, column: 7)
!74 = !DILocation(line: 29, column: 7, scope: !73)
!75 = !DILocation(line: 29, column: 12, scope: !73)
!76 = !DILocation(line: 29, column: 19, scope: !73)
!77 = !DILocation(line: 29, column: 23, scope: !73)
!78 = !DILocation(line: 29, column: 28, scope: !73)
!79 = !DILocation(line: 29, column: 34, scope: !73)
!80 = !DILocation(line: 29, column: 37, scope: !73)
!81 = !DILocation(line: 29, column: 45, scope: !73)
!82 = !DILocation(line: 29, column: 44, scope: !73)
!83 = !DILocation(line: 29, column: 42, scope: !73)
!84 = !DILocation(line: 29, column: 7, scope: !43)
!85 = !DILocation(line: 30, column: 22, scope: !73)
!86 = !DILocation(line: 30, column: 24, scope: !73)
!87 = !DILocation(line: 30, column: 28, scope: !73)
!88 = !DILocation(line: 30, column: 32, scope: !73)
!89 = !DILocation(line: 30, column: 12, scope: !73)
!90 = !DILocation(line: 30, column: 5, scope: !73)
!91 = !DILocation(line: 31, column: 3, scope: !43)
!92 = !DILocation(line: 32, column: 1, scope: !43)
!93 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !94, isLocal: false, isDefinition: true, scopeLine: 51, isOptimized: false, unit: !0, variables: !2)
!94 = !DISubroutineType(types: !95)
!95 = !{!11}
!96 = !DILocalVariable(name: "re", scope: !93, file: !1, line: 53, type: !97)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 56, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 7)
!100 = !DILocation(line: 53, column: 8, scope: !93)
!101 = !DILocation(line: 56, column: 22, scope: !93)
!102 = !DILocation(line: 56, column: 3, scope: !93)
!103 = !DILocation(line: 59, column: 9, scope: !93)
!104 = !DILocation(line: 59, column: 3, scope: !93)
!105 = !DILocation(line: 61, column: 3, scope: !93)
!106 = distinct !DISubprogram(name: "matchstar", scope: !1, file: !1, line: 14, type: !107, isLocal: true, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!107 = !DISubroutineType(types: !108)
!108 = !{!11, !11, !12, !12}
!109 = !DILocalVariable(name: "c", arg: 1, scope: !106, file: !1, line: 14, type: !11)
!110 = !DILocation(line: 14, column: 26, scope: !106)
!111 = !DILocalVariable(name: "re", arg: 2, scope: !106, file: !1, line: 14, type: !12)
!112 = !DILocation(line: 14, column: 35, scope: !106)
!113 = !DILocalVariable(name: "text", arg: 3, scope: !106, file: !1, line: 14, type: !12)
!114 = !DILocation(line: 14, column: 45, scope: !106)
!115 = !DILocation(line: 15, column: 3, scope: !106)
!116 = distinct !{!116, !115, !117}
!117 = !DILocation(line: 18, column: 54, scope: !106)
!118 = !DILocation(line: 16, column: 19, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 16, column: 9)
!120 = distinct !DILexicalBlock(scope: !106, file: !1, line: 15, column: 6)
!121 = !DILocation(line: 16, column: 23, scope: !119)
!122 = !DILocation(line: 16, column: 9, scope: !119)
!123 = !DILocation(line: 16, column: 9, scope: !120)
!124 = !DILocation(line: 17, column: 7, scope: !119)
!125 = !DILocation(line: 18, column: 13, scope: !106)
!126 = !DILocation(line: 18, column: 12, scope: !106)
!127 = !DILocation(line: 18, column: 18, scope: !106)
!128 = !DILocation(line: 18, column: 26, scope: !106)
!129 = !DILocation(line: 18, column: 35, scope: !106)
!130 = !DILocation(line: 18, column: 30, scope: !106)
!131 = !DILocation(line: 18, column: 41, scope: !106)
!132 = !DILocation(line: 18, column: 38, scope: !106)
!133 = !DILocation(line: 18, column: 46, scope: !106)
!134 = !DILocation(line: 18, column: 47, scope: !106)
!135 = !DILocation(line: 18, column: 43, scope: !106)
!136 = !DILocation(line: 18, column: 3, scope: !120)
!137 = !DILocation(line: 19, column: 3, scope: !106)
!138 = !DILocation(line: 20, column: 1, scope: !106)
