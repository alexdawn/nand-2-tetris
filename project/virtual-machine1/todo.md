* option flag for if dir should have file called after the dir or Prog.asm
* order of files to be read?

* allow flags to be grouped `-bisl`
* help flag/subcommand
* add assembler macros
* use invoke to generate and test?
* python complier
* jack compiler
* tetris
* 


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
