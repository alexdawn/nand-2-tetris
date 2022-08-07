// Bootstrap
@256
D=A
@SP
M=D
// TODO call Sys.init
// push constant 3030
@3030
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// push constant 3040
@3040
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 2
@SP
M=M-1
A=M
D=M
@R13 // value that has been popped off of stack
M=D
@THIS
D=M
@2
D=D+A
@R14  // pointer to dest
M=D
@R13
D=M
@R14
A=M
M=D
// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop that 6
@SP
M=M-1
A=M
D=M
@R13 // value that has been popped off of stack
M=D
@THAT
D=M
@6
D=D+A
@R14  // pointer to dest
M=D
@R13
D=M
@R14
A=M
M=D
// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// push this 2
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
// sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// push that 6
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
// add
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
