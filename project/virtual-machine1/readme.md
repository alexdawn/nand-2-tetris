# JACK VSM assembler

Converts the jack VSM (Virtual Stack Machine) assembly into hack assembly

Run converter with `jvsma [options] file1/directory1 [file2/directory2]`
options are `-b` for `--bootstrap` (this prefixes with the code to set SP=256 and calls Sys.init())
directories are searched for each *.vm file (ordering?)

## Internals

the jvsm has 16 virtual registers, which are:

```
R0   - SP       stack pointer.
R1   - ARG      pointer to `arg 0` a function will have n initialised args on the stack.
R2   - LCL      pointer to `local 0` a function will have n initialised locals on the stack.
R3   - THIS     pointer to `pointer 0` the current class.
R4   - THAT     pointer to `pointer 1` the pointer to the calling class?
R5   - TEMP0
R6   - TEMP1
R7   - TEMP2
R8   - TEMP3
R9   - TEMP4
R10  - TEMP5
R11  - TEMP6
R12  - TEMP7
R13  - R13      used during logical comparison to store the return address for PC.
                also used temporary store for indirect pops (including function returns).
R14  - R14      used to store the destination address of an indirect pop. also used to store the retAddr
R15  - R15      stores the a copy of LCL used to point to the saved frame of the caller.
```

`RAM[16]-RAM[255]` A static heap with 240 words/registers for globals.

A stack which builds from `RAM[256]` upwards.

## function stack

When a function is called the following is stored:

```
...
arg1
arg2
...
argN  < caller stack
retAddr
LCL
ARG
THIS
THAT
...  < callee stack
```

when the callee returns, the stack restores the old state


## Fibonacci Element

This one was tricky, needed to get recursive calls working.

* get Fibo working (stack keeps growing after the answer is got)
* after you get RAM[261]=3
* the stack keeps growing
* breakpoint start and end of function:
* PC = 123 start of the function
* PC = 375 for return
* PC = 163 (if n<2)
* don't think the function is evaluating false and ending the recursion?
* check label IF_TRUE resolves true

```
function fibonacci(n) {
    if n < 2 {
        return n
    } else {
        return fibonacci(n-2) + fibonacci(n-1)
    }
}
```

expected function returns:

```
0 1 2 3 4
0 1 1 2 3
```

should have 9 calls to fibo
with max level 5 depth

(level 1)
call fibonacci 4 
    (level 2)
    call fibonacci 2 
        (level 3)
        call fibonacci 0 
            (level 4)
            return 0
        call fibonacci 1 
            (level 4)
            return 1
        return 1
    call fibonacci 3 
        (level 3)<-- RAM[268]=3
        call fibonacci 1 
            (level 4)
            return 1
        call fibonacci 2 
            (level 4)
            call fibonacci 0 
                (level 5)
                return 0
            call fibonacci 1 
                (level 5)
                return 1
            return 1
        return 2
    return 3 <-- RAM[261]=3
