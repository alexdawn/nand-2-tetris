// BasicTest.vm:7    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// BasicTest.vm:8    pop local 0
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
// BasicTest.vm:9    push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
// BasicTest.vm:10    push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// BasicTest.vm:11    pop argument 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// BasicTest.vm:12    pop argument 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// BasicTest.vm:13    push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
// BasicTest.vm:14    pop this 6
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@6
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// BasicTest.vm:15    push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
// BasicTest.vm:16    push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// BasicTest.vm:17    pop that 5
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@5
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// BasicTest.vm:18    pop that 2
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
// BasicTest.vm:19    push constant 510
@510
D=A
@SP
A=M
M=D
@SP
M=M+1
// BasicTest.vm:20    pop temp 6
@SP
M=M-1
A=M
D=M
@R11
M=D
// BasicTest.vm:21    push local 0
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
// BasicTest.vm:22    push that 5
@THAT
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// BasicTest.vm:23    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// BasicTest.vm:24    push argument 1
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
// BasicTest.vm:25    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// BasicTest.vm:26    push this 6
@THIS
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// BasicTest.vm:27    push this 6
@THIS
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// BasicTest.vm:28    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// BasicTest.vm:29    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// BasicTest.vm:30    push temp 6
@R11
D=M
@SP
A=M
M=D
@SP
M=M+1
// BasicTest.vm:31    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
(INFINITE_LOOP)
@INFINITE_LOOP
0;JMP
(WRITETRUE)
D=-1 // True
@R13 // Jump back to where the sub was called
A=M
0;JMP
