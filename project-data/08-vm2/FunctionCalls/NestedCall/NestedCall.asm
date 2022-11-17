// Sys.vm:8    function Sys.init 0
(Sys.init)
// Sys.vm:9    push constant 4000
@4000
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:10    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// Sys.vm:11    push constant 5000
@5000
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:12    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Sys.vm:13    call Sys.main 0
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
@5
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Sys.main // goto Sys.main
0;JMP
(Sys.init$ret.0)
// Sys.vm:14    pop temp 1
@SP
M=M-1
A=M
D=M
@R6
M=D
// Sys.vm:15    label LOOP
(Sys.init$LOOP)
// Sys.vm:16    if-goto LOOP
@Sys.init$LOOP
0;JMP
// Sys.vm:26    function Sys.main 5
(Sys.main)
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
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:27    push constant 4001
@4001
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:28    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// Sys.vm:29    push constant 5001
@5001
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:30    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Sys.vm:31    push constant 200
@200
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:32    pop local 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
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
// Sys.vm:33    push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:34    pop local 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
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
// Sys.vm:35    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:36    pop local 3
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@3
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Sys.vm:37    push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:38    call Sys.add12 1
@Sys.main$ret.0  // push return address
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
@Sys.add12 // goto Sys.add12
0;JMP
(Sys.main$ret.0)
// Sys.vm:39    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:40    push local 0
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
// Sys.vm:41    push local 1
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
// Sys.vm:42    push local 2
@LCL
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
// Sys.vm:43    push local 3
@LCL
D=M
@3
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:44    push local 4
@LCL
D=M
@4
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:45    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Sys.vm:46    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Sys.vm:47    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Sys.vm:48    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Sys.vm:49    return from Sys.main
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
// Sys.vm:55    function Sys.add12 0
(Sys.add12)
// Sys.vm:56    push constant 4002
@4002
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:57    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// Sys.vm:58    push constant 5002
@5002
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:59    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Sys.vm:60    push argument 0
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
// Sys.vm:61    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:62    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Sys.vm:63    return from Sys.add12
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
