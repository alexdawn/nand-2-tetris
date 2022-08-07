// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
    @R1
    D=M
    @R2
    M=D
    @R1
    M=0
(LOOP)
    @R0
    D=M
// Add R0 to R1 (R1 times) until R2 is reduced to zero
    @R1
    M=D+M
    @R2
    M=M-1
    D=M
    @LOOP
    D;JGT
(END)
    @R1
    D=M
    @R2
    M=D
    @END
    0;JMP
