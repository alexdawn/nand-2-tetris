// BasicLoop.vm:9    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// BasicLoop.vm:10    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
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
// BasicLoop.vm:11    label LOOP_START
($LOOP_START)
// BasicLoop.vm:12    push argument 0
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
// BasicLoop.vm:13    push local 0
@LCL
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
// BasicLoop.vm:14    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// BasicLoop.vm:15    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
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
// BasicLoop.vm:16    push argument 0
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
// BasicLoop.vm:17    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// BasicLoop.vm:18    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// BasicLoop.vm:19    pop argument 0
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
// BasicLoop.vm:20    push argument 0
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
// BasicLoop.vm:21    if LOOP_START
@SP
M=M-1
A=M
D=M
@$LOOP_START
D;JNE
// BasicLoop.vm:22    push local 0
@LCL
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
(INFINITE_LOOP)
@INFINITE_LOOP
0;JMP
(WRITETRUE)
D=-1 // True
@R13 // Jump back to where the sub was called
A=M
0;JMP
