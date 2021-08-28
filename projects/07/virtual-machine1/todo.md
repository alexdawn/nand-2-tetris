* check the function label naming is correct?
* option flag for if dir should have file called after the dir or Prog.asm
* option flag for more bootloader options
* order of files to be read?
* 
* get Fibo working (stack keeps growning after the answer is got)
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
0 1 2 3 4 5 6
1 1 2 3 5 8 13

call stack:

call fibonacci 4
    call fibonacci 2
        return 2
    call fibonacci 3
        call fibonacci 1
            return 1
        call fibonacci 2
            return 2
        return 3
    return 5
