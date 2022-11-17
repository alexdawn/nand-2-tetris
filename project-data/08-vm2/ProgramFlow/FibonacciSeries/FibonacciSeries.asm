// FibonacciSeries.vm:11    push argument 1
@ARG
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:12    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// FibonacciSeries.vm:14    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:15    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// FibonacciSeries.vm:16    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:17    pop that 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@1
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// FibonacciSeries.vm:19    push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:20    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:21    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// FibonacciSeries.vm:22    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// FibonacciSeries.vm:24    label MAIN_LOOP_START
($MAIN_LOOP_START)
// FibonacciSeries.vm:26    push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:27    if COMPUTE_ELEMENT
@SP
M=M-1
A=M
D=M
@$COMPUTE_ELEMENT
D;JNE
// FibonacciSeries.vm:28    if-goto END_PROGRAM
@$END_PROGRAM
0;JMP
// FibonacciSeries.vm:30    label COMPUTE_ELEMENT
($COMPUTE_ELEMENT)
// FibonacciSeries.vm:32    push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:33    push that 1
@THAT
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:34    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// FibonacciSeries.vm:35    pop that 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@2
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// FibonacciSeries.vm:37    push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:38    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:39    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// FibonacciSeries.vm:40    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// FibonacciSeries.vm:42    push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:43    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// FibonacciSeries.vm:44    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// FibonacciSeries.vm:45    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// FibonacciSeries.vm:47    if-goto MAIN_LOOP_START
@$MAIN_LOOP_START
0;JMP
// FibonacciSeries.vm:49    label END_PROGRAM
($END_PROGRAM)
(INFINITE_LOOP)
@INFINITE_LOOP
0;JMP
(WRITETRUE)
D=-1 // True
@R13 // Jump back to where the sub was called
A=M
0;JMP
