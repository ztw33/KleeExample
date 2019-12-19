; ModuleID = 'query.bc'
source_filename = "query.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !DIExpression()), !dbg !17
  %5 = bitcast i32* %2 to i8*, !dbg !18
  call void @klee_make_symbolic(i8* %5, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)), !dbg !19
  %6 = bitcast i32* %3 to i8*, !dbg !20
  call void @klee_make_symbolic(i8* %6, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)), !dbg !21
  %7 = bitcast i32* %4 to i8*, !dbg !22
  call void @klee_make_symbolic(i8* %7, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !23
  %8 = load i32, i32* %4, align 4, !dbg !24
  %9 = load i32, i32* %2, align 4, !dbg !25
  %10 = icmp eq i32 %8, %9, !dbg !26
  %11 = zext i1 %10 to i32, !dbg !26
  %12 = sext i32 %11 to i64, !dbg !24
  call void @klee_assume(i64 %12), !dbg !27
  %13 = load i32, i32* %2, align 4, !dbg !28
  %14 = icmp eq i32 %13, 3, !dbg !29
  %15 = zext i1 %14 to i32, !dbg !29
  %16 = sext i32 %15 to i64, !dbg !28
  call void @klee_assume(i64 %16), !dbg !30
  %17 = load i32, i32* %3, align 4, !dbg !31
  %18 = icmp eq i32 %17, 1, !dbg !32
  %19 = zext i1 %18 to i32, !dbg !32
  %20 = sext i32 %19 to i64, !dbg !31
  call void @klee_assume(i64 %20), !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_assume(i64) #2

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "query.c", directory: "/Users/zhutingwei/KleeExample/get_sign")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!8 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !9, isLocal: false, isDefinition: true, scopeLine: 8, isOptimized: false, unit: !0, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "input", scope: !8, file: !1, line: 9, type: !11)
!13 = !DILocation(line: 9, column: 9, scope: !8)
!14 = !DILocalVariable(name: "output", scope: !8, file: !1, line: 9, type: !11)
!15 = !DILocation(line: 9, column: 16, scope: !8)
!16 = !DILocalVariable(name: "a", scope: !8, file: !1, line: 10, type: !11)
!17 = !DILocation(line: 10, column: 9, scope: !8)
!18 = !DILocation(line: 11, column: 24, scope: !8)
!19 = !DILocation(line: 11, column: 5, scope: !8)
!20 = !DILocation(line: 12, column: 24, scope: !8)
!21 = !DILocation(line: 12, column: 5, scope: !8)
!22 = !DILocation(line: 13, column: 24, scope: !8)
!23 = !DILocation(line: 13, column: 5, scope: !8)
!24 = !DILocation(line: 14, column: 17, scope: !8)
!25 = !DILocation(line: 14, column: 22, scope: !8)
!26 = !DILocation(line: 14, column: 19, scope: !8)
!27 = !DILocation(line: 14, column: 5, scope: !8)
!28 = !DILocation(line: 15, column: 17, scope: !8)
!29 = !DILocation(line: 15, column: 22, scope: !8)
!30 = !DILocation(line: 15, column: 5, scope: !8)
!31 = !DILocation(line: 16, column: 17, scope: !8)
!32 = !DILocation(line: 16, column: 23, scope: !8)
!33 = !DILocation(line: 16, column: 5, scope: !8)
!34 = !DILocation(line: 18, column: 5, scope: !8)
