// SimpleAdd.vm:7    push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// SimpleAdd.vm:8    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// SimpleAdd.vm:9    add
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
