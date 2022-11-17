// StaticTest.vm:7    push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// StaticTest.vm:8    push constant 333
@333
D=A
@SP
A=M
M=D
@SP
M=M+1
// StaticTest.vm:9    push constant 888
@888
D=A
@SP
A=M
M=D
@SP
M=M+1
// StaticTest.vm:10    pop static 8
@SP
M=M-1
A=M
D=M
@StaticTest.8
M=D
// StaticTest.vm:11    pop static 3
@SP
M=M-1
A=M
D=M
@StaticTest.3
M=D
// StaticTest.vm:12    pop static 1
@SP
M=M-1
A=M
D=M
@StaticTest.1
M=D
// StaticTest.vm:13    push static 3
@StaticTest.3
D=M
@SP
A=M
M=D
@SP
M=M+1
// StaticTest.vm:14    push static 1
@StaticTest.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// StaticTest.vm:15    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// StaticTest.vm:16    push static 8
@StaticTest.8
D=M
@SP
A=M
M=D
@SP
M=M+1
// StaticTest.vm:17    add
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
