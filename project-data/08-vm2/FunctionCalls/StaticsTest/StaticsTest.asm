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
@Sys.init // goto Sys.init
0;JMP
(Sys.init$ret.0)
// Class1.vm:7    function Class1.set 0
(Class1.set)
// Class1.vm:8    push argument 0
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
// Class1.vm:9    pop static 0
@SP
M=M-1
A=M
D=M
@Class1.0
M=D
// Class1.vm:10    push argument 1
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
// Class1.vm:11    pop static 1
@SP
M=M-1
A=M
D=M
@Class1.1
M=D
// Class1.vm:12    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Class1.vm:13    return
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
// Class1.vm:16    function Class1.get 0
(Class1.get)
// Class1.vm:17    push static 0
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Class1.vm:18    push static 1
@Class1.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Class1.vm:19    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Class1.vm:20    return
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
// Sys.vm:8    function Sys.init 0
(Sys.init)
// Sys.vm:9    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:10    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:11    call Class1.set 2
@Class1.set$ret.0  // push return address
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
@7
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Class1.set // goto Class1.set
0;JMP
(Class1.set$ret.0)
// Sys.vm:12    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:13    push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:14    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:15    call Class2.set 2
@Class2.set$ret.1  // push return address
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
@7
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Class2.set // goto Class2.set
0;JMP
(Class2.set$ret.1)
// Sys.vm:16    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:17    call Class1.get 0
@Class1.get$ret.2  // push return address
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
@Class1.get // goto Class1.get
0;JMP
(Class1.get$ret.2)
// Sys.vm:18    call Class2.get 0
@Class2.get$ret.3  // push return address
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
@Class2.get // goto Class2.get
0;JMP
(Class2.get$ret.3)
// Sys.vm:19    label WHILE
(Sys.init$WHILE)
// Sys.vm:20    goto WHILE
@Sys.init$WHILE
0;JMP
// Class2.vm:7    function Class2.set 0
(Class2.set)
// Class2.vm:8    push argument 0
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
// Class2.vm:9    pop static 0
@SP
M=M-1
A=M
D=M
@Class2.0
M=D
// Class2.vm:10    push argument 1
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
// Class2.vm:11    pop static 1
@SP
M=M-1
A=M
D=M
@Class2.1
M=D
// Class2.vm:12    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Class2.vm:13    return
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
// Class2.vm:16    function Class2.get 0
(Class2.get)
// Class2.vm:17    push static 0
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Class2.vm:18    push static 1
@Class2.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Class2.vm:19    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Class2.vm:20    return
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
