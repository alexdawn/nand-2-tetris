// Bootstrap
@256
D=A
@SP
M=D
// TODO call Sys.init
// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@SP
M=M-1
A=M
D=M
@R13 // value that has been popped off of stack
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest
M=D
@R13
D=M
@R14
A=M
M=D
// push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop argument 2
@SP
M=M-1
A=M
D=M
@R13 // value that has been popped off of stack
M=D
@ARG
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
// pop argument 1
@SP
M=M-1
A=M
D=M
@R13 // value that has been popped off of stack
M=D
@ARG
D=M
@1
D=D+A
@R14  // pointer to dest
M=D
@R13
D=M
@R14
A=M
M=D
// push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 6
@SP
M=M-1
A=M
D=M
@R13 // value that has been popped off of stack
M=D
@THIS
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
// push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop that 5
@SP
M=M-1
A=M
D=M
@R13 // value that has been popped off of stack
M=D
@THAT
D=M
@5
D=D+A
@R14  // pointer to dest
M=D
@R13
D=M
@R14
A=M
M=D
// pop that 2
@SP
M=M-1
A=M
D=M
@R13 // value that has been popped off of stack
M=D
@THAT
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
// push constant 510
@510
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 6
@SP
M=M-1
A=M
D=M
@R11
M=D
// push local 0
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
// push that 5
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
// add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// push argument 1
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
// sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// push this 6
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
// push this 6
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
// add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// push temp 6
@R11
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
