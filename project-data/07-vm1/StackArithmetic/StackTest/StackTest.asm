// StackTest.vm:8    push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:9    push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:10    eq
@StackTest.comp0
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
D;JEQ
D=0 // write False if no jump
(StackTest.comp0)
@SP
A=M-1
M=D // Write result of comparison op to stack
// StackTest.vm:11    push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:12    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:13    eq
@StackTest.comp1
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
D;JEQ
D=0 // write False if no jump
(StackTest.comp1)
@SP
A=M-1
M=D // Write result of comparison op to stack
// StackTest.vm:14    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:15    push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:16    eq
@StackTest.comp2
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
D;JEQ
D=0 // write False if no jump
(StackTest.comp2)
@SP
A=M-1
M=D // Write result of comparison op to stack
// StackTest.vm:17    push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:18    push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:19    lt
@StackTest.comp3
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
(StackTest.comp3)
@SP
A=M-1
M=D // Write result of comparison op to stack
// StackTest.vm:20    push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:21    push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:22    lt
@StackTest.comp4
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
(StackTest.comp4)
@SP
A=M-1
M=D // Write result of comparison op to stack
// StackTest.vm:23    push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:24    push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:25    lt
@StackTest.comp5
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
(StackTest.comp5)
@SP
A=M-1
M=D // Write result of comparison op to stack
// StackTest.vm:26    push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:27    push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:28    gt
@StackTest.comp6
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
D;JGT
D=0 // write False if no jump
(StackTest.comp6)
@SP
A=M-1
M=D // Write result of comparison op to stack
// StackTest.vm:29    push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:30    push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:31    gt
@StackTest.comp7
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
D;JGT
D=0 // write False if no jump
(StackTest.comp7)
@SP
A=M-1
M=D // Write result of comparison op to stack
// StackTest.vm:32    push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:33    push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:34    gt
@StackTest.comp8
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
D;JGT
D=0 // write False if no jump
(StackTest.comp8)
@SP
A=M-1
M=D // Write result of comparison op to stack
// StackTest.vm:35    push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:36    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:37    push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:38    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// StackTest.vm:39    push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:40    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// StackTest.vm:41    neg
@SP
A=M-1
M=-M
// StackTest.vm:42    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// StackTest.vm:43    push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// StackTest.vm:44    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// StackTest.vm:45    not
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
