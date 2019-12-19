; ModuleID = 'get_sign.bc'
source_filename = "get_sign.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @get_sign(i32) #0 !dbg !8 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !12, metadata !DIExpression()), !dbg !13
  %4 = load i32, i32* %3, align 4, !dbg !14
  %5 = icmp eq i32 %4, 0, !dbg !16
  br i1 %5, label %6, label %7, !dbg !17

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !18
  br label %12, !dbg !18

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !19
  %9 = icmp slt i32 %8, 0, !dbg !21
  br i1 %9, label %10, label %11, !dbg !22

; <label>:10:                                     ; preds = %7
  store i32 -1, i32* %2, align 4, !dbg !23
  br label %12, !dbg !23

; <label>:11:                                     ; preds = %7
  store i32 1, i32* %2, align 4, !dbg !24
  br label %12, !dbg !24

; <label>:12:                                     ; preds = %11, %10, %6
  %13 = load i32, i32* %2, align 4, !dbg !25
  ret i32 %13, !dbg !25
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !26 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = bitcast i32* %2 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !32
  %4 = load i32, i32* %2, align 4, !dbg !33
  %5 = call i32 @get_sign(i32 %4), !dbg !34
  ret i32 %5, !dbg !35
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "get_sign.c", directory: "/Users/zhutingwei/KleeExample/get_sign")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!8 = distinct !DISubprogram(name: "get_sign", scope: !1, file: !1, line: 7, type: !9, isLocal: false, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "x", arg: 1, scope: !8, file: !1, line: 7, type: !11)
!13 = !DILocation(line: 7, column: 18, scope: !8)
!14 = !DILocation(line: 8, column: 7, scope: !15)
!15 = distinct !DILexicalBlock(scope: !8, file: !1, line: 8, column: 7)
!16 = !DILocation(line: 8, column: 9, scope: !15)
!17 = !DILocation(line: 8, column: 7, scope: !8)
!18 = !DILocation(line: 9, column: 6, scope: !15)
!19 = !DILocation(line: 11, column: 7, scope: !20)
!20 = distinct !DILexicalBlock(scope: !8, file: !1, line: 11, column: 7)
!21 = !DILocation(line: 11, column: 9, scope: !20)
!22 = !DILocation(line: 11, column: 7, scope: !8)
!23 = !DILocation(line: 12, column: 6, scope: !20)
!24 = !DILocation(line: 14, column: 6, scope: !20)
!25 = !DILocation(line: 15, column: 1, scope: !8)
!26 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 17, type: !27, isLocal: false, isDefinition: true, scopeLine: 17, isOptimized: false, unit: !0, variables: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{!11}
!29 = !DILocalVariable(name: "a", scope: !26, file: !1, line: 18, type: !11)
!30 = !DILocation(line: 18, column: 7, scope: !26)
!31 = !DILocation(line: 19, column: 22, scope: !26)
!32 = !DILocation(line: 19, column: 3, scope: !26)
!33 = !DILocation(line: 20, column: 19, scope: !26)
!34 = !DILocation(line: 20, column: 10, scope: !26)
!35 = !DILocation(line: 20, column: 3, scope: !26)
