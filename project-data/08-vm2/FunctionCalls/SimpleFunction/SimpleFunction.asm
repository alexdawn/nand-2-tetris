// SimpleFunction.vm:7    function SimpleFunction.test 2
(SimpleFunction.test)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
// SimpleFunction.vm:8    push local 0
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
// SimpleFunction.vm:9    push local 1
@LCL
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
// SimpleFunction.vm:10    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// SimpleFunction.vm:11    not
@SP
A=M-1
M=!M
// SimpleFunction.vm:12    push argument 0
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
// SimpleFunction.vm:13    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// SimpleFunction.vm:14    push argument 1
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
// SimpleFunction.vm:15    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// SimpleFunction.vm:16    return from SimpleFunction.test
@LCL  // frame (stored in R15) = LCL
D=M
@R15
M=D
@5
A=D-A  // *(frame-5)
D=M
@R14
M=D
@SP
M=M-1
A=M
D=M
@ARG  // *arg = pop()
A=M
M=D
@ARG  // SP = ARG + 1
D=M+1
@SP
M=D
@R15  // THAT = *(frame-1)
M=M-1
A=M
D=M
@THAT
M=D
@R15  // THIS = *(frame-2)
M=M-1
A=M
D=M
@THIS
M=D
@R15  // ARG = *(frame-3)
M=M-1
A=M
D=M
@ARG
M=D
@R15  // LCL = *(frame-4)
M=M-1
A=M
D=M
@LCL
M=D
@R14  // get retAddr from R14
A=M
0;JMP
(INFINITE_LOOP)
@INFINITE_LOOP
0;JMP
(WRITETRUE)
D=-1 // True
@R13 // Jump back to where the sub was called
A=M
0;JMP
