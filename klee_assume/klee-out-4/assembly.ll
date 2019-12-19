; ModuleID = 'klee_assume.bc'
source_filename = "klee_assume.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

@.str = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !DIExpression()), !dbg !15
  %5 = bitcast i32* %2 to i8*, !dbg !16
  call void @klee_make_symbolic(i8* %5, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !17
  %6 = bitcast i32* %3 to i8*, !dbg !18
  call void @klee_make_symbolic(i8* %6, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %4, metadata !20, metadata !DIExpression()), !dbg !21
  %7 = load i32, i32* %2, align 4, !dbg !22
  %8 = icmp eq i32 %7, 2, !dbg !24
  br i1 %8, label %9, label %13, !dbg !25

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %3, align 4, !dbg !26
  %11 = icmp eq i32 %10, 3, !dbg !27
  %12 = zext i1 %11 to i32, !dbg !27
  store i32 %12, i32* %4, align 4, !dbg !28
  br label %14, !dbg !29

; <label>:13:                                     ; preds = %0
  store i32 0, i32* %4, align 4, !dbg !30
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i32, i32* %4, align 4, !dbg !31
  %16 = sext i32 %15 to i64, !dbg !31
  call void @klee_assume(i64 %16), !dbg !32
  ret i32 0, !dbg !33
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_assume(i64) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "klee_assume.c", directory: "/Users/zhutingwei/KleeExample/klee_assume")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!8 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !9, isLocal: false, isDefinition: true, scopeLine: 3, isOptimized: false, unit: !0, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "c", scope: !8, file: !1, line: 4, type: !11)
!13 = !DILocation(line: 4, column: 7, scope: !8)
!14 = !DILocalVariable(name: "d", scope: !8, file: !1, line: 4, type: !11)
!15 = !DILocation(line: 4, column: 9, scope: !8)
!16 = !DILocation(line: 5, column: 22, scope: !8)
!17 = !DILocation(line: 5, column: 3, scope: !8)
!18 = !DILocation(line: 6, column: 22, scope: !8)
!19 = !DILocation(line: 6, column: 3, scope: !8)
!20 = !DILocalVariable(name: "tmp", scope: !8, file: !1, line: 8, type: !11)
!21 = !DILocation(line: 8, column: 7, scope: !8)
!22 = !DILocation(line: 9, column: 7, scope: !23)
!23 = distinct !DILexicalBlock(scope: !8, file: !1, line: 9, column: 7)
!24 = !DILocation(line: 9, column: 9, scope: !23)
!25 = !DILocation(line: 9, column: 7, scope: !8)
!26 = !DILocation(line: 10, column: 11, scope: !23)
!27 = !DILocation(line: 10, column: 13, scope: !23)
!28 = !DILocation(line: 10, column: 9, scope: !23)
!29 = !DILocation(line: 10, column: 5, scope: !23)
!30 = !DILocation(line: 12, column: 9, scope: !23)
!31 = !DILocation(line: 14, column: 15, scope: !8)
!32 = !DILocation(line: 14, column: 3, scope: !8)
!33 = !DILocation(line: 16, column: 3, scope: !8)
