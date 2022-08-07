// Bootstrap
@256
D=A
@SP
M=D
// TODO call Sys.init
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@NEXTStackTest.comp0
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@SP
A=M-1
D=M-D
@WRITETRUE
D;JEQ
D=0 // False
(NEXTStackTest.comp0)
@SP
A=M-1
M=D // Write result of comparison op
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@NEXTStackTest.comp1
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@SP
A=M-1
D=M-D
@WRITETRUE
D;JEQ
D=0 // False
(NEXTStackTest.comp1)
@SP
A=M-1
M=D // Write result of comparison op
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@NEXTStackTest.comp2
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@SP
A=M-1
D=M-D
@WRITETRUE
D;JEQ
D=0 // False
(NEXTStackTest.comp2)
@SP
A=M-1
M=D // Write result of comparison op
// push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@NEXTStackTest.comp3
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@SP
A=M-1
D=M-D
@WRITETRUE
D;JLT
D=0 // False
(NEXTStackTest.comp3)
@SP
A=M-1
M=D // Write result of comparison op
// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@NEXTStackTest.comp4
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@SP
A=M-1
D=M-D
@WRITETRUE
D;JLT
D=0 // False
(NEXTStackTest.comp4)
@SP
A=M-1
M=D // Write result of comparison op
// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@NEXTStackTest.comp5
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@SP
A=M-1
D=M-D
@WRITETRUE
D;JLT
D=0 // False
(NEXTStackTest.comp5)
@SP
A=M-1
M=D // Write result of comparison op
// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@NEXTStackTest.comp6
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@SP
A=M-1
D=M-D
@WRITETRUE
D;JGT
D=0 // False
(NEXTStackTest.comp6)
@SP
A=M-1
M=D // Write result of comparison op
// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@NEXTStackTest.comp7
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@SP
A=M-1
D=M-D
@WRITETRUE
D;JGT
D=0 // False
(NEXTStackTest.comp7)
@SP
A=M-1
M=D // Write result of comparison op
// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@NEXTStackTest.comp8
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@SP
A=M-1
D=M-D
@WRITETRUE
D;JGT
D=0 // False
(NEXTStackTest.comp8)
@SP
A=M-1
M=D // Write result of comparison op
// push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 53
@53
D=A
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
// push constant 112
@112
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
// neg
@SP
A=M-1
M=-M
// and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// not
@SP
A=M-1
M=!M
(INFINITE_LOOP)
@INFINITE_LOOP
0;JMP
(WRITETRUE)
D=-1 // True
@R13 // Jump back to where the sub was called
A=M
0;JMP
