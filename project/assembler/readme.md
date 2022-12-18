how to improve the assembly:

# macros

## macro - arbitiary text definitions


def FOO=DM

FOO=X

## zach style unwrapping:

@@REPT{5}
    D=D+M
    A=A+1
@@END

## allow index assigment

@i
M=X

to

M[i]=X

@i
D=M

to

D=M[i]

## add constants

@i
D=D+A

to

D=D+i

## shorthand increment

D=D+1

to

D++

# optimisation

## multiple assigment

X = Y
Z = X

to

XZ = Y

## repeat assigment

D=A
D=D-1

to 

D=A-1

## repeat addressing

@X
@Y

to

@Y
