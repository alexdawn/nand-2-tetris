how to improve the assembly:

anything that is like this:


split assignment:
```
X = Y
Z = X
```

to

```
XZ = Y
```


repeated assignment:
```
D=A
D=D-1
```

to 

```
D=A-1
```

repeated addressing:
```
@X
@Y
```

to

```
@Y
```
