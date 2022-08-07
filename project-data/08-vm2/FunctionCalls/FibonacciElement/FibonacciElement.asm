// Bootstrap
@256
D=A
@SP
M=D
@101 // set the other pointers to illegal negative values
D=-A
@LCL
M=D
@102
D=-A
@ARG
M=D
@103
D=-A
@THIS
M=D
@104
D=-A
@THAT
M=D
// Inserted bootstrap code    call Sys.init 0
@$ret.0  // push return address
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL  // push LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG  // push ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS  // push THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT  // push THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  // ARG = SP - (5 + nArgs)
D=M
@5
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Sys.init // goto Sys.init
0;JMP
($ret.0)
// Sys.vm:11    function Sys.init 0
(Sys.init)
// Sys.vm:12    push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:13    call Main.fibonacci 1
@Sys.init$ret.0  // push return address
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL  // push LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG  // push ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS  // push THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT  // push THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  // ARG = SP - (5 + nArgs)
D=M
@6
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Main.fibonacci // goto Main.fibonacci
0;JMP
(Sys.init$ret.0)
// Sys.vm:14    label WHILE
(Sys.init$WHILE)
// Sys.vm:15    if-goto WHILE
@Sys.init$WHILE
0;JMP
// Main.vm:11    function Main.fibonacci 0
(Main.fibonacci)
// Main.vm:12    push argument 0
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
// Main.vm:13    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:14    lt
@Main.comp0
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@SP
A=M-1
D=M-D // take the difference of the two operands
@WRITETRUE
D;JLT
D=0 // write False if no jump
(Main.comp0)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Main.vm:15    if IF_TRUE
@SP
M=M-1
A=M
D=M
@Main.fibonacci$IF_TRUE
D;JNE
// Main.vm:16    if-goto IF_FALSE
@Main.fibonacci$IF_FALSE
0;JMP
// Main.vm:17    label IF_TRUE
(Main.fibonacci$IF_TRUE)
// Main.vm:18    push argument 0
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
// Main.vm:19    return from Main.fibonacci
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
// Main.vm:20    label IF_FALSE
(Main.fibonacci$IF_FALSE)
// Main.vm:21    push argument 0
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
// Main.vm:22    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:23    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Main.vm:24    call Main.fibonacci 1
@Main.fibonacci$ret.0  // push return address
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL  // push LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG  // push ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS  // push THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT  // push THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  // ARG = SP - (5 + nArgs)
D=M
@6
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Main.fibonacci // goto Main.fibonacci
0;JMP
(Main.fibonacci$ret.0)
// Main.vm:25    push argument 0
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
// Main.vm:26    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:27    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Main.vm:28    call Main.fibonacci 1
@Main.fibonacci$ret.1  // push return address
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL  // push LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG  // push ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS  // push THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT  // push THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP  // ARG = SP - (5 + nArgs)
D=M
@6
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Main.fibonacci // goto Main.fibonacci
0;JMP
(Main.fibonacci$ret.1)
// Main.vm:29    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Main.vm:30    return from Main.fibonacci
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
