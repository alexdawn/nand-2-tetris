// Bootstrap
@256
D=A
@SP
M=D
// TODO call Sys.init
// push constant 0
@0
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
// label LOOP_START
(LOOP_START)
// push argument 0
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
// add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
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
// push argument 0
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
// push constant 1
@1
D=A
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
// pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // value that has been popped off of stack
M=D
@ARG
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
// push argument 0
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
// if LOOP_START
@SP
M=M-1
A=M
D=M
@LOOP_START
D;JNE
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
(INFINITE_LOOP)
@INFINITE_LOOP
0;JMP
(WRITETRUE)
D=-1 // True
@R13 // Jump back to where the sub was called
A=M
0;JMP
