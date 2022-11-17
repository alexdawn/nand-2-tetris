// PointerTest.vm:8    push constant 3030
@3030
D=A
@SP
A=M
M=D
@SP
M=M+1
// PointerTest.vm:9    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// PointerTest.vm:10    push constant 3040
@3040
D=A
@SP
A=M
M=D
@SP
M=M+1
// PointerTest.vm:11    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// PointerTest.vm:12    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// PointerTest.vm:13    pop this 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
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
// PointerTest.vm:14    push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
// PointerTest.vm:15    pop that 6
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
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
// PointerTest.vm:16    push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// PointerTest.vm:17    push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// PointerTest.vm:18    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// PointerTest.vm:19    push this 2
@THIS
D=M
@2
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// PointerTest.vm:20    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// PointerTest.vm:21    push that 6
@THAT
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
// PointerTest.vm:22    add
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
