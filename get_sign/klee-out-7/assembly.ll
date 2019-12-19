; ModuleID = 'query.bc'
source_filename = "query.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !DIExpression()), !dbg !15
  %4 = bitcast i32* %2 to i8*, !dbg !16
  call void @klee_make_symbolic(i8* %4, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)), !dbg !17
  %5 = bitcast i32* %3 to i8*, !dbg !18
  call void @klee_make_symbolic(i8* %5, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)), !dbg !19
  %6 = load i32, i32* %2, align 4, !dbg !20
  %7 = icmp eq i32 %6, 3, !dbg !21
  %8 = zext i1 %7 to i32, !dbg !21
  %9 = sext i32 %8 to i64, !dbg !20
  call void @klee_assume(i64 %9), !dbg !22
  %10 = load i32, i32* %3, align 4, !dbg !23
  %11 = icmp eq i32 %10, 1, !dbg !24
  %12 = zext i1 %11 to i32, !dbg !24
  %13 = sext i32 %12 to i64, !dbg !23
  call void @klee_assume(i64 %13), !dbg !25
  ret i32 0, !dbg !26
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
!16 = !DILocation(line: 10, column: 24, scope: !8)
!17 = !DILocation(line: 10, column: 5, scope: !8)
!18 = !DILocation(line: 11, column: 24, scope: !8)
!19 = !DILocation(line: 11, column: 5, scope: !8)
!20 = !DILocation(line: 12, column: 17, scope: !8)
!21 = !DILocation(line: 12, column: 22, scope: !8)
!22 = !DILocation(line: 12, column: 5, scope: !8)
!23 = !DILocation(line: 13, column: 17, scope: !8)
!24 = !DILocation(line: 13, column: 23, scope: !8)
!25 = !DILocation(line: 13, column: 5, scope: !8)
!26 = !DILocation(line: 15, column: 5, scope: !8)
