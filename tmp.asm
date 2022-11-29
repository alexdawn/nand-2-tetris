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
// Output.vm:1    function Output.init 0
(Output.init)
// Output.vm:2    push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:3    pop static 4
@SP
M=M-1
A=M
D=M
@Output.4
M=D
// Output.vm:4    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:5    not
@SP
A=M-1
M=!M
// Output.vm:6    pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
// Output.vm:7    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:8    pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
// Output.vm:9    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:10    pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D
// Output.vm:11    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:12    call String.new 1
@Output.init$ret.0  // push return address
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
@String.new // goto String.new
0;JMP
(Output.init$ret.0)
// Output.vm:13    pop static 3
@SP
M=M-1
A=M
D=M
@Output.3
M=D
// Output.vm:14    call Output.initMap 0
@Output.init$ret.1  // push return address
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
@Output.initMap // goto Output.initMap
0;JMP
(Output.init$ret.1)
// Output.vm:15    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:16    call Output.createShiftedMap 0
@Output.init$ret.2  // push return address
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
@Output.createShiftedMap // goto Output.createShiftedMap
0;JMP
(Output.init$ret.2)
// Output.vm:17    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:18    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:19    return from Output.init
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
// Output.vm:20    function Output.initMap 0
(Output.initMap)
// Output.vm:21    push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:22    call Array.new 1
@Output.initMap$ret.0  // push return address
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
@Array.new // goto Array.new
0;JMP
(Output.initMap$ret.0)
// Output.vm:23    pop static 5
@SP
M=M-1
A=M
D=M
@Output.5
M=D
// Output.vm:24    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:25    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:26    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:27    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:28    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:29    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:30    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:31    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:32    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:33    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:34    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:35    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:36    call Output.create 12
@Output.initMap$ret.1  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.1)
// Output.vm:37    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:38    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:39    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:40    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:41    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:42    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:43    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:44    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:45    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:46    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:47    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:48    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:49    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:50    call Output.create 12
@Output.initMap$ret.2  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.2)
// Output.vm:51    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:52    push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:53    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:54    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:55    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:56    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:57    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:58    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:59    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:60    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:61    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:62    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:63    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:64    call Output.create 12
@Output.initMap$ret.3  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.3)
// Output.vm:65    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:66    push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:67    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:68    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:69    push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:70    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:71    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:72    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:73    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:74    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:75    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:76    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:77    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:78    call Output.create 12
@Output.initMap$ret.4  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.4)
// Output.vm:79    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:80    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:81    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:82    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:83    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:84    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:85    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:86    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:87    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:88    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:89    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:90    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:91    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:92    call Output.create 12
@Output.initMap$ret.5  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.5)
// Output.vm:93    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:94    push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:95    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:96    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:97    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:98    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:99    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:100    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:101    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:102    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:103    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:104    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:105    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:106    call Output.create 12
@Output.initMap$ret.6  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.6)
// Output.vm:107    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:108    push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:109    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:110    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:111    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:112    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:113    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:114    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:115    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:116    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:117    push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:118    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:119    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:120    call Output.create 12
@Output.initMap$ret.7  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.7)
// Output.vm:121    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:122    push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:123    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:124    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:125    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:126    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:127    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:128    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:129    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:130    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:131    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:132    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:133    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:134    call Output.create 12
@Output.initMap$ret.8  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.8)
// Output.vm:135    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:136    push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:137    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:138    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:139    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:140    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:141    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:142    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:143    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:144    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:145    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:146    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:147    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:148    call Output.create 12
@Output.initMap$ret.9  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.9)
// Output.vm:149    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:150    push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:151    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:152    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:153    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:154    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:155    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:156    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:157    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:158    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:159    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:160    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:161    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:162    call Output.create 12
@Output.initMap$ret.10  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.10)
// Output.vm:163    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:164    push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:165    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:166    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:167    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:168    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:169    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:170    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:171    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:172    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:173    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:174    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:175    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:176    call Output.create 12
@Output.initMap$ret.11  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.11)
// Output.vm:177    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:178    push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:179    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:180    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:181    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:182    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:183    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:184    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:185    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:186    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:187    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:188    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:189    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:190    call Output.create 12
@Output.initMap$ret.12  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.12)
// Output.vm:191    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:192    push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:193    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:194    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:195    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:196    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:197    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:198    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:199    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:200    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:201    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:202    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:203    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:204    call Output.create 12
@Output.initMap$ret.13  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.13)
// Output.vm:205    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:206    push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:207    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:208    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:209    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:210    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:211    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:212    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:213    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:214    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:215    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:216    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:217    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:218    call Output.create 12
@Output.initMap$ret.14  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.14)
// Output.vm:219    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:220    push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:221    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:222    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:223    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:224    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:225    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:226    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:227    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:228    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:229    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:230    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:231    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:232    call Output.create 12
@Output.initMap$ret.15  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.15)
// Output.vm:233    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:234    push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:235    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:236    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:237    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:238    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:239    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:240    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:241    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:242    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:243    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:244    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:245    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:246    call Output.create 12
@Output.initMap$ret.16  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.16)
// Output.vm:247    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:248    push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:249    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:250    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:251    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:252    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:253    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:254    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:255    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:256    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:257    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:258    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:259    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:260    call Output.create 12
@Output.initMap$ret.17  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.17)
// Output.vm:261    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:262    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:263    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:264    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:265    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:266    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:267    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:268    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:269    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:270    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:271    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:272    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:273    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:274    call Output.create 12
@Output.initMap$ret.18  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.18)
// Output.vm:275    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:276    push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:277    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:278    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:279    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:280    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:281    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:282    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:283    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:284    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:285    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:286    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:287    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:288    call Output.create 12
@Output.initMap$ret.19  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.19)
// Output.vm:289    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:290    push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:291    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:292    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:293    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:294    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:295    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:296    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:297    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:298    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:299    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:300    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:301    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:302    call Output.create 12
@Output.initMap$ret.20  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.20)
// Output.vm:303    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:304    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:305    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:306    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:307    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:308    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:309    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:310    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:311    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:312    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:313    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:314    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:315    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:316    call Output.create 12
@Output.initMap$ret.21  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.21)
// Output.vm:317    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:318    push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:319    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:320    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:321    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:322    push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:323    push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:324    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:325    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:326    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:327    push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:328    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:329    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:330    call Output.create 12
@Output.initMap$ret.22  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.22)
// Output.vm:331    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:332    push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:333    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:334    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:335    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:336    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:337    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:338    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:339    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:340    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:341    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:342    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:343    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:344    call Output.create 12
@Output.initMap$ret.23  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.23)
// Output.vm:345    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:346    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:347    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:348    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:349    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:350    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:351    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:352    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:353    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:354    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:355    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:356    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:357    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:358    call Output.create 12
@Output.initMap$ret.24  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.24)
// Output.vm:359    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:360    push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:361    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:362    push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:363    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:364    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:365    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:366    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:367    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:368    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:369    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:370    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:371    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:372    call Output.create 12
@Output.initMap$ret.25  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.25)
// Output.vm:373    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:374    push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:375    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:376    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:377    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:378    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:379    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:380    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:381    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:382    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:383    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:384    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:385    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:386    call Output.create 12
@Output.initMap$ret.26  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.26)
// Output.vm:387    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:388    push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:389    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:390    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:391    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:392    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:393    push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:394    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:395    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:396    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:397    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:398    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:399    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:400    call Output.create 12
@Output.initMap$ret.27  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.27)
// Output.vm:401    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:402    push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:403    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:404    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:405    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:406    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:407    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:408    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:409    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:410    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:411    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:412    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:413    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:414    call Output.create 12
@Output.initMap$ret.28  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.28)
// Output.vm:415    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:416    push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:417    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:418    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:419    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:420    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:421    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:422    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:423    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:424    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:425    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:426    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:427    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:428    call Output.create 12
@Output.initMap$ret.29  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.29)
// Output.vm:429    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:430    push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:431    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:432    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:433    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:434    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:435    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:436    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:437    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:438    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:439    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:440    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:441    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:442    call Output.create 12
@Output.initMap$ret.30  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.30)
// Output.vm:443    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:444    push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:445    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:446    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:447    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:448    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:449    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:450    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:451    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:452    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:453    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:454    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:455    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:456    call Output.create 12
@Output.initMap$ret.31  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.31)
// Output.vm:457    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:458    push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:459    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:460    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:461    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:462    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:463    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:464    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:465    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:466    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:467    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:468    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:469    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:470    call Output.create 12
@Output.initMap$ret.32  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.32)
// Output.vm:471    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:472    push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:473    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:474    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:475    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:476    push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:477    push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:478    push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:479    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:480    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:481    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:482    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:483    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:484    call Output.create 12
@Output.initMap$ret.33  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.33)
// Output.vm:485    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:486    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:487    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:488    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:489    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:490    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:491    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:492    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:493    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:494    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:495    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:496    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:497    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:498    call Output.create 12
@Output.initMap$ret.34  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.34)
// Output.vm:499    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:500    push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:501    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:502    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:503    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:504    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:505    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:506    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:507    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:508    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:509    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:510    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:511    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:512    call Output.create 12
@Output.initMap$ret.35  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.35)
// Output.vm:513    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:514    push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:515    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:516    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:517    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:518    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:519    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:520    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:521    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:522    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:523    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:524    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:525    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:526    call Output.create 12
@Output.initMap$ret.36  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.36)
// Output.vm:527    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:528    push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:529    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:530    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:531    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:532    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:533    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:534    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:535    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:536    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:537    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:538    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:539    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:540    call Output.create 12
@Output.initMap$ret.37  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.37)
// Output.vm:541    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:542    push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:543    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:544    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:545    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:546    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:547    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:548    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:549    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:550    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:551    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:552    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:553    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:554    call Output.create 12
@Output.initMap$ret.38  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.38)
// Output.vm:555    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:556    push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:557    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:558    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:559    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:560    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:561    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:562    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:563    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:564    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:565    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:566    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:567    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:568    call Output.create 12
@Output.initMap$ret.39  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.39)
// Output.vm:569    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:570    push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:571    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:572    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:573    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:574    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:575    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:576    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:577    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:578    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:579    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:580    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:581    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:582    call Output.create 12
@Output.initMap$ret.40  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.40)
// Output.vm:583    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:584    push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:585    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:586    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:587    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:588    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:589    push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:590    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:591    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:592    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:593    push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:594    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:595    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:596    call Output.create 12
@Output.initMap$ret.41  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.41)
// Output.vm:597    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:598    push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:599    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:600    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:601    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:602    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:603    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:604    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:605    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:606    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:607    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:608    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:609    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:610    call Output.create 12
@Output.initMap$ret.42  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.42)
// Output.vm:611    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:612    push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:613    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:614    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:615    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:616    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:617    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:618    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:619    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:620    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:621    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:622    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:623    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:624    call Output.create 12
@Output.initMap$ret.43  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.43)
// Output.vm:625    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:626    push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:627    push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:628    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:629    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:630    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:631    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:632    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:633    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:634    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:635    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:636    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:637    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:638    call Output.create 12
@Output.initMap$ret.44  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.44)
// Output.vm:639    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:640    push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:641    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:642    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:643    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:644    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:645    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:646    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:647    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:648    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:649    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:650    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:651    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:652    call Output.create 12
@Output.initMap$ret.45  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.45)
// Output.vm:653    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:654    push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:655    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:656    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:657    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:658    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:659    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:660    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:661    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:662    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:663    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:664    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:665    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:666    call Output.create 12
@Output.initMap$ret.46  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.46)
// Output.vm:667    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:668    push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:669    push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:670    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:671    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:672    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:673    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:674    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:675    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:676    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:677    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:678    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:679    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:680    call Output.create 12
@Output.initMap$ret.47  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.47)
// Output.vm:681    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:682    push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:683    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:684    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:685    push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:686    push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:687    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:688    push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:689    push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:690    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:691    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:692    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:693    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:694    call Output.create 12
@Output.initMap$ret.48  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.48)
// Output.vm:695    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:696    push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:697    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:698    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:699    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:700    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:701    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:702    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:703    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:704    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:705    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:706    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:707    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:708    call Output.create 12
@Output.initMap$ret.49  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.49)
// Output.vm:709    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:710    push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:711    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:712    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:713    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:714    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:715    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:716    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:717    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:718    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:719    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:720    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:721    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:722    call Output.create 12
@Output.initMap$ret.50  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.50)
// Output.vm:723    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:724    push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:725    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:726    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:727    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:728    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:729    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:730    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:731    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:732    push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:733    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:734    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:735    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:736    call Output.create 12
@Output.initMap$ret.51  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.51)
// Output.vm:737    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:738    push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:739    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:740    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:741    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:742    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:743    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:744    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:745    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:746    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:747    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:748    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:749    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:750    call Output.create 12
@Output.initMap$ret.52  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.52)
// Output.vm:751    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:752    push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:753    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:754    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:755    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:756    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:757    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:758    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:759    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:760    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:761    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:762    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:763    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:764    call Output.create 12
@Output.initMap$ret.53  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.53)
// Output.vm:765    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:766    push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:767    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:768    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:769    push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:770    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:771    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:772    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:773    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:774    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:775    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:776    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:777    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:778    call Output.create 12
@Output.initMap$ret.54  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.54)
// Output.vm:779    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:780    push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:781    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:782    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:783    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:784    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:785    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:786    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:787    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:788    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:789    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:790    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:791    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:792    call Output.create 12
@Output.initMap$ret.55  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.55)
// Output.vm:793    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:794    push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:795    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:796    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:797    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:798    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:799    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:800    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:801    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:802    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:803    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:804    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:805    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:806    call Output.create 12
@Output.initMap$ret.56  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.56)
// Output.vm:807    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:808    push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:809    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:810    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:811    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:812    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:813    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:814    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:815    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:816    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:817    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:818    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:819    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:820    call Output.create 12
@Output.initMap$ret.57  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.57)
// Output.vm:821    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:822    push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:823    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:824    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:825    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:826    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:827    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:828    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:829    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:830    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:831    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:832    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:833    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:834    call Output.create 12
@Output.initMap$ret.58  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.58)
// Output.vm:835    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:836    push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:837    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:838    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:839    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:840    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:841    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:842    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:843    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:844    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:845    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:846    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:847    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:848    call Output.create 12
@Output.initMap$ret.59  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.59)
// Output.vm:849    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:850    push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:851    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:852    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:853    push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:854    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:855    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:856    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:857    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:858    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:859    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:860    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:861    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:862    call Output.create 12
@Output.initMap$ret.60  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.60)
// Output.vm:863    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:864    push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:865    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:866    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:867    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:868    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:869    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:870    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:871    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:872    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:873    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:874    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:875    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:876    call Output.create 12
@Output.initMap$ret.61  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.61)
// Output.vm:877    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:878    push constant 92
@92
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:879    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:880    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:881    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:882    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:883    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:884    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:885    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:886    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:887    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:888    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:889    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:890    call Output.create 12
@Output.initMap$ret.62  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.62)
// Output.vm:891    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:892    push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:893    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:894    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:895    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:896    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:897    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:898    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:899    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:900    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:901    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:902    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:903    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:904    call Output.create 12
@Output.initMap$ret.63  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.63)
// Output.vm:905    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:906    push constant 94
@94
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:907    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:908    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:909    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:910    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:911    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:912    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:913    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:914    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:915    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:916    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:917    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:918    call Output.create 12
@Output.initMap$ret.64  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.64)
// Output.vm:919    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:920    push constant 95
@95
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:921    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:922    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:923    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:924    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:925    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:926    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:927    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:928    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:929    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:930    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:931    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:932    call Output.create 12
@Output.initMap$ret.65  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.65)
// Output.vm:933    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:934    push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:935    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:936    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:937    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:938    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:939    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:940    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:941    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:942    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:943    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:944    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:945    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:946    call Output.create 12
@Output.initMap$ret.66  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.66)
// Output.vm:947    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:948    push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:949    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:950    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:951    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:952    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:953    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:954    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:955    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:956    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:957    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:958    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:959    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:960    call Output.create 12
@Output.initMap$ret.67  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.67)
// Output.vm:961    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:962    push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:963    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:964    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:965    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:966    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:967    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:968    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:969    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:970    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:971    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:972    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:973    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:974    call Output.create 12
@Output.initMap$ret.68  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.68)
// Output.vm:975    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:976    push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:977    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:978    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:979    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:980    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:981    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:982    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:983    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:984    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:985    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:986    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:987    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:988    call Output.create 12
@Output.initMap$ret.69  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.69)
// Output.vm:989    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:990    push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:991    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:992    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:993    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:994    push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:995    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:996    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:997    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:998    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:999    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1000    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1001    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1002    call Output.create 12
@Output.initMap$ret.70  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.70)
// Output.vm:1003    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1004    push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1005    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1006    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1007    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1008    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1009    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1010    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1011    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1012    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1013    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1014    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1015    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1016    call Output.create 12
@Output.initMap$ret.71  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.71)
// Output.vm:1017    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1018    push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1019    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1020    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1021    push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1022    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1023    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1024    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1025    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1026    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1027    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1028    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1029    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1030    call Output.create 12
@Output.initMap$ret.72  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.72)
// Output.vm:1031    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1032    push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1033    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1034    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1035    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1036    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1037    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1038    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1039    push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1040    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1041    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1042    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1043    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1044    call Output.create 12
@Output.initMap$ret.73  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.73)
// Output.vm:1045    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1046    push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1047    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1048    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1049    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1050    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1051    push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1052    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1053    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1054    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1055    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1056    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1057    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1058    call Output.create 12
@Output.initMap$ret.74  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.74)
// Output.vm:1059    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1060    push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1061    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1062    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1063    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1064    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1065    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1066    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1067    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1068    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1069    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1070    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1071    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1072    call Output.create 12
@Output.initMap$ret.75  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.75)
// Output.vm:1073    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1074    push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1075    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1076    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1077    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1078    push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1079    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1080    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1081    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1082    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1083    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1084    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1085    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1086    call Output.create 12
@Output.initMap$ret.76  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.76)
// Output.vm:1087    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1088    push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1089    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1090    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1091    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1092    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1093    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1094    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1095    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1096    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1097    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1098    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1099    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1100    call Output.create 12
@Output.initMap$ret.77  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.77)
// Output.vm:1101    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1102    push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1103    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1104    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1105    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1106    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1107    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1108    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1109    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1110    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1111    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1112    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1113    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1114    call Output.create 12
@Output.initMap$ret.78  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.78)
// Output.vm:1115    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1116    push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1117    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1118    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1119    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1120    push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1121    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1122    push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1123    push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1124    push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1125    push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1126    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1127    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1128    call Output.create 12
@Output.initMap$ret.79  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.79)
// Output.vm:1129    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1130    push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1131    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1132    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1133    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1134    push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1135    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1136    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1137    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1138    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1139    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1140    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1141    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1142    call Output.create 12
@Output.initMap$ret.80  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.80)
// Output.vm:1143    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1144    push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1145    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1146    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1147    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1148    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1149    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1150    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1151    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1152    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1153    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1154    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1155    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1156    call Output.create 12
@Output.initMap$ret.81  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.81)
// Output.vm:1157    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1158    push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1159    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1160    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1161    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1162    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1163    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1164    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1165    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1166    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1167    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1168    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1169    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1170    call Output.create 12
@Output.initMap$ret.82  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.82)
// Output.vm:1171    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1172    push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1173    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1174    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1175    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1176    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1177    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1178    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1179    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1180    push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1181    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1182    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1183    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1184    call Output.create 12
@Output.initMap$ret.83  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.83)
// Output.vm:1185    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1186    push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1187    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1188    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1189    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1190    push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1191    push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1192    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1193    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1194    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1195    push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1196    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1197    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1198    call Output.create 12
@Output.initMap$ret.84  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.84)
// Output.vm:1199    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1200    push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1201    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1202    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1203    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1204    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1205    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1206    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1207    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1208    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1209    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1210    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1211    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1212    call Output.create 12
@Output.initMap$ret.85  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.85)
// Output.vm:1213    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1214    push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1215    push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1216    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1217    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1218    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1219    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1220    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1221    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1222    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1223    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1224    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1225    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1226    call Output.create 12
@Output.initMap$ret.86  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.86)
// Output.vm:1227    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1228    push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1229    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1230    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1231    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1232    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1233    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1234    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1235    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1236    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1237    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1238    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1239    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1240    call Output.create 12
@Output.initMap$ret.87  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.87)
// Output.vm:1241    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1242    push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1243    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1244    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1245    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1246    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1247    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1248    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1249    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1250    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1251    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1252    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1253    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1254    call Output.create 12
@Output.initMap$ret.88  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.88)
// Output.vm:1255    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1256    push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1257    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1258    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1259    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1260    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1261    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1262    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1263    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1264    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1265    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1266    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1267    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1268    call Output.create 12
@Output.initMap$ret.89  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.89)
// Output.vm:1269    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1270    push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1271    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1272    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1273    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1274    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1275    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1276    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1277    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1278    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1279    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1280    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1281    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1282    call Output.create 12
@Output.initMap$ret.90  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.90)
// Output.vm:1283    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1284    push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1285    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1286    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1287    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1288    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1289    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1290    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1291    push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1292    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1293    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1294    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1295    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1296    call Output.create 12
@Output.initMap$ret.91  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.91)
// Output.vm:1297    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1298    push constant 122
@122
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1299    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1300    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1301    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1302    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1303    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1304    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1305    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1306    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1307    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1308    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1309    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1310    call Output.create 12
@Output.initMap$ret.92  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.92)
// Output.vm:1311    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1312    push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1313    push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1314    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1315    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1316    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1317    push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1318    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1319    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1320    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1321    push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1322    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1323    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1324    call Output.create 12
@Output.initMap$ret.93  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.93)
// Output.vm:1325    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1326    push constant 124
@124
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1327    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1328    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1329    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1330    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1331    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1332    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1333    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1334    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1335    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1336    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1337    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1338    call Output.create 12
@Output.initMap$ret.94  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.94)
// Output.vm:1339    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1340    push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1341    push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1342    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1343    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1344    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1345    push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1346    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1347    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1348    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1349    push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1350    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1351    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1352    call Output.create 12
@Output.initMap$ret.95  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.95)
// Output.vm:1353    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1354    push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1355    push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1356    push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1357    push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1358    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1359    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1360    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1361    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1362    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1363    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1364    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1365    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1366    call Output.create 12
@Output.initMap$ret.96  // push return address
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
@17
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Output.create // goto Output.create
0;JMP
(Output.initMap$ret.96)
// Output.vm:1367    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1368    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1369    return from Output.initMap
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
// Output.vm:1370    function Output.create 1
(Output.create)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1371    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1372    call Array.new 1
@Output.create$ret.0  // push return address
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
@Array.new // goto Array.new
0;JMP
(Output.create$ret.0)
// Output.vm:1373    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1374    push argument 0
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
// Output.vm:1375    push static 5
@Output.5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1376    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1377    push local 0
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
// Output.vm:1378    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1379    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1380    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1381    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1382    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1383    push local 0
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
// Output.vm:1384    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1385    push argument 1
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
// Output.vm:1386    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1387    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1388    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1389    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1390    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1391    push local 0
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
// Output.vm:1392    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1393    push argument 2
@ARG
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
// Output.vm:1394    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1395    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1396    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1397    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1398    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1399    push local 0
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
// Output.vm:1400    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1401    push argument 3
@ARG
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
// Output.vm:1402    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1403    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1404    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1405    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1406    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1407    push local 0
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
// Output.vm:1408    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1409    push argument 4
@ARG
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
// Output.vm:1410    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1411    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1412    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1413    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1414    push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1415    push local 0
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
// Output.vm:1416    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1417    push argument 5
@ARG
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1418    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1419    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1420    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1421    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1422    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1423    push local 0
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
// Output.vm:1424    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1425    push argument 6
@ARG
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1426    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1427    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1428    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1429    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1430    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1431    push local 0
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
// Output.vm:1432    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1433    push argument 7
@ARG
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1434    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1435    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1436    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1437    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1438    push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1439    push local 0
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
// Output.vm:1440    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1441    push argument 8
@ARG
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1442    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1443    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1444    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1445    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1446    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1447    push local 0
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
// Output.vm:1448    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1449    push argument 9
@ARG
D=M
@9
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1450    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1451    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1452    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1453    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1454    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1455    push local 0
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
// Output.vm:1456    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1457    push argument 10
@ARG
D=M
@10
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1458    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1459    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1460    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1461    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1462    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1463    push local 0
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
// Output.vm:1464    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1465    push argument 11
@ARG
D=M
@11
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1466    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1467    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1468    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1469    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1470    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1471    return from Output.create
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
// Output.vm:1472    function Output.createShiftedMap 4
(Output.createShiftedMap)
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
// Output.vm:1473    push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1474    call Array.new 1
@Output.createShiftedMap$ret.0  // push return address
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
@Array.new // goto Array.new
0;JMP
(Output.createShiftedMap$ret.0)
// Output.vm:1475    pop static 6
@SP
M=M-1
A=M
D=M
@Output.6
M=D
// Output.vm:1476    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1477    pop local 2
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
// Output.vm:1478    label WHILE_EXP0
(Output.createShiftedMap$WHILE_EXP0)
// Output.vm:1479    push local 2
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
// Output.vm:1480    push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1481    lt
@Output.comp0
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
(Output.comp0)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1482    not
@SP
A=M-1
M=!M
// Output.vm:1483    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Output.createShiftedMap$WHILE_END0
D;JNE
// Output.vm:1484    push local 2
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
// Output.vm:1485    push static 5
@Output.5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1486    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1487    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1488    push that 0
@THAT
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
// Output.vm:1489    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1490    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1491    call Array.new 1
@Output.createShiftedMap$ret.1  // push return address
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
@Array.new // goto Array.new
0;JMP
(Output.createShiftedMap$ret.1)
// Output.vm:1492    pop local 1
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
// Output.vm:1493    push local 2
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
// Output.vm:1494    push static 6
@Output.6
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1495    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1496    push local 1
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
// Output.vm:1497    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1498    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1499    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1500    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1501    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1502    pop local 3
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
// Output.vm:1503    label WHILE_EXP1
(Output.createShiftedMap$WHILE_EXP1)
// Output.vm:1504    push local 3
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
// Output.vm:1505    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1506    lt
@Output.comp1
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
(Output.comp1)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1507    not
@SP
A=M-1
M=!M
// Output.vm:1508    if WHILE_END1
@SP
M=M-1
A=M
D=M
@Output.createShiftedMap$WHILE_END1
D;JNE
// Output.vm:1509    push local 3
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
// Output.vm:1510    push local 1
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
// Output.vm:1511    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1512    push local 3
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
// Output.vm:1513    push local 0
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
// Output.vm:1514    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1515    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1516    push that 0
@THAT
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
// Output.vm:1517    push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1518    call Math.multiply 2
@Output.createShiftedMap$ret.2  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Output.createShiftedMap$ret.2)
// Output.vm:1519    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1520    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1521    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1522    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1523    push local 3
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
// Output.vm:1524    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1525    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1526    pop local 3
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
// Output.vm:1527    if-goto WHILE_EXP1
@Output.createShiftedMap$WHILE_EXP1
0;JMP
// Output.vm:1528    label WHILE_END1
(Output.createShiftedMap$WHILE_END1)
// Output.vm:1529    push local 2
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
// Output.vm:1530    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1531    eq
@Output.comp2
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
(Output.comp2)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1532    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.createShiftedMap$IF_TRUE0
D;JNE
// Output.vm:1533    if-goto IF_FALSE0
@Output.createShiftedMap$IF_FALSE0
0;JMP
// Output.vm:1534    label IF_TRUE0
(Output.createShiftedMap$IF_TRUE0)
// Output.vm:1535    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1536    pop local 2
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
// Output.vm:1537    if-goto IF_END0
@Output.createShiftedMap$IF_END0
0;JMP
// Output.vm:1538    label IF_FALSE0
(Output.createShiftedMap$IF_FALSE0)
// Output.vm:1539    push local 2
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
// Output.vm:1540    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1541    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1542    pop local 2
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
// Output.vm:1543    label IF_END0
(Output.createShiftedMap$IF_END0)
// Output.vm:1544    if-goto WHILE_EXP0
@Output.createShiftedMap$WHILE_EXP0
0;JMP
// Output.vm:1545    label WHILE_END0
(Output.createShiftedMap$WHILE_END0)
// Output.vm:1546    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1547    return from Output.createShiftedMap
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
// Output.vm:1548    function Output.getMap 1
(Output.getMap)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1549    push argument 0
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
// Output.vm:1550    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1551    lt
@Output.comp3
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
(Output.comp3)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1552    push argument 0
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
// Output.vm:1553    push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1554    gt
@Output.comp4
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
(Output.comp4)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1555    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Output.vm:1556    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.getMap$IF_TRUE0
D;JNE
// Output.vm:1557    if-goto IF_FALSE0
@Output.getMap$IF_FALSE0
0;JMP
// Output.vm:1558    label IF_TRUE0
(Output.getMap$IF_TRUE0)
// Output.vm:1559    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1560    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1561    label IF_FALSE0
(Output.getMap$IF_FALSE0)
// Output.vm:1562    push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1563    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Output.getMap$IF_TRUE1
D;JNE
// Output.vm:1564    if-goto IF_FALSE1
@Output.getMap$IF_FALSE1
0;JMP
// Output.vm:1565    label IF_TRUE1
(Output.getMap$IF_TRUE1)
// Output.vm:1566    push argument 0
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
// Output.vm:1567    push static 5
@Output.5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1568    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1569    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1570    push that 0
@THAT
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
// Output.vm:1571    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1572    if-goto IF_END1
@Output.getMap$IF_END1
0;JMP
// Output.vm:1573    label IF_FALSE1
(Output.getMap$IF_FALSE1)
// Output.vm:1574    push argument 0
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
// Output.vm:1575    push static 6
@Output.6
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1576    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1577    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1578    push that 0
@THAT
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
// Output.vm:1579    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1580    label IF_END1
(Output.getMap$IF_END1)
// Output.vm:1581    push local 0
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
// Output.vm:1582    return from Output.getMap
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
// Output.vm:1583    function Output.drawChar 4
(Output.drawChar)
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
// Output.vm:1584    push argument 0
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
// Output.vm:1585    call Output.getMap 1
@Output.drawChar$ret.0  // push return address
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
@Output.getMap // goto Output.getMap
0;JMP
(Output.drawChar$ret.0)
// Output.vm:1586    pop local 2
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
// Output.vm:1587    push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1588    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1589    label WHILE_EXP0
(Output.drawChar$WHILE_EXP0)
// Output.vm:1590    push local 1
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
// Output.vm:1591    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1592    lt
@Output.comp5
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
(Output.comp5)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1593    not
@SP
A=M-1
M=!M
// Output.vm:1594    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Output.drawChar$WHILE_END0
D;JNE
// Output.vm:1595    push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1596    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.drawChar$IF_TRUE0
D;JNE
// Output.vm:1597    if-goto IF_FALSE0
@Output.drawChar$IF_FALSE0
0;JMP
// Output.vm:1598    label IF_TRUE0
(Output.drawChar$IF_TRUE0)
// Output.vm:1599    push local 0
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
// Output.vm:1600    push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1601    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1602    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1603    push that 0
@THAT
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
// Output.vm:1604    push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1605    neg
@SP
A=M-1
M=-M
// Output.vm:1606    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Output.vm:1607    pop local 3
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
// Output.vm:1608    if-goto IF_END0
@Output.drawChar$IF_END0
0;JMP
// Output.vm:1609    label IF_FALSE0
(Output.drawChar$IF_FALSE0)
// Output.vm:1610    push local 0
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
// Output.vm:1611    push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1612    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1613    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1614    push that 0
@THAT
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
// Output.vm:1615    push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1616    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Output.vm:1617    pop local 3
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
// Output.vm:1618    label IF_END0
(Output.drawChar$IF_END0)
// Output.vm:1619    push local 0
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
// Output.vm:1620    push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1621    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1622    push local 1
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
// Output.vm:1623    push local 2
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
// Output.vm:1624    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1625    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1626    push that 0
@THAT
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
// Output.vm:1627    push local 3
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
// Output.vm:1628    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Output.vm:1629    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1630    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Output.vm:1631    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1632    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1633    push local 0
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
// Output.vm:1634    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1635    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1636    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1637    push local 1
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
// Output.vm:1638    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1639    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1640    pop local 1
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
// Output.vm:1641    if-goto WHILE_EXP0
@Output.drawChar$WHILE_EXP0
0;JMP
// Output.vm:1642    label WHILE_END0
(Output.drawChar$WHILE_END0)
// Output.vm:1643    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1644    return from Output.drawChar
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
// Output.vm:1645    function Output.moveCursor 0
(Output.moveCursor)
// Output.vm:1646    push argument 0
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
// Output.vm:1647    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1648    lt
@Output.comp6
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
(Output.comp6)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1649    push argument 0
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
// Output.vm:1650    push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1651    gt
@Output.comp7
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
(Output.comp7)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1652    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Output.vm:1653    push argument 1
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
// Output.vm:1654    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1655    lt
@Output.comp8
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
(Output.comp8)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1656    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Output.vm:1657    push argument 1
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
// Output.vm:1658    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1659    gt
@Output.comp9
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
(Output.comp9)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1660    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Output.vm:1661    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.moveCursor$IF_TRUE0
D;JNE
// Output.vm:1662    if-goto IF_FALSE0
@Output.moveCursor$IF_FALSE0
0;JMP
// Output.vm:1663    label IF_TRUE0
(Output.moveCursor$IF_TRUE0)
// Output.vm:1664    push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1665    call Sys.error 1
@Output.moveCursor$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Output.moveCursor$ret.0)
// Output.vm:1666    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1667    label IF_FALSE0
(Output.moveCursor$IF_FALSE0)
// Output.vm:1668    push argument 1
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
// Output.vm:1669    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1670    call Math.divide 2
@Output.moveCursor$ret.1  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Output.moveCursor$ret.1)
// Output.vm:1671    pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D
// Output.vm:1672    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1673    push argument 0
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
// Output.vm:1674    push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1675    call Math.multiply 2
@Output.moveCursor$ret.2  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Output.moveCursor$ret.2)
// Output.vm:1676    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1677    push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1678    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1679    pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
// Output.vm:1680    push argument 1
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
// Output.vm:1681    push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1682    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1683    call Math.multiply 2
@Output.moveCursor$ret.3  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Output.moveCursor$ret.3)
// Output.vm:1684    eq
@Output.comp10
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
(Output.comp10)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1685    pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
// Output.vm:1686    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1687    call Output.drawChar 1
@Output.moveCursor$ret.4  // push return address
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
@Output.drawChar // goto Output.drawChar
0;JMP
(Output.moveCursor$ret.4)
// Output.vm:1688    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1689    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1690    return from Output.moveCursor
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
// Output.vm:1691    function Output.printChar 0
(Output.printChar)
// Output.vm:1692    push argument 0
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
// Output.vm:1693    call String.newLine 0
@Output.printChar$ret.0  // push return address
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
@String.newLine // goto String.newLine
0;JMP
(Output.printChar$ret.0)
// Output.vm:1694    eq
@Output.comp11
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
(Output.comp11)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1695    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.printChar$IF_TRUE0
D;JNE
// Output.vm:1696    if-goto IF_FALSE0
@Output.printChar$IF_FALSE0
0;JMP
// Output.vm:1697    label IF_TRUE0
(Output.printChar$IF_TRUE0)
// Output.vm:1698    call Output.println 0
@Output.printChar$ret.1  // push return address
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
@Output.println // goto Output.println
0;JMP
(Output.printChar$ret.1)
// Output.vm:1699    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1700    if-goto IF_END0
@Output.printChar$IF_END0
0;JMP
// Output.vm:1701    label IF_FALSE0
(Output.printChar$IF_FALSE0)
// Output.vm:1702    push argument 0
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
// Output.vm:1703    call String.backSpace 0
@Output.printChar$ret.2  // push return address
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
@String.backSpace // goto String.backSpace
0;JMP
(Output.printChar$ret.2)
// Output.vm:1704    eq
@Output.comp12
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
(Output.comp12)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1705    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Output.printChar$IF_TRUE1
D;JNE
// Output.vm:1706    if-goto IF_FALSE1
@Output.printChar$IF_FALSE1
0;JMP
// Output.vm:1707    label IF_TRUE1
(Output.printChar$IF_TRUE1)
// Output.vm:1708    call Output.backSpace 0
@Output.printChar$ret.3  // push return address
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
@Output.backSpace // goto Output.backSpace
0;JMP
(Output.printChar$ret.3)
// Output.vm:1709    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1710    if-goto IF_END1
@Output.printChar$IF_END1
0;JMP
// Output.vm:1711    label IF_FALSE1
(Output.printChar$IF_FALSE1)
// Output.vm:1712    push argument 0
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
// Output.vm:1713    call Output.drawChar 1
@Output.printChar$ret.4  // push return address
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
@Output.drawChar // goto Output.drawChar
0;JMP
(Output.printChar$ret.4)
// Output.vm:1714    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1715    push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1716    not
@SP
A=M-1
M=!M
// Output.vm:1717    if IF_TRUE2
@SP
M=M-1
A=M
D=M
@Output.printChar$IF_TRUE2
D;JNE
// Output.vm:1718    if-goto IF_FALSE2
@Output.printChar$IF_FALSE2
0;JMP
// Output.vm:1719    label IF_TRUE2
(Output.printChar$IF_TRUE2)
// Output.vm:1720    push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1721    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1722    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1723    pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D
// Output.vm:1724    push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1725    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1726    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1727    pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
// Output.vm:1728    label IF_FALSE2
(Output.printChar$IF_FALSE2)
// Output.vm:1729    push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1730    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1731    eq
@Output.comp13
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
(Output.comp13)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1732    if IF_TRUE3
@SP
M=M-1
A=M
D=M
@Output.printChar$IF_TRUE3
D;JNE
// Output.vm:1733    if-goto IF_FALSE3
@Output.printChar$IF_FALSE3
0;JMP
// Output.vm:1734    label IF_TRUE3
(Output.printChar$IF_TRUE3)
// Output.vm:1735    call Output.println 0
@Output.printChar$ret.5  // push return address
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
@Output.println // goto Output.println
0;JMP
(Output.printChar$ret.5)
// Output.vm:1736    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1737    if-goto IF_END3
@Output.printChar$IF_END3
0;JMP
// Output.vm:1738    label IF_FALSE3
(Output.printChar$IF_FALSE3)
// Output.vm:1739    push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1740    not
@SP
A=M-1
M=!M
// Output.vm:1741    pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
// Output.vm:1742    label IF_END3
(Output.printChar$IF_END3)
// Output.vm:1743    label IF_END1
(Output.printChar$IF_END1)
// Output.vm:1744    label IF_END0
(Output.printChar$IF_END0)
// Output.vm:1745    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1746    return from Output.printChar
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
// Output.vm:1747    function Output.printString 2
(Output.printString)
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
// Output.vm:1748    push argument 0
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
// Output.vm:1749    call String.length 1
@Output.printString$ret.0  // push return address
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
@String.length // goto String.length
0;JMP
(Output.printString$ret.0)
// Output.vm:1750    pop local 1
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
// Output.vm:1751    label WHILE_EXP0
(Output.printString$WHILE_EXP0)
// Output.vm:1752    push local 0
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
// Output.vm:1753    push local 1
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
// Output.vm:1754    lt
@Output.comp14
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
(Output.comp14)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1755    not
@SP
A=M-1
M=!M
// Output.vm:1756    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Output.printString$WHILE_END0
D;JNE
// Output.vm:1757    push argument 0
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
// Output.vm:1758    push local 0
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
// Output.vm:1759    call String.charAt 2
@Output.printString$ret.1  // push return address
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
@String.charAt // goto String.charAt
0;JMP
(Output.printString$ret.1)
// Output.vm:1760    call Output.printChar 1
@Output.printString$ret.2  // push return address
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
@Output.printChar // goto Output.printChar
0;JMP
(Output.printString$ret.2)
// Output.vm:1761    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1762    push local 0
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
// Output.vm:1763    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1764    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1765    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Output.vm:1766    if-goto WHILE_EXP0
@Output.printString$WHILE_EXP0
0;JMP
// Output.vm:1767    label WHILE_END0
(Output.printString$WHILE_END0)
// Output.vm:1768    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1769    return from Output.printString
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
// Output.vm:1770    function Output.printInt 0
(Output.printInt)
// Output.vm:1771    push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1772    push argument 0
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
// Output.vm:1773    call String.setInt 2
@Output.printInt$ret.0  // push return address
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
@String.setInt // goto String.setInt
0;JMP
(Output.printInt$ret.0)
// Output.vm:1774    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1775    push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1776    call Output.printString 1
@Output.printInt$ret.1  // push return address
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
@Output.printString // goto Output.printString
0;JMP
(Output.printInt$ret.1)
// Output.vm:1777    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1778    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1779    return from Output.printInt
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
// Output.vm:1780    function Output.println 0
(Output.println)
// Output.vm:1781    push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1782    push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1783    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Output.vm:1784    push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1785    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Output.vm:1786    pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
// Output.vm:1787    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1788    pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D
// Output.vm:1789    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1790    not
@SP
A=M-1
M=!M
// Output.vm:1791    pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
// Output.vm:1792    push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1793    push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1794    eq
@Output.comp15
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
(Output.comp15)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1795    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.println$IF_TRUE0
D;JNE
// Output.vm:1796    if-goto IF_FALSE0
@Output.println$IF_FALSE0
0;JMP
// Output.vm:1797    label IF_TRUE0
(Output.println$IF_TRUE0)
// Output.vm:1798    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1799    pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
// Output.vm:1800    label IF_FALSE0
(Output.println$IF_FALSE0)
// Output.vm:1801    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1802    return from Output.println
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
// Output.vm:1803    function Output.backSpace 0
(Output.backSpace)
// Output.vm:1804    push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1805    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.backSpace$IF_TRUE0
D;JNE
// Output.vm:1806    if-goto IF_FALSE0
@Output.backSpace$IF_FALSE0
0;JMP
// Output.vm:1807    label IF_TRUE0
(Output.backSpace$IF_TRUE0)
// Output.vm:1808    push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1809    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1810    gt
@Output.comp16
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
(Output.comp16)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1811    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Output.backSpace$IF_TRUE1
D;JNE
// Output.vm:1812    if-goto IF_FALSE1
@Output.backSpace$IF_FALSE1
0;JMP
// Output.vm:1813    label IF_TRUE1
(Output.backSpace$IF_TRUE1)
// Output.vm:1814    push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1815    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1816    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Output.vm:1817    pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D
// Output.vm:1818    push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1819    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1820    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Output.vm:1821    pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
// Output.vm:1822    if-goto IF_END1
@Output.backSpace$IF_END1
0;JMP
// Output.vm:1823    label IF_FALSE1
(Output.backSpace$IF_FALSE1)
// Output.vm:1824    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1825    pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D
// Output.vm:1826    push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1827    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1828    eq
@Output.comp17
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
(Output.comp17)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Output.vm:1829    if IF_TRUE2
@SP
M=M-1
A=M
D=M
@Output.backSpace$IF_TRUE2
D;JNE
// Output.vm:1830    if-goto IF_FALSE2
@Output.backSpace$IF_FALSE2
0;JMP
// Output.vm:1831    label IF_TRUE2
(Output.backSpace$IF_TRUE2)
// Output.vm:1832    push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1833    pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
// Output.vm:1834    label IF_FALSE2
(Output.backSpace$IF_FALSE2)
// Output.vm:1835    push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1836    push constant 321
@321
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1837    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Output.vm:1838    pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D
// Output.vm:1839    label IF_END1
(Output.backSpace$IF_END1)
// Output.vm:1840    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1841    pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
// Output.vm:1842    if-goto IF_END0
@Output.backSpace$IF_END0
0;JMP
// Output.vm:1843    label IF_FALSE0
(Output.backSpace$IF_FALSE0)
// Output.vm:1844    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1845    not
@SP
A=M-1
M=!M
// Output.vm:1846    pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D
// Output.vm:1847    label IF_END0
(Output.backSpace$IF_END0)
// Output.vm:1848    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1849    call Output.drawChar 1
@Output.backSpace$ret.0  // push return address
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
@Output.drawChar // goto Output.drawChar
0;JMP
(Output.backSpace$ret.0)
// Output.vm:1850    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Output.vm:1851    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Output.vm:1852    return from Output.backSpace
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
// Screen.vm:1    function Screen.init 1
(Screen.init)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:2    push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:3    pop static 1
@SP
M=M-1
A=M
D=M
@Screen.1
M=D
// Screen.vm:4    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:5    not
@SP
A=M-1
M=!M
// Screen.vm:6    pop static 2
@SP
M=M-1
A=M
D=M
@Screen.2
M=D
// Screen.vm:7    push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:8    call Array.new 1
@Screen.init$ret.0  // push return address
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
@Array.new // goto Array.new
0;JMP
(Screen.init$ret.0)
// Screen.vm:9    pop static 0
@SP
M=M-1
A=M
D=M
@Screen.0
M=D
// Screen.vm:10    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:11    push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:12    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:13    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:14    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:15    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:16    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:17    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:18    label WHILE_EXP0
(Screen.init$WHILE_EXP0)
// Screen.vm:19    push local 0
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
// Screen.vm:20    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:21    lt
@Screen.comp18
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
(Screen.comp18)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:22    not
@SP
A=M-1
M=!M
// Screen.vm:23    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Screen.init$WHILE_END0
D;JNE
// Screen.vm:24    push local 0
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
// Screen.vm:25    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:26    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:27    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:28    push local 0
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
// Screen.vm:29    push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:30    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:31    push local 0
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
// Screen.vm:32    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:33    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:34    push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:35    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:36    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:37    push that 0
@THAT
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
// Screen.vm:38    push local 0
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
// Screen.vm:39    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:40    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:41    push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:42    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:43    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:44    push that 0
@THAT
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
// Screen.vm:45    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:46    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:47    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:48    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:49    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:50    if-goto WHILE_EXP0
@Screen.init$WHILE_EXP0
0;JMP
// Screen.vm:51    label WHILE_END0
(Screen.init$WHILE_END0)
// Screen.vm:52    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:53    return from Screen.init
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
// Screen.vm:54    function Screen.clearScreen 1
(Screen.clearScreen)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:55    label WHILE_EXP0
(Screen.clearScreen$WHILE_EXP0)
// Screen.vm:56    push local 0
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
// Screen.vm:57    push constant 8192
@8192
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:58    lt
@Screen.comp19
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
(Screen.comp19)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:59    not
@SP
A=M-1
M=!M
// Screen.vm:60    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Screen.clearScreen$WHILE_END0
D;JNE
// Screen.vm:61    push local 0
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
// Screen.vm:62    push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:63    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:64    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:65    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:66    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:67    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:68    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:69    push local 0
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
// Screen.vm:70    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:71    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:72    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:73    if-goto WHILE_EXP0
@Screen.clearScreen$WHILE_EXP0
0;JMP
// Screen.vm:74    label WHILE_END0
(Screen.clearScreen$WHILE_END0)
// Screen.vm:75    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:76    return from Screen.clearScreen
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
// Screen.vm:77    function Screen.updateLocation 0
(Screen.updateLocation)
// Screen.vm:78    push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:79    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.updateLocation$IF_TRUE0
D;JNE
// Screen.vm:80    if-goto IF_FALSE0
@Screen.updateLocation$IF_FALSE0
0;JMP
// Screen.vm:81    label IF_TRUE0
(Screen.updateLocation$IF_TRUE0)
// Screen.vm:82    push argument 0
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
// Screen.vm:83    push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:84    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:85    push argument 0
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
// Screen.vm:86    push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:87    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:88    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:89    push that 0
@THAT
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
// Screen.vm:90    push argument 1
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
// Screen.vm:91    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:92    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:93    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:94    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:95    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:96    if-goto IF_END0
@Screen.updateLocation$IF_END0
0;JMP
// Screen.vm:97    label IF_FALSE0
(Screen.updateLocation$IF_FALSE0)
// Screen.vm:98    push argument 0
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
// Screen.vm:99    push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:100    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:101    push argument 0
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
// Screen.vm:102    push static 1
@Screen.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:103    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:104    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:105    push that 0
@THAT
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
// Screen.vm:106    push argument 1
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
// Screen.vm:107    not
@SP
A=M-1
M=!M
// Screen.vm:108    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Screen.vm:109    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:110    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:111    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:112    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:113    label IF_END0
(Screen.updateLocation$IF_END0)
// Screen.vm:114    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:115    return from Screen.updateLocation
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
// Screen.vm:116    function Screen.setColor 0
(Screen.setColor)
// Screen.vm:117    push argument 0
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
// Screen.vm:118    pop static 2
@SP
M=M-1
A=M
D=M
@Screen.2
M=D
// Screen.vm:119    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:120    return from Screen.setColor
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
// Screen.vm:121    function Screen.drawPixel 3
(Screen.drawPixel)
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
// Screen.vm:122    push argument 0
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
// Screen.vm:123    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:124    lt
@Screen.comp20
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
(Screen.comp20)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:125    push argument 0
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
// Screen.vm:126    push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:127    gt
@Screen.comp21
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
(Screen.comp21)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:128    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:129    push argument 1
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
// Screen.vm:130    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:131    lt
@Screen.comp22
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
(Screen.comp22)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:132    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:133    push argument 1
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
// Screen.vm:134    push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:135    gt
@Screen.comp23
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
(Screen.comp23)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:136    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:137    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.drawPixel$IF_TRUE0
D;JNE
// Screen.vm:138    if-goto IF_FALSE0
@Screen.drawPixel$IF_FALSE0
0;JMP
// Screen.vm:139    label IF_TRUE0
(Screen.drawPixel$IF_TRUE0)
// Screen.vm:140    push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:141    call Sys.error 1
@Screen.drawPixel$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Screen.drawPixel$ret.0)
// Screen.vm:142    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:143    label IF_FALSE0
(Screen.drawPixel$IF_FALSE0)
// Screen.vm:144    push argument 0
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
// Screen.vm:145    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:146    call Math.divide 2
@Screen.drawPixel$ret.1  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Screen.drawPixel$ret.1)
// Screen.vm:147    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:148    push argument 0
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
// Screen.vm:149    push local 0
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
// Screen.vm:150    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:151    call Math.multiply 2
@Screen.drawPixel$ret.2  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawPixel$ret.2)
// Screen.vm:152    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:153    pop local 1
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
// Screen.vm:154    push argument 1
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
// Screen.vm:155    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:156    call Math.multiply 2
@Screen.drawPixel$ret.3  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawPixel$ret.3)
// Screen.vm:157    push local 0
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
// Screen.vm:158    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:159    pop local 2
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
// Screen.vm:160    push local 2
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
// Screen.vm:161    push local 1
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
// Screen.vm:162    push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:163    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:164    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:165    push that 0
@THAT
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
// Screen.vm:166    call Screen.updateLocation 2
@Screen.drawPixel$ret.4  // push return address
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
@Screen.updateLocation // goto Screen.updateLocation
0;JMP
(Screen.drawPixel$ret.4)
// Screen.vm:167    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:168    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:169    return from Screen.drawPixel
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
// Screen.vm:170    function Screen.drawConditional 0
(Screen.drawConditional)
// Screen.vm:171    push argument 2
@ARG
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
// Screen.vm:172    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.drawConditional$IF_TRUE0
D;JNE
// Screen.vm:173    if-goto IF_FALSE0
@Screen.drawConditional$IF_FALSE0
0;JMP
// Screen.vm:174    label IF_TRUE0
(Screen.drawConditional$IF_TRUE0)
// Screen.vm:175    push argument 1
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
// Screen.vm:176    push argument 0
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
// Screen.vm:177    call Screen.drawPixel 2
@Screen.drawConditional$ret.0  // push return address
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
@Screen.drawPixel // goto Screen.drawPixel
0;JMP
(Screen.drawConditional$ret.0)
// Screen.vm:178    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:179    if-goto IF_END0
@Screen.drawConditional$IF_END0
0;JMP
// Screen.vm:180    label IF_FALSE0
(Screen.drawConditional$IF_FALSE0)
// Screen.vm:181    push argument 0
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
// Screen.vm:182    push argument 1
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
// Screen.vm:183    call Screen.drawPixel 2
@Screen.drawConditional$ret.1  // push return address
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
@Screen.drawPixel // goto Screen.drawPixel
0;JMP
(Screen.drawConditional$ret.1)
// Screen.vm:184    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:185    label IF_END0
(Screen.drawConditional$IF_END0)
// Screen.vm:186    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:187    return from Screen.drawConditional
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
// Screen.vm:188    function Screen.drawLine 11
(Screen.drawLine)
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
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:189    push argument 0
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
// Screen.vm:190    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:191    lt
@Screen.comp24
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
(Screen.comp24)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:192    push argument 2
@ARG
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
// Screen.vm:193    push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:194    gt
@Screen.comp25
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
(Screen.comp25)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:195    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:196    push argument 1
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
// Screen.vm:197    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:198    lt
@Screen.comp26
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
(Screen.comp26)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:199    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:200    push argument 3
@ARG
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
// Screen.vm:201    push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:202    gt
@Screen.comp27
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
(Screen.comp27)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:203    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:204    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.drawLine$IF_TRUE0
D;JNE
// Screen.vm:205    if-goto IF_FALSE0
@Screen.drawLine$IF_FALSE0
0;JMP
// Screen.vm:206    label IF_TRUE0
(Screen.drawLine$IF_TRUE0)
// Screen.vm:207    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:208    call Sys.error 1
@Screen.drawLine$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Screen.drawLine$ret.0)
// Screen.vm:209    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:210    label IF_FALSE0
(Screen.drawLine$IF_FALSE0)
// Screen.vm:211    push argument 2
@ARG
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
// Screen.vm:212    push argument 0
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
// Screen.vm:213    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:214    call Math.abs 1
@Screen.drawLine$ret.1  // push return address
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
@Math.abs // goto Math.abs
0;JMP
(Screen.drawLine$ret.1)
// Screen.vm:215    pop local 3
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
// Screen.vm:216    push argument 3
@ARG
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
// Screen.vm:217    push argument 1
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
// Screen.vm:218    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:219    call Math.abs 1
@Screen.drawLine$ret.2  // push return address
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
@Math.abs // goto Math.abs
0;JMP
(Screen.drawLine$ret.2)
// Screen.vm:220    pop local 2
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
// Screen.vm:221    push local 3
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
// Screen.vm:222    push local 2
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
// Screen.vm:223    lt
@Screen.comp28
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
(Screen.comp28)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:224    pop local 6
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@6
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:225    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:226    push argument 3
@ARG
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
// Screen.vm:227    push argument 1
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
// Screen.vm:228    lt
@Screen.comp29
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
(Screen.comp29)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:229    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Screen.vm:230    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:231    not
@SP
A=M-1
M=!M
// Screen.vm:232    push argument 2
@ARG
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
// Screen.vm:233    push argument 0
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
// Screen.vm:234    lt
@Screen.comp30
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
(Screen.comp30)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:235    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Screen.vm:236    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:237    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Screen.drawLine$IF_TRUE1
D;JNE
// Screen.vm:238    if-goto IF_FALSE1
@Screen.drawLine$IF_FALSE1
0;JMP
// Screen.vm:239    label IF_TRUE1
(Screen.drawLine$IF_TRUE1)
// Screen.vm:240    push argument 0
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
// Screen.vm:241    pop local 4
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@4
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:242    push argument 2
@ARG
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
// Screen.vm:243    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:244    push local 4
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
// Screen.vm:245    pop argument 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// Screen.vm:246    push argument 1
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
// Screen.vm:247    pop local 4
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@4
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:248    push argument 3
@ARG
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
// Screen.vm:249    pop argument 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// Screen.vm:250    push local 4
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
// Screen.vm:251    pop argument 3
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// Screen.vm:252    label IF_FALSE1
(Screen.drawLine$IF_FALSE1)
// Screen.vm:253    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:254    if IF_TRUE2
@SP
M=M-1
A=M
D=M
@Screen.drawLine$IF_TRUE2
D;JNE
// Screen.vm:255    if-goto IF_FALSE2
@Screen.drawLine$IF_FALSE2
0;JMP
// Screen.vm:256    label IF_TRUE2
(Screen.drawLine$IF_TRUE2)
// Screen.vm:257    push local 3
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
// Screen.vm:258    pop local 4
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@4
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:259    push local 2
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
// Screen.vm:260    pop local 3
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
// Screen.vm:261    push local 4
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
// Screen.vm:262    pop local 2
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
// Screen.vm:263    push argument 1
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
// Screen.vm:264    pop local 1
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
// Screen.vm:265    push argument 0
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
// Screen.vm:266    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:267    push argument 3
@ARG
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
// Screen.vm:268    pop local 8
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@8
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:269    push argument 0
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
// Screen.vm:270    push argument 2
@ARG
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
// Screen.vm:271    gt
@Screen.comp31
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
(Screen.comp31)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:272    pop local 7
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@7
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:273    if-goto IF_END2
@Screen.drawLine$IF_END2
0;JMP
// Screen.vm:274    label IF_FALSE2
(Screen.drawLine$IF_FALSE2)
// Screen.vm:275    push argument 0
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
// Screen.vm:276    pop local 1
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
// Screen.vm:277    push argument 1
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
// Screen.vm:278    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:279    push argument 2
@ARG
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
// Screen.vm:280    pop local 8
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@8
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:281    push argument 1
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
// Screen.vm:282    push argument 3
@ARG
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
// Screen.vm:283    gt
@Screen.comp32
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
(Screen.comp32)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:284    pop local 7
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@7
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:285    label IF_END2
(Screen.drawLine$IF_END2)
// Screen.vm:286    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:287    push local 2
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
// Screen.vm:288    call Math.multiply 2
@Screen.drawLine$ret.3  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawLine$ret.3)
// Screen.vm:289    push local 3
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
// Screen.vm:290    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:291    pop local 5
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@5
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:292    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:293    push local 2
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
// Screen.vm:294    call Math.multiply 2
@Screen.drawLine$ret.4  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawLine$ret.4)
// Screen.vm:295    pop local 9
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@9
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:296    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:297    push local 2
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
// Screen.vm:298    push local 3
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
// Screen.vm:299    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:300    call Math.multiply 2
@Screen.drawLine$ret.5  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawLine$ret.5)
// Screen.vm:301    pop local 10
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@10
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:302    push local 1
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
// Screen.vm:303    push local 0
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
// Screen.vm:304    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:305    call Screen.drawConditional 3
@Screen.drawLine$ret.6  // push return address
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
@8
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Screen.drawConditional // goto Screen.drawConditional
0;JMP
(Screen.drawLine$ret.6)
// Screen.vm:306    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:307    label WHILE_EXP0
(Screen.drawLine$WHILE_EXP0)
// Screen.vm:308    push local 1
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
// Screen.vm:309    push local 8
@LCL
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:310    lt
@Screen.comp33
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
(Screen.comp33)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:311    not
@SP
A=M-1
M=!M
// Screen.vm:312    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Screen.drawLine$WHILE_END0
D;JNE
// Screen.vm:313    push local 5
@LCL
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:314    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:315    lt
@Screen.comp34
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
(Screen.comp34)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:316    if IF_TRUE3
@SP
M=M-1
A=M
D=M
@Screen.drawLine$IF_TRUE3
D;JNE
// Screen.vm:317    if-goto IF_FALSE3
@Screen.drawLine$IF_FALSE3
0;JMP
// Screen.vm:318    label IF_TRUE3
(Screen.drawLine$IF_TRUE3)
// Screen.vm:319    push local 5
@LCL
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:320    push local 9
@LCL
D=M
@9
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:321    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:322    pop local 5
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@5
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:323    if-goto IF_END3
@Screen.drawLine$IF_END3
0;JMP
// Screen.vm:324    label IF_FALSE3
(Screen.drawLine$IF_FALSE3)
// Screen.vm:325    push local 5
@LCL
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:326    push local 10
@LCL
D=M
@10
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:327    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:328    pop local 5
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@5
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:329    push local 7
@LCL
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:330    if IF_TRUE4
@SP
M=M-1
A=M
D=M
@Screen.drawLine$IF_TRUE4
D;JNE
// Screen.vm:331    if-goto IF_FALSE4
@Screen.drawLine$IF_FALSE4
0;JMP
// Screen.vm:332    label IF_TRUE4
(Screen.drawLine$IF_TRUE4)
// Screen.vm:333    push local 0
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
// Screen.vm:334    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:335    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:336    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:337    if-goto IF_END4
@Screen.drawLine$IF_END4
0;JMP
// Screen.vm:338    label IF_FALSE4
(Screen.drawLine$IF_FALSE4)
// Screen.vm:339    push local 0
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
// Screen.vm:340    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:341    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:342    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:343    label IF_END4
(Screen.drawLine$IF_END4)
// Screen.vm:344    label IF_END3
(Screen.drawLine$IF_END3)
// Screen.vm:345    push local 1
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
// Screen.vm:346    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:347    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:348    pop local 1
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
// Screen.vm:349    push local 1
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
// Screen.vm:350    push local 0
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
// Screen.vm:351    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:352    call Screen.drawConditional 3
@Screen.drawLine$ret.7  // push return address
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
@8
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Screen.drawConditional // goto Screen.drawConditional
0;JMP
(Screen.drawLine$ret.7)
// Screen.vm:353    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:354    if-goto WHILE_EXP0
@Screen.drawLine$WHILE_EXP0
0;JMP
// Screen.vm:355    label WHILE_END0
(Screen.drawLine$WHILE_END0)
// Screen.vm:356    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:357    return from Screen.drawLine
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
// Screen.vm:358    function Screen.drawRectangle 9
(Screen.drawRectangle)
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
// Screen.vm:359    push argument 0
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
// Screen.vm:360    push argument 2
@ARG
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
// Screen.vm:361    gt
@Screen.comp35
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
(Screen.comp35)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:362    push argument 1
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
// Screen.vm:363    push argument 3
@ARG
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
// Screen.vm:364    gt
@Screen.comp36
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
(Screen.comp36)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:365    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:366    push argument 0
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
// Screen.vm:367    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:368    lt
@Screen.comp37
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
(Screen.comp37)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:369    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:370    push argument 2
@ARG
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
// Screen.vm:371    push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:372    gt
@Screen.comp38
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
(Screen.comp38)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:373    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:374    push argument 1
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
// Screen.vm:375    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:376    lt
@Screen.comp39
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
(Screen.comp39)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:377    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:378    push argument 3
@ARG
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
// Screen.vm:379    push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:380    gt
@Screen.comp40
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
(Screen.comp40)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:381    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:382    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.drawRectangle$IF_TRUE0
D;JNE
// Screen.vm:383    if-goto IF_FALSE0
@Screen.drawRectangle$IF_FALSE0
0;JMP
// Screen.vm:384    label IF_TRUE0
(Screen.drawRectangle$IF_TRUE0)
// Screen.vm:385    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:386    call Sys.error 1
@Screen.drawRectangle$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Screen.drawRectangle$ret.0)
// Screen.vm:387    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:388    label IF_FALSE0
(Screen.drawRectangle$IF_FALSE0)
// Screen.vm:389    push argument 0
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
// Screen.vm:390    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:391    call Math.divide 2
@Screen.drawRectangle$ret.1  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Screen.drawRectangle$ret.1)
// Screen.vm:392    pop local 3
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
// Screen.vm:393    push argument 0
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
// Screen.vm:394    push local 3
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
// Screen.vm:395    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:396    call Math.multiply 2
@Screen.drawRectangle$ret.2  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawRectangle$ret.2)
// Screen.vm:397    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:398    pop local 7
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@7
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:399    push argument 2
@ARG
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
// Screen.vm:400    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:401    call Math.divide 2
@Screen.drawRectangle$ret.3  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Screen.drawRectangle$ret.3)
// Screen.vm:402    pop local 4
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@4
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:403    push argument 2
@ARG
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
// Screen.vm:404    push local 4
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
// Screen.vm:405    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:406    call Math.multiply 2
@Screen.drawRectangle$ret.4  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawRectangle$ret.4)
// Screen.vm:407    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:408    pop local 8
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@8
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:409    push local 7
@LCL
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:410    push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:411    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:412    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:413    push that 0
@THAT
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
// Screen.vm:414    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:415    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:416    not
@SP
A=M-1
M=!M
// Screen.vm:417    pop local 6
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@6
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:418    push local 8
@LCL
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:419    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:420    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:421    push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:422    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:423    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:424    push that 0
@THAT
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
// Screen.vm:425    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:426    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:427    pop local 5
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@5
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:428    push argument 1
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
// Screen.vm:429    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:430    call Math.multiply 2
@Screen.drawRectangle$ret.5  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawRectangle$ret.5)
// Screen.vm:431    push local 3
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
// Screen.vm:432    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:433    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:434    push local 4
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
// Screen.vm:435    push local 3
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
// Screen.vm:436    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:437    pop local 2
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
// Screen.vm:438    label WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0)
// Screen.vm:439    push argument 1
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
// Screen.vm:440    push argument 3
@ARG
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
// Screen.vm:441    gt
@Screen.comp41
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
(Screen.comp41)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:442    not
@SP
A=M-1
M=!M
// Screen.vm:443    not
@SP
A=M-1
M=!M
// Screen.vm:444    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Screen.drawRectangle$WHILE_END0
D;JNE
// Screen.vm:445    push local 0
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
// Screen.vm:446    push local 2
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
// Screen.vm:447    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:448    pop local 1
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
// Screen.vm:449    push local 2
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
// Screen.vm:450    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:451    eq
@Screen.comp42
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
(Screen.comp42)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:452    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Screen.drawRectangle$IF_TRUE1
D;JNE
// Screen.vm:453    if-goto IF_FALSE1
@Screen.drawRectangle$IF_FALSE1
0;JMP
// Screen.vm:454    label IF_TRUE1
(Screen.drawRectangle$IF_TRUE1)
// Screen.vm:455    push local 0
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
// Screen.vm:456    push local 5
@LCL
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:457    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:458    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Screen.vm:459    call Screen.updateLocation 2
@Screen.drawRectangle$ret.6  // push return address
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
@Screen.updateLocation // goto Screen.updateLocation
0;JMP
(Screen.drawRectangle$ret.6)
// Screen.vm:460    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:461    if-goto IF_END1
@Screen.drawRectangle$IF_END1
0;JMP
// Screen.vm:462    label IF_FALSE1
(Screen.drawRectangle$IF_FALSE1)
// Screen.vm:463    push local 0
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
// Screen.vm:464    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:465    call Screen.updateLocation 2
@Screen.drawRectangle$ret.7  // push return address
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
@Screen.updateLocation // goto Screen.updateLocation
0;JMP
(Screen.drawRectangle$ret.7)
// Screen.vm:466    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:467    push local 0
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
// Screen.vm:468    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:469    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:470    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:471    label WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1)
// Screen.vm:472    push local 0
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
// Screen.vm:473    push local 1
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
// Screen.vm:474    lt
@Screen.comp43
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
(Screen.comp43)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:475    not
@SP
A=M-1
M=!M
// Screen.vm:476    if WHILE_END1
@SP
M=M-1
A=M
D=M
@Screen.drawRectangle$WHILE_END1
D;JNE
// Screen.vm:477    push local 0
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
// Screen.vm:478    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:479    neg
@SP
A=M-1
M=-M
// Screen.vm:480    call Screen.updateLocation 2
@Screen.drawRectangle$ret.8  // push return address
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
@Screen.updateLocation // goto Screen.updateLocation
0;JMP
(Screen.drawRectangle$ret.8)
// Screen.vm:481    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:482    push local 0
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
// Screen.vm:483    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:484    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:485    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:486    if-goto WHILE_EXP1
@Screen.drawRectangle$WHILE_EXP1
0;JMP
// Screen.vm:487    label WHILE_END1
(Screen.drawRectangle$WHILE_END1)
// Screen.vm:488    push local 1
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
// Screen.vm:489    push local 5
@LCL
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:490    call Screen.updateLocation 2
@Screen.drawRectangle$ret.9  // push return address
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
@Screen.updateLocation // goto Screen.updateLocation
0;JMP
(Screen.drawRectangle$ret.9)
// Screen.vm:491    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:492    label IF_END1
(Screen.drawRectangle$IF_END1)
// Screen.vm:493    push argument 1
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
// Screen.vm:494    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:495    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:496    pop argument 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// Screen.vm:497    push local 1
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
// Screen.vm:498    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:499    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:500    push local 2
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
// Screen.vm:501    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:502    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:503    if-goto WHILE_EXP0
@Screen.drawRectangle$WHILE_EXP0
0;JMP
// Screen.vm:504    label WHILE_END0
(Screen.drawRectangle$WHILE_END0)
// Screen.vm:505    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:506    return from Screen.drawRectangle
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
// Screen.vm:507    function Screen.drawHorizontal 11
(Screen.drawHorizontal)
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
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:508    push argument 1
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
// Screen.vm:509    push argument 2
@ARG
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
// Screen.vm:510    call Math.min 2
@Screen.drawHorizontal$ret.0  // push return address
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
@Math.min // goto Math.min
0;JMP
(Screen.drawHorizontal$ret.0)
// Screen.vm:511    pop local 7
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@7
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:512    push argument 1
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
// Screen.vm:513    push argument 2
@ARG
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
// Screen.vm:514    call Math.max 2
@Screen.drawHorizontal$ret.1  // push return address
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
@Math.max // goto Math.max
0;JMP
(Screen.drawHorizontal$ret.1)
// Screen.vm:515    pop local 8
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@8
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:516    push argument 0
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
// Screen.vm:517    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:518    neg
@SP
A=M-1
M=-M
// Screen.vm:519    gt
@Screen.comp44
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
(Screen.comp44)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:520    push argument 0
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
// Screen.vm:521    push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:522    lt
@Screen.comp45
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
(Screen.comp45)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:523    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Screen.vm:524    push local 7
@LCL
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:525    push constant 512
@512
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:526    lt
@Screen.comp46
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
(Screen.comp46)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:527    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Screen.vm:528    push local 8
@LCL
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:529    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:530    neg
@SP
A=M-1
M=-M
// Screen.vm:531    gt
@Screen.comp47
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
(Screen.comp47)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:532    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Screen.vm:533    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.drawHorizontal$IF_TRUE0
D;JNE
// Screen.vm:534    if-goto IF_FALSE0
@Screen.drawHorizontal$IF_FALSE0
0;JMP
// Screen.vm:535    label IF_TRUE0
(Screen.drawHorizontal$IF_TRUE0)
// Screen.vm:536    push local 7
@LCL
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:537    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:538    call Math.max 2
@Screen.drawHorizontal$ret.2  // push return address
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
@Math.max // goto Math.max
0;JMP
(Screen.drawHorizontal$ret.2)
// Screen.vm:539    pop local 7
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@7
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:540    push local 8
@LCL
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:541    push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:542    call Math.min 2
@Screen.drawHorizontal$ret.3  // push return address
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
@Math.min // goto Math.min
0;JMP
(Screen.drawHorizontal$ret.3)
// Screen.vm:543    pop local 8
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@8
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:544    push local 7
@LCL
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:545    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:546    call Math.divide 2
@Screen.drawHorizontal$ret.4  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Screen.drawHorizontal$ret.4)
// Screen.vm:547    pop local 1
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
// Screen.vm:548    push local 7
@LCL
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:549    push local 1
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
// Screen.vm:550    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:551    call Math.multiply 2
@Screen.drawHorizontal$ret.5  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawHorizontal$ret.5)
// Screen.vm:552    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:553    pop local 9
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@9
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:554    push local 8
@LCL
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:555    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:556    call Math.divide 2
@Screen.drawHorizontal$ret.6  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Screen.drawHorizontal$ret.6)
// Screen.vm:557    pop local 2
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
// Screen.vm:558    push local 8
@LCL
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:559    push local 2
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
// Screen.vm:560    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:561    call Math.multiply 2
@Screen.drawHorizontal$ret.7  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawHorizontal$ret.7)
// Screen.vm:562    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:563    pop local 10
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@10
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:564    push local 9
@LCL
D=M
@9
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:565    push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:566    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:567    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:568    push that 0
@THAT
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
// Screen.vm:569    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:570    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:571    not
@SP
A=M-1
M=!M
// Screen.vm:572    pop local 5
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@5
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:573    push local 10
@LCL
D=M
@10
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:574    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:575    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:576    push static 0
@Screen.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:577    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:578    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Screen.vm:579    push that 0
@THAT
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
// Screen.vm:580    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:581    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:582    pop local 4
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@4
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:583    push argument 0
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
// Screen.vm:584    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:585    call Math.multiply 2
@Screen.drawHorizontal$ret.8  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawHorizontal$ret.8)
// Screen.vm:586    push local 1
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
// Screen.vm:587    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:588    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:589    push local 2
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
// Screen.vm:590    push local 1
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
// Screen.vm:591    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:592    pop local 6
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@6
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:593    push local 0
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
// Screen.vm:594    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:595    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:596    pop local 3
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
// Screen.vm:597    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:598    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:599    eq
@Screen.comp48
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
(Screen.comp48)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:600    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Screen.drawHorizontal$IF_TRUE1
D;JNE
// Screen.vm:601    if-goto IF_FALSE1
@Screen.drawHorizontal$IF_FALSE1
0;JMP
// Screen.vm:602    label IF_TRUE1
(Screen.drawHorizontal$IF_TRUE1)
// Screen.vm:603    push local 0
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
// Screen.vm:604    push local 4
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
// Screen.vm:605    push local 5
@LCL
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:606    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Screen.vm:607    call Screen.updateLocation 2
@Screen.drawHorizontal$ret.9  // push return address
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
@Screen.updateLocation // goto Screen.updateLocation
0;JMP
(Screen.drawHorizontal$ret.9)
// Screen.vm:608    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:609    if-goto IF_END1
@Screen.drawHorizontal$IF_END1
0;JMP
// Screen.vm:610    label IF_FALSE1
(Screen.drawHorizontal$IF_FALSE1)
// Screen.vm:611    push local 0
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
// Screen.vm:612    push local 5
@LCL
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:613    call Screen.updateLocation 2
@Screen.drawHorizontal$ret.10  // push return address
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
@Screen.updateLocation // goto Screen.updateLocation
0;JMP
(Screen.drawHorizontal$ret.10)
// Screen.vm:614    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:615    push local 0
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
// Screen.vm:616    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:617    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:618    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:619    label WHILE_EXP0
(Screen.drawHorizontal$WHILE_EXP0)
// Screen.vm:620    push local 0
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
// Screen.vm:621    push local 3
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
// Screen.vm:622    lt
@Screen.comp49
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
(Screen.comp49)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:623    not
@SP
A=M-1
M=!M
// Screen.vm:624    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Screen.drawHorizontal$WHILE_END0
D;JNE
// Screen.vm:625    push local 0
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
// Screen.vm:626    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:627    neg
@SP
A=M-1
M=-M
// Screen.vm:628    call Screen.updateLocation 2
@Screen.drawHorizontal$ret.11  // push return address
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
@Screen.updateLocation // goto Screen.updateLocation
0;JMP
(Screen.drawHorizontal$ret.11)
// Screen.vm:629    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:630    push local 0
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
// Screen.vm:631    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:632    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:633    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:634    if-goto WHILE_EXP0
@Screen.drawHorizontal$WHILE_EXP0
0;JMP
// Screen.vm:635    label WHILE_END0
(Screen.drawHorizontal$WHILE_END0)
// Screen.vm:636    push local 3
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
// Screen.vm:637    push local 4
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
// Screen.vm:638    call Screen.updateLocation 2
@Screen.drawHorizontal$ret.12  // push return address
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
@Screen.updateLocation // goto Screen.updateLocation
0;JMP
(Screen.drawHorizontal$ret.12)
// Screen.vm:639    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:640    label IF_END1
(Screen.drawHorizontal$IF_END1)
// Screen.vm:641    label IF_FALSE0
(Screen.drawHorizontal$IF_FALSE0)
// Screen.vm:642    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:643    return from Screen.drawHorizontal
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
// Screen.vm:644    function Screen.drawSymetric 0
(Screen.drawSymetric)
// Screen.vm:645    push argument 1
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
// Screen.vm:646    push argument 3
@ARG
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
// Screen.vm:647    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:648    push argument 0
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
// Screen.vm:649    push argument 2
@ARG
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
// Screen.vm:650    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:651    push argument 0
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
// Screen.vm:652    push argument 2
@ARG
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
// Screen.vm:653    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:654    call Screen.drawHorizontal 3
@Screen.drawSymetric$ret.0  // push return address
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
@8
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Screen.drawHorizontal // goto Screen.drawHorizontal
0;JMP
(Screen.drawSymetric$ret.0)
// Screen.vm:655    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:656    push argument 1
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
// Screen.vm:657    push argument 3
@ARG
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
// Screen.vm:658    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:659    push argument 0
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
// Screen.vm:660    push argument 2
@ARG
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
// Screen.vm:661    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:662    push argument 0
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
// Screen.vm:663    push argument 2
@ARG
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
// Screen.vm:664    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:665    call Screen.drawHorizontal 3
@Screen.drawSymetric$ret.1  // push return address
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
@8
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Screen.drawHorizontal // goto Screen.drawHorizontal
0;JMP
(Screen.drawSymetric$ret.1)
// Screen.vm:666    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:667    push argument 1
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
// Screen.vm:668    push argument 2
@ARG
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
// Screen.vm:669    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:670    push argument 0
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
// Screen.vm:671    push argument 3
@ARG
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
// Screen.vm:672    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:673    push argument 0
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
// Screen.vm:674    push argument 3
@ARG
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
// Screen.vm:675    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:676    call Screen.drawHorizontal 3
@Screen.drawSymetric$ret.2  // push return address
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
@8
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Screen.drawHorizontal // goto Screen.drawHorizontal
0;JMP
(Screen.drawSymetric$ret.2)
// Screen.vm:677    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:678    push argument 1
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
// Screen.vm:679    push argument 2
@ARG
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
// Screen.vm:680    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:681    push argument 0
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
// Screen.vm:682    push argument 3
@ARG
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
// Screen.vm:683    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:684    push argument 0
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
// Screen.vm:685    push argument 3
@ARG
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
// Screen.vm:686    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:687    call Screen.drawHorizontal 3
@Screen.drawSymetric$ret.3  // push return address
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
@8
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Screen.drawHorizontal // goto Screen.drawHorizontal
0;JMP
(Screen.drawSymetric$ret.3)
// Screen.vm:688    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:689    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:690    return from Screen.drawSymetric
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
// Screen.vm:691    function Screen.drawCircle 3
(Screen.drawCircle)
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
// Screen.vm:692    push argument 0
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
// Screen.vm:693    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:694    lt
@Screen.comp50
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
(Screen.comp50)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:695    push argument 0
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
// Screen.vm:696    push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:697    gt
@Screen.comp51
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
(Screen.comp51)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:698    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:699    push argument 1
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
// Screen.vm:700    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:701    lt
@Screen.comp52
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
(Screen.comp52)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:702    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:703    push argument 1
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
// Screen.vm:704    push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:705    gt
@Screen.comp53
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
(Screen.comp53)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:706    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:707    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.drawCircle$IF_TRUE0
D;JNE
// Screen.vm:708    if-goto IF_FALSE0
@Screen.drawCircle$IF_FALSE0
0;JMP
// Screen.vm:709    label IF_TRUE0
(Screen.drawCircle$IF_TRUE0)
// Screen.vm:710    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:711    call Sys.error 1
@Screen.drawCircle$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Screen.drawCircle$ret.0)
// Screen.vm:712    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:713    label IF_FALSE0
(Screen.drawCircle$IF_FALSE0)
// Screen.vm:714    push argument 0
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
// Screen.vm:715    push argument 2
@ARG
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
// Screen.vm:716    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:717    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:718    lt
@Screen.comp54
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
(Screen.comp54)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:719    push argument 0
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
// Screen.vm:720    push argument 2
@ARG
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
// Screen.vm:721    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:722    push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:723    gt
@Screen.comp55
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
(Screen.comp55)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:724    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:725    push argument 1
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
// Screen.vm:726    push argument 2
@ARG
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
// Screen.vm:727    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:728    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:729    lt
@Screen.comp56
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
(Screen.comp56)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:730    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:731    push argument 1
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
// Screen.vm:732    push argument 2
@ARG
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
// Screen.vm:733    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:734    push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:735    gt
@Screen.comp57
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
(Screen.comp57)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:736    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Screen.vm:737    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Screen.drawCircle$IF_TRUE1
D;JNE
// Screen.vm:738    if-goto IF_FALSE1
@Screen.drawCircle$IF_FALSE1
0;JMP
// Screen.vm:739    label IF_TRUE1
(Screen.drawCircle$IF_TRUE1)
// Screen.vm:740    push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:741    call Sys.error 1
@Screen.drawCircle$ret.1  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Screen.drawCircle$ret.1)
// Screen.vm:742    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:743    label IF_FALSE1
(Screen.drawCircle$IF_FALSE1)
// Screen.vm:744    push argument 2
@ARG
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
// Screen.vm:745    pop local 1
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
// Screen.vm:746    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:747    push argument 2
@ARG
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
// Screen.vm:748    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:749    pop local 2
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
// Screen.vm:750    push argument 0
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
// Screen.vm:751    push argument 1
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
// Screen.vm:752    push local 0
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
// Screen.vm:753    push local 1
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
// Screen.vm:754    call Screen.drawSymetric 4
@Screen.drawCircle$ret.2  // push return address
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
@9
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Screen.drawSymetric // goto Screen.drawSymetric
0;JMP
(Screen.drawCircle$ret.2)
// Screen.vm:755    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:756    label WHILE_EXP0
(Screen.drawCircle$WHILE_EXP0)
// Screen.vm:757    push local 1
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
// Screen.vm:758    push local 0
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
// Screen.vm:759    gt
@Screen.comp58
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
(Screen.comp58)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:760    not
@SP
A=M-1
M=!M
// Screen.vm:761    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Screen.drawCircle$WHILE_END0
D;JNE
// Screen.vm:762    push local 2
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
// Screen.vm:763    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:764    lt
@Screen.comp59
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
(Screen.comp59)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Screen.vm:765    if IF_TRUE2
@SP
M=M-1
A=M
D=M
@Screen.drawCircle$IF_TRUE2
D;JNE
// Screen.vm:766    if-goto IF_FALSE2
@Screen.drawCircle$IF_FALSE2
0;JMP
// Screen.vm:767    label IF_TRUE2
(Screen.drawCircle$IF_TRUE2)
// Screen.vm:768    push local 2
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
// Screen.vm:769    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:770    push local 0
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
// Screen.vm:771    call Math.multiply 2
@Screen.drawCircle$ret.3  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawCircle$ret.3)
// Screen.vm:772    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:773    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:774    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:775    pop local 2
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
// Screen.vm:776    if-goto IF_END2
@Screen.drawCircle$IF_END2
0;JMP
// Screen.vm:777    label IF_FALSE2
(Screen.drawCircle$IF_FALSE2)
// Screen.vm:778    push local 2
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
// Screen.vm:779    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:780    push local 0
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
// Screen.vm:781    push local 1
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
// Screen.vm:782    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:783    call Math.multiply 2
@Screen.drawCircle$ret.4  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Screen.drawCircle$ret.4)
// Screen.vm:784    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:785    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:786    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:787    pop local 2
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
// Screen.vm:788    push local 1
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
// Screen.vm:789    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:790    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Screen.vm:791    pop local 1
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
// Screen.vm:792    label IF_END2
(Screen.drawCircle$IF_END2)
// Screen.vm:793    push local 0
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
// Screen.vm:794    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:795    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Screen.vm:796    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Screen.vm:797    push argument 0
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
// Screen.vm:798    push argument 1
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
// Screen.vm:799    push local 0
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
// Screen.vm:800    push local 1
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
// Screen.vm:801    call Screen.drawSymetric 4
@Screen.drawCircle$ret.5  // push return address
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
@9
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Screen.drawSymetric // goto Screen.drawSymetric
0;JMP
(Screen.drawCircle$ret.5)
// Screen.vm:802    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Screen.vm:803    if-goto WHILE_EXP0
@Screen.drawCircle$WHILE_EXP0
0;JMP
// Screen.vm:804    label WHILE_END0
(Screen.drawCircle$WHILE_END0)
// Screen.vm:805    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Screen.vm:806    return from Screen.drawCircle
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
// String.vm:1    function String.new 0
(String.new)
// String.vm:2    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:3    call Memory.alloc 1
@String.new$ret.0  // push return address
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
@Memory.alloc // goto Memory.alloc
0;JMP
(String.new$ret.0)
// String.vm:4    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// String.vm:5    push argument 0
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
// String.vm:6    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:7    lt
@String.comp60
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
(String.comp60)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:8    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.new$IF_TRUE0
D;JNE
// String.vm:9    if-goto IF_FALSE0
@String.new$IF_FALSE0
0;JMP
// String.vm:10    label IF_TRUE0
(String.new$IF_TRUE0)
// String.vm:11    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:12    call Sys.error 1
@String.new$ret.1  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(String.new$ret.1)
// String.vm:13    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:14    label IF_FALSE0
(String.new$IF_FALSE0)
// String.vm:15    push argument 0
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
// String.vm:16    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:17    gt
@String.comp61
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
(String.comp61)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:18    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@String.new$IF_TRUE1
D;JNE
// String.vm:19    if-goto IF_FALSE1
@String.new$IF_FALSE1
0;JMP
// String.vm:20    label IF_TRUE1
(String.new$IF_TRUE1)
// String.vm:21    push argument 0
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
// String.vm:22    call Array.new 1
@String.new$ret.2  // push return address
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
@Array.new // goto Array.new
0;JMP
(String.new$ret.2)
// String.vm:23    pop this 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
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
// String.vm:24    label IF_FALSE1
(String.new$IF_FALSE1)
// String.vm:25    push argument 0
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
// String.vm:26    pop this 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:27    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:28    pop this 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
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
// String.vm:29    push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// String.vm:30    return from String.new
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
// String.vm:31    function String.dispose 0
(String.dispose)
// String.vm:32    push argument 0
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
// String.vm:33    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// String.vm:34    push this 0
@THIS
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
// String.vm:35    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:36    gt
@String.comp62
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
(String.comp62)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:37    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.dispose$IF_TRUE0
D;JNE
// String.vm:38    if-goto IF_FALSE0
@String.dispose$IF_FALSE0
0;JMP
// String.vm:39    label IF_TRUE0
(String.dispose$IF_TRUE0)
// String.vm:40    push this 1
@THIS
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
// String.vm:41    call Array.dispose 1
@String.dispose$ret.0  // push return address
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
@Array.dispose // goto Array.dispose
0;JMP
(String.dispose$ret.0)
// String.vm:42    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:43    label IF_FALSE0
(String.dispose$IF_FALSE0)
// String.vm:44    push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// String.vm:45    call Memory.deAlloc 1
@String.dispose$ret.1  // push return address
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
@Memory.deAlloc // goto Memory.deAlloc
0;JMP
(String.dispose$ret.1)
// String.vm:46    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:47    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:48    return from String.dispose
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
// String.vm:49    function String.length 0
(String.length)
// String.vm:50    push argument 0
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
// String.vm:51    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// String.vm:52    push this 2
@THIS
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
// String.vm:53    return from String.length
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
// String.vm:54    function String.charAt 0
(String.charAt)
// String.vm:55    push argument 0
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
// String.vm:56    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// String.vm:57    push argument 1
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
// String.vm:58    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:59    lt
@String.comp63
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
(String.comp63)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:60    push argument 1
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
// String.vm:61    push this 2
@THIS
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
// String.vm:62    gt
@String.comp64
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
(String.comp64)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:63    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// String.vm:64    push argument 1
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
// String.vm:65    push this 2
@THIS
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
// String.vm:66    eq
@String.comp65
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
(String.comp65)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:67    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// String.vm:68    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.charAt$IF_TRUE0
D;JNE
// String.vm:69    if-goto IF_FALSE0
@String.charAt$IF_FALSE0
0;JMP
// String.vm:70    label IF_TRUE0
(String.charAt$IF_TRUE0)
// String.vm:71    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:72    call Sys.error 1
@String.charAt$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(String.charAt$ret.0)
// String.vm:73    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:74    label IF_FALSE0
(String.charAt$IF_FALSE0)
// String.vm:75    push argument 1
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
// String.vm:76    push this 1
@THIS
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
// String.vm:77    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:78    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// String.vm:79    push that 0
@THAT
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
// String.vm:80    return from String.charAt
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
// String.vm:81    function String.setCharAt 0
(String.setCharAt)
// String.vm:82    push argument 0
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
// String.vm:83    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// String.vm:84    push argument 1
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
// String.vm:85    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:86    lt
@String.comp66
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
(String.comp66)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:87    push argument 1
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
// String.vm:88    push this 2
@THIS
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
// String.vm:89    gt
@String.comp67
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
(String.comp67)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:90    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// String.vm:91    push argument 1
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
// String.vm:92    push this 2
@THIS
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
// String.vm:93    eq
@String.comp68
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
(String.comp68)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:94    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// String.vm:95    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.setCharAt$IF_TRUE0
D;JNE
// String.vm:96    if-goto IF_FALSE0
@String.setCharAt$IF_FALSE0
0;JMP
// String.vm:97    label IF_TRUE0
(String.setCharAt$IF_TRUE0)
// String.vm:98    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:99    call Sys.error 1
@String.setCharAt$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(String.setCharAt$ret.0)
// String.vm:100    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:101    label IF_FALSE0
(String.setCharAt$IF_FALSE0)
// String.vm:102    push argument 1
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
// String.vm:103    push this 1
@THIS
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
// String.vm:104    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:105    push argument 2
@ARG
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
// String.vm:106    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:107    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// String.vm:108    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// String.vm:109    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:110    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:111    return from String.setCharAt
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
// String.vm:112    function String.appendChar 0
(String.appendChar)
// String.vm:113    push argument 0
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
// String.vm:114    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// String.vm:115    push this 2
@THIS
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
// String.vm:116    push this 0
@THIS
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
// String.vm:117    eq
@String.comp69
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
(String.comp69)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:118    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.appendChar$IF_TRUE0
D;JNE
// String.vm:119    if-goto IF_FALSE0
@String.appendChar$IF_FALSE0
0;JMP
// String.vm:120    label IF_TRUE0
(String.appendChar$IF_TRUE0)
// String.vm:121    push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:122    call Sys.error 1
@String.appendChar$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(String.appendChar$ret.0)
// String.vm:123    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:124    label IF_FALSE0
(String.appendChar$IF_FALSE0)
// String.vm:125    push this 2
@THIS
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
// String.vm:126    push this 1
@THIS
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
// String.vm:127    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:128    push argument 1
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
// String.vm:129    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:130    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// String.vm:131    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// String.vm:132    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:133    push this 2
@THIS
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
// String.vm:134    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:135    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:136    pop this 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
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
// String.vm:137    push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// String.vm:138    return from String.appendChar
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
// String.vm:139    function String.eraseLastChar 0
(String.eraseLastChar)
// String.vm:140    push argument 0
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
// String.vm:141    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// String.vm:142    push this 2
@THIS
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
// String.vm:143    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:144    eq
@String.comp70
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
(String.comp70)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:145    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.eraseLastChar$IF_TRUE0
D;JNE
// String.vm:146    if-goto IF_FALSE0
@String.eraseLastChar$IF_FALSE0
0;JMP
// String.vm:147    label IF_TRUE0
(String.eraseLastChar$IF_TRUE0)
// String.vm:148    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:149    call Sys.error 1
@String.eraseLastChar$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(String.eraseLastChar$ret.0)
// String.vm:150    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:151    label IF_FALSE0
(String.eraseLastChar$IF_FALSE0)
// String.vm:152    push this 2
@THIS
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
// String.vm:153    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:154    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// String.vm:155    pop this 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
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
// String.vm:156    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:157    return from String.eraseLastChar
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
// String.vm:158    function String.intValue 5
(String.intValue)
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
// String.vm:159    push argument 0
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
// String.vm:160    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// String.vm:161    push this 2
@THIS
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
// String.vm:162    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:163    eq
@String.comp71
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
(String.comp71)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:164    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.intValue$IF_TRUE0
D;JNE
// String.vm:165    if-goto IF_FALSE0
@String.intValue$IF_FALSE0
0;JMP
// String.vm:166    label IF_TRUE0
(String.intValue$IF_TRUE0)
// String.vm:167    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:168    return from String.intValue
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
// String.vm:169    label IF_FALSE0
(String.intValue$IF_FALSE0)
// String.vm:170    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:171    not
@SP
A=M-1
M=!M
// String.vm:172    pop local 3
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
// String.vm:173    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:174    push this 1
@THIS
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
// String.vm:175    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:176    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// String.vm:177    push that 0
@THAT
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
// String.vm:178    push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:179    eq
@String.comp72
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
(String.comp72)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:180    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@String.intValue$IF_TRUE1
D;JNE
// String.vm:181    if-goto IF_FALSE1
@String.intValue$IF_FALSE1
0;JMP
// String.vm:182    label IF_TRUE1
(String.intValue$IF_TRUE1)
// String.vm:183    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:184    not
@SP
A=M-1
M=!M
// String.vm:185    pop local 4
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@4
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:186    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:187    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:188    label IF_FALSE1
(String.intValue$IF_FALSE1)
// String.vm:189    label WHILE_EXP0
(String.intValue$WHILE_EXP0)
// String.vm:190    push local 0
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
// String.vm:191    push this 2
@THIS
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
// String.vm:192    lt
@String.comp73
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
(String.comp73)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:193    push local 3
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
// String.vm:194    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// String.vm:195    not
@SP
A=M-1
M=!M
// String.vm:196    if WHILE_END0
@SP
M=M-1
A=M
D=M
@String.intValue$WHILE_END0
D;JNE
// String.vm:197    push local 0
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
// String.vm:198    push this 1
@THIS
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
// String.vm:199    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:200    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// String.vm:201    push that 0
@THAT
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
// String.vm:202    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:203    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// String.vm:204    pop local 2
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
// String.vm:205    push local 2
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
// String.vm:206    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:207    lt
@String.comp74
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
(String.comp74)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:208    push local 2
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
// String.vm:209    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:210    gt
@String.comp75
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
(String.comp75)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:211    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// String.vm:212    not
@SP
A=M-1
M=!M
// String.vm:213    pop local 3
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
// String.vm:214    push local 3
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
// String.vm:215    if IF_TRUE2
@SP
M=M-1
A=M
D=M
@String.intValue$IF_TRUE2
D;JNE
// String.vm:216    if-goto IF_FALSE2
@String.intValue$IF_FALSE2
0;JMP
// String.vm:217    label IF_TRUE2
(String.intValue$IF_TRUE2)
// String.vm:218    push local 1
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
// String.vm:219    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:220    call Math.multiply 2
@String.intValue$ret.0  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(String.intValue$ret.0)
// String.vm:221    push local 2
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
// String.vm:222    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:223    pop local 1
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
// String.vm:224    push local 0
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
// String.vm:225    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:226    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:227    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:228    label IF_FALSE2
(String.intValue$IF_FALSE2)
// String.vm:229    if-goto WHILE_EXP0
@String.intValue$WHILE_EXP0
0;JMP
// String.vm:230    label WHILE_END0
(String.intValue$WHILE_END0)
// String.vm:231    push local 4
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
// String.vm:232    if IF_TRUE3
@SP
M=M-1
A=M
D=M
@String.intValue$IF_TRUE3
D;JNE
// String.vm:233    if-goto IF_FALSE3
@String.intValue$IF_FALSE3
0;JMP
// String.vm:234    label IF_TRUE3
(String.intValue$IF_TRUE3)
// String.vm:235    push local 1
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
// String.vm:236    neg
@SP
A=M-1
M=-M
// String.vm:237    pop local 1
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
// String.vm:238    label IF_FALSE3
(String.intValue$IF_FALSE3)
// String.vm:239    push local 1
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
// String.vm:240    return from String.intValue
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
// String.vm:241    function String.setInt 4
(String.setInt)
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
// String.vm:242    push argument 0
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
// String.vm:243    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// String.vm:244    push this 0
@THIS
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
// String.vm:245    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:246    eq
@String.comp76
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
(String.comp76)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:247    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.setInt$IF_TRUE0
D;JNE
// String.vm:248    if-goto IF_FALSE0
@String.setInt$IF_FALSE0
0;JMP
// String.vm:249    label IF_TRUE0
(String.setInt$IF_TRUE0)
// String.vm:250    push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:251    call Sys.error 1
@String.setInt$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(String.setInt$ret.0)
// String.vm:252    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:253    label IF_FALSE0
(String.setInt$IF_FALSE0)
// String.vm:254    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:255    call Array.new 1
@String.setInt$ret.1  // push return address
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
@Array.new // goto Array.new
0;JMP
(String.setInt$ret.1)
// String.vm:256    pop local 2
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
// String.vm:257    push argument 1
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
// String.vm:258    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:259    lt
@String.comp77
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
(String.comp77)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:260    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@String.setInt$IF_TRUE1
D;JNE
// String.vm:261    if-goto IF_FALSE1
@String.setInt$IF_FALSE1
0;JMP
// String.vm:262    label IF_TRUE1
(String.setInt$IF_TRUE1)
// String.vm:263    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:264    not
@SP
A=M-1
M=!M
// String.vm:265    pop local 3
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
// String.vm:266    push argument 1
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
// String.vm:267    neg
@SP
A=M-1
M=-M
// String.vm:268    pop argument 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// String.vm:269    label IF_FALSE1
(String.setInt$IF_FALSE1)
// String.vm:270    push argument 1
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
// String.vm:271    pop local 1
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
// String.vm:272    label WHILE_EXP0
(String.setInt$WHILE_EXP0)
// String.vm:273    push local 1
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
// String.vm:274    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:275    gt
@String.comp78
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
(String.comp78)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:276    not
@SP
A=M-1
M=!M
// String.vm:277    if WHILE_END0
@SP
M=M-1
A=M
D=M
@String.setInt$WHILE_END0
D;JNE
// String.vm:278    push argument 1
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
// String.vm:279    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:280    call Math.divide 2
@String.setInt$ret.2  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(String.setInt$ret.2)
// String.vm:281    pop local 1
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
// String.vm:282    push local 0
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
// String.vm:283    push local 2
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
// String.vm:284    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:285    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:286    push argument 1
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
// String.vm:287    push local 1
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
// String.vm:288    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:289    call Math.multiply 2
@String.setInt$ret.3  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(String.setInt$ret.3)
// String.vm:290    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// String.vm:291    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:292    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:293    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// String.vm:294    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// String.vm:295    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:296    push local 0
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
// String.vm:297    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:298    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:299    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:300    push local 1
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
// String.vm:301    pop argument 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// String.vm:302    if-goto WHILE_EXP0
@String.setInt$WHILE_EXP0
0;JMP
// String.vm:303    label WHILE_END0
(String.setInt$WHILE_END0)
// String.vm:304    push local 3
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
// String.vm:305    if IF_TRUE2
@SP
M=M-1
A=M
D=M
@String.setInt$IF_TRUE2
D;JNE
// String.vm:306    if-goto IF_FALSE2
@String.setInt$IF_FALSE2
0;JMP
// String.vm:307    label IF_TRUE2
(String.setInt$IF_TRUE2)
// String.vm:308    push local 0
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
// String.vm:309    push local 2
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
// String.vm:310    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:311    push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:312    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:313    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// String.vm:314    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// String.vm:315    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:316    push local 0
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
// String.vm:317    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:318    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:319    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:320    label IF_FALSE2
(String.setInt$IF_FALSE2)
// String.vm:321    push this 0
@THIS
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
// String.vm:322    push local 0
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
// String.vm:323    lt
@String.comp79
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
(String.comp79)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:324    if IF_TRUE3
@SP
M=M-1
A=M
D=M
@String.setInt$IF_TRUE3
D;JNE
// String.vm:325    if-goto IF_FALSE3
@String.setInt$IF_FALSE3
0;JMP
// String.vm:326    label IF_TRUE3
(String.setInt$IF_TRUE3)
// String.vm:327    push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:328    call Sys.error 1
@String.setInt$ret.4  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(String.setInt$ret.4)
// String.vm:329    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:330    label IF_FALSE3
(String.setInt$IF_FALSE3)
// String.vm:331    push local 0
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
// String.vm:332    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:333    eq
@String.comp80
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
(String.comp80)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:334    if IF_TRUE4
@SP
M=M-1
A=M
D=M
@String.setInt$IF_TRUE4
D;JNE
// String.vm:335    if-goto IF_FALSE4
@String.setInt$IF_FALSE4
0;JMP
// String.vm:336    label IF_TRUE4
(String.setInt$IF_TRUE4)
// String.vm:337    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:338    push this 1
@THIS
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
// String.vm:339    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:340    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:341    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:342    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// String.vm:343    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// String.vm:344    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:345    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:346    pop this 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
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
// String.vm:347    if-goto IF_END4
@String.setInt$IF_END4
0;JMP
// String.vm:348    label IF_FALSE4
(String.setInt$IF_FALSE4)
// String.vm:349    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:350    pop this 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
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
// String.vm:351    label WHILE_EXP1
(String.setInt$WHILE_EXP1)
// String.vm:352    push this 2
@THIS
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
// String.vm:353    push local 0
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
// String.vm:354    lt
@String.comp81
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
(String.comp81)
@SP
A=M-1
M=D // Write result of comparison op to stack
// String.vm:355    not
@SP
A=M-1
M=!M
// String.vm:356    if WHILE_END1
@SP
M=M-1
A=M
D=M
@String.setInt$WHILE_END1
D;JNE
// String.vm:357    push this 2
@THIS
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
// String.vm:358    push this 1
@THIS
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
// String.vm:359    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:360    push local 0
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
// String.vm:361    push this 2
@THIS
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
// String.vm:362    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:363    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:364    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// String.vm:365    push local 2
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
// String.vm:366    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:367    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// String.vm:368    push that 0
@THAT
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
// String.vm:369    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:370    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// String.vm:371    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// String.vm:372    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// String.vm:373    push this 2
@THIS
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
// String.vm:374    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:375    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// String.vm:376    pop this 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
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
// String.vm:377    if-goto WHILE_EXP1
@String.setInt$WHILE_EXP1
0;JMP
// String.vm:378    label WHILE_END1
(String.setInt$WHILE_END1)
// String.vm:379    label IF_END4
(String.setInt$IF_END4)
// String.vm:380    push local 2
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
// String.vm:381    call Array.dispose 1
@String.setInt$ret.5  // push return address
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
@Array.dispose // goto Array.dispose
0;JMP
(String.setInt$ret.5)
// String.vm:382    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// String.vm:383    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:384    return from String.setInt
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
// String.vm:385    function String.newLine 0
(String.newLine)
// String.vm:386    push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:387    return from String.newLine
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
// String.vm:388    function String.backSpace 0
(String.backSpace)
// String.vm:389    push constant 129
@129
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:390    return from String.backSpace
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
// String.vm:391    function String.doubleQuote 0
(String.doubleQuote)
// String.vm:392    push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1
// String.vm:393    return from String.doubleQuote
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
// Sys.vm:1    function Sys.init 0
(Sys.init)
// Sys.vm:2    call Memory.init 0
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
@Memory.init // goto Memory.init
0;JMP
(Sys.init$ret.0)
// Sys.vm:3    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:4    call Math.init 0
@Sys.init$ret.1  // push return address
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
@Math.init // goto Math.init
0;JMP
(Sys.init$ret.1)
// Sys.vm:5    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:6    call Screen.init 0
@Sys.init$ret.2  // push return address
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
@Screen.init // goto Screen.init
0;JMP
(Sys.init$ret.2)
// Sys.vm:7    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:8    call Output.init 0
@Sys.init$ret.3  // push return address
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
@Output.init // goto Output.init
0;JMP
(Sys.init$ret.3)
// Sys.vm:9    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:10    call Keyboard.init 0
@Sys.init$ret.4  // push return address
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
@Keyboard.init // goto Keyboard.init
0;JMP
(Sys.init$ret.4)
// Sys.vm:11    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:12    call Main.main 0
@Sys.init$ret.5  // push return address
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
@Main.main // goto Main.main
0;JMP
(Sys.init$ret.5)
// Sys.vm:13    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:14    call Sys.halt 0
@Sys.init$ret.6  // push return address
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
@Sys.halt // goto Sys.halt
0;JMP
(Sys.init$ret.6)
// Sys.vm:15    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:16    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:17    return from Sys.init
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
// Sys.vm:18    function Sys.halt 0
(Sys.halt)
// Sys.vm:19    label WHILE_EXP0
(Sys.halt$WHILE_EXP0)
// Sys.vm:20    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:21    not
@SP
A=M-1
M=!M
// Sys.vm:22    not
@SP
A=M-1
M=!M
// Sys.vm:23    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Sys.halt$WHILE_END0
D;JNE
// Sys.vm:24    if-goto WHILE_EXP0
@Sys.halt$WHILE_EXP0
0;JMP
// Sys.vm:25    label WHILE_END0
(Sys.halt$WHILE_END0)
// Sys.vm:26    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:27    return from Sys.halt
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
// Sys.vm:28    function Sys.wait 1
(Sys.wait)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:29    push argument 0
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
// Sys.vm:30    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:31    lt
@Sys.comp82
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
(Sys.comp82)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Sys.vm:32    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Sys.wait$IF_TRUE0
D;JNE
// Sys.vm:33    if-goto IF_FALSE0
@Sys.wait$IF_FALSE0
0;JMP
// Sys.vm:34    label IF_TRUE0
(Sys.wait$IF_TRUE0)
// Sys.vm:35    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:36    call Sys.error 1
@Sys.wait$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Sys.wait$ret.0)
// Sys.vm:37    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:38    label IF_FALSE0
(Sys.wait$IF_FALSE0)
// Sys.vm:39    label WHILE_EXP0
(Sys.wait$WHILE_EXP0)
// Sys.vm:40    push argument 0
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
// Sys.vm:41    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:42    gt
@Sys.comp83
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
(Sys.comp83)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Sys.vm:43    not
@SP
A=M-1
M=!M
// Sys.vm:44    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Sys.wait$WHILE_END0
D;JNE
// Sys.vm:45    push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:46    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Sys.vm:47    label WHILE_EXP1
(Sys.wait$WHILE_EXP1)
// Sys.vm:48    push local 0
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
// Sys.vm:49    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:50    gt
@Sys.comp84
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
(Sys.comp84)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Sys.vm:51    not
@SP
A=M-1
M=!M
// Sys.vm:52    if WHILE_END1
@SP
M=M-1
A=M
D=M
@Sys.wait$WHILE_END1
D;JNE
// Sys.vm:53    push local 0
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
// Sys.vm:54    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:55    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Sys.vm:56    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Sys.vm:57    if-goto WHILE_EXP1
@Sys.wait$WHILE_EXP1
0;JMP
// Sys.vm:58    label WHILE_END1
(Sys.wait$WHILE_END1)
// Sys.vm:59    push argument 0
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
// Sys.vm:60    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:61    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Sys.vm:62    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Sys.vm:63    if-goto WHILE_EXP0
@Sys.wait$WHILE_EXP0
0;JMP
// Sys.vm:64    label WHILE_END0
(Sys.wait$WHILE_END0)
// Sys.vm:65    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:66    return from Sys.wait
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
// Sys.vm:67    function Sys.error 0
(Sys.error)
// Sys.vm:68    push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:69    call Output.printChar 1
@Sys.error$ret.0  // push return address
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
@Output.printChar // goto Output.printChar
0;JMP
(Sys.error$ret.0)
// Sys.vm:70    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:71    push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:72    call Output.printChar 1
@Sys.error$ret.1  // push return address
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
@Output.printChar // goto Output.printChar
0;JMP
(Sys.error$ret.1)
// Sys.vm:73    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:74    push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:75    call Output.printChar 1
@Sys.error$ret.2  // push return address
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
@Output.printChar // goto Output.printChar
0;JMP
(Sys.error$ret.2)
// Sys.vm:76    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:77    push argument 0
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
// Sys.vm:78    call Output.printInt 1
@Sys.error$ret.3  // push return address
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
@Output.printInt // goto Output.printInt
0;JMP
(Sys.error$ret.3)
// Sys.vm:79    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:80    call Sys.halt 0
@Sys.error$ret.4  // push return address
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
@Sys.halt // goto Sys.halt
0;JMP
(Sys.error$ret.4)
// Sys.vm:81    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Sys.vm:82    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Sys.vm:83    return from Sys.error
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
// Donut.vm:1    function Donut.new 0
(Donut.new)
// Donut.vm:2    push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:3    call Memory.alloc 1
@Donut.new$ret.0  // push return address
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
@Memory.alloc // goto Memory.alloc
0;JMP
(Donut.new$ret.0)
// Donut.vm:4    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// Donut.vm:5    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:6    pop this 2
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
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
// Donut.vm:7    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:8    pop this 3
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
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
// Donut.vm:9    push constant 216
@216
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:10    pop this 4
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@4
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:11    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:12    pop this 5
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@5
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:13    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:14    pop this 6
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@6
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:15    push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:16    pop this 7
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@7
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:17    push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:18    pop this 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:19    push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:20    pop this 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
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
// Donut.vm:21    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:22    pop this 16
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@16
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:23    call Trig.size 0
@Donut.new$ret.1  // push return address
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
@Trig.size // goto Trig.size
0;JMP
(Donut.new$ret.1)
// Donut.vm:24    pop this 14
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@14
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:25    call Trig.scale 0
@Donut.new$ret.2  // push return address
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
@Trig.scale // goto Trig.scale
0;JMP
(Donut.new$ret.2)
// Donut.vm:26    pop this 15
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@15
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:27    call Trig.cos 0
@Donut.new$ret.3  // push return address
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
@Trig.cos // goto Trig.cos
0;JMP
(Donut.new$ret.3)
// Donut.vm:28    pop this 13
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@13
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:29    call Trig.sin 0
@Donut.new$ret.4  // push return address
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
@Trig.sin // goto Trig.sin
0;JMP
(Donut.new$ret.4)
// Donut.vm:30    pop this 12
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@12
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:31    push this 6
@THIS
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:32    push this 12
@THIS
D=M
@12
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:33    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:34    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:35    push that 0
@THAT
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
// Donut.vm:36    pop this 8
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@8
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:37    push this 6
@THIS
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:38    push this 13
@THIS
D=M
@13
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:39    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:40    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:41    push that 0
@THAT
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
// Donut.vm:42    pop this 9
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@9
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:43    push this 7
@THIS
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:44    push this 12
@THIS
D=M
@12
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:45    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:46    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:47    push that 0
@THAT
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
// Donut.vm:48    pop this 10
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@10
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:49    push this 7
@THIS
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:50    push this 13
@THIS
D=M
@13
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:51    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:52    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:53    push that 0
@THAT
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
// Donut.vm:54    pop this 11
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@11
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:55    push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:56    return from Donut.new
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
// Donut.vm:57    function Donut.rotateX 0
(Donut.rotateX)
// Donut.vm:58    push argument 0
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
// Donut.vm:59    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// Donut.vm:60    push this 6
@THIS
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:61    push argument 1
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
// Donut.vm:62    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:63    call Trig.clamp 1
@Donut.rotateX$ret.0  // push return address
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
@Trig.clamp // goto Trig.clamp
0;JMP
(Donut.rotateX$ret.0)
// Donut.vm:64    pop this 6
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@6
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:65    push this 6
@THIS
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:66    push this 12
@THIS
D=M
@12
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:67    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:68    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:69    push that 0
@THAT
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
// Donut.vm:70    pop this 8
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@8
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:71    push this 6
@THIS
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:72    push this 13
@THIS
D=M
@13
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:73    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:74    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:75    push that 0
@THAT
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
// Donut.vm:76    pop this 9
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@9
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:77    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:78    return from Donut.rotateX
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
// Donut.vm:79    function Donut.rotateY 0
(Donut.rotateY)
// Donut.vm:80    push argument 0
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
// Donut.vm:81    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// Donut.vm:82    push this 7
@THIS
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:83    push argument 1
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
// Donut.vm:84    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:85    call Trig.clamp 1
@Donut.rotateY$ret.0  // push return address
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
@Trig.clamp // goto Trig.clamp
0;JMP
(Donut.rotateY$ret.0)
// Donut.vm:86    pop this 7
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@7
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:87    push this 7
@THIS
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:88    push this 12
@THIS
D=M
@12
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:89    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:90    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:91    push that 0
@THAT
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
// Donut.vm:92    pop this 10
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@10
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:93    push this 7
@THIS
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:94    push this 13
@THIS
D=M
@13
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:95    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:96    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:97    push that 0
@THAT
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
// Donut.vm:98    pop this 11
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THIS
D=M
@11
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:99    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:100    return from Donut.rotateY
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
// Donut.vm:101    function Donut.draw 17
(Donut.draw)
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
// Donut.vm:102    push argument 0
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
// Donut.vm:103    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// Donut.vm:104    call Screen.clearScreen 0
@Donut.draw$ret.0  // push return address
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
@Screen.clearScreen // goto Screen.clearScreen
0;JMP
(Donut.draw$ret.0)
// Donut.vm:105    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:106    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:107    pop local 5
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@5
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:108    label WHILE_EXP0
(Donut.draw$WHILE_EXP0)
// Donut.vm:109    push local 5
@LCL
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:110    push this 14
@THIS
D=M
@14
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:111    lt
@Donut.comp85
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
(Donut.comp85)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Donut.vm:112    not
@SP
A=M-1
M=!M
// Donut.vm:113    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Donut.draw$WHILE_END0
D;JNE
// Donut.vm:114    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:115    pop local 6
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@6
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:116    label WHILE_EXP1
(Donut.draw$WHILE_EXP1)
// Donut.vm:117    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:118    push this 14
@THIS
D=M
@14
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:119    lt
@Donut.comp86
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
(Donut.comp86)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Donut.vm:120    not
@SP
A=M-1
M=!M
// Donut.vm:121    if WHILE_END1
@SP
M=M-1
A=M
D=M
@Donut.draw$WHILE_END1
D;JNE
// Donut.vm:122    push local 5
@LCL
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:123    push this 12
@THIS
D=M
@12
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:124    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:125    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:126    push that 0
@THAT
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
// Donut.vm:127    pop local 10
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@10
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:128    push local 5
@LCL
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:129    push this 13
@THIS
D=M
@13
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:130    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:131    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:132    push that 0
@THAT
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
// Donut.vm:133    pop local 11
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@11
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:134    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:135    push this 12
@THIS
D=M
@12
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:136    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:137    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:138    push that 0
@THAT
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
// Donut.vm:139    pop local 12
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@12
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:140    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:141    push this 13
@THIS
D=M
@13
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:142    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:143    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Donut.vm:144    push that 0
@THAT
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
// Donut.vm:145    pop local 13
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@13
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:146    push this 3
@THIS
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
// Donut.vm:147    push this 2
@THIS
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
// Donut.vm:148    push local 11
@LCL
D=M
@11
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:149    call Math.multiply 2
@Donut.draw$ret.1  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.1)
// Donut.vm:150    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:151    call Math.divide 2
@Donut.draw$ret.2  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.2)
// Donut.vm:152    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:153    pop local 8
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@8
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:154    push this 2
@THIS
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
// Donut.vm:155    push local 10
@LCL
D=M
@10
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:156    call Math.multiply 2
@Donut.draw$ret.3  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.3)
// Donut.vm:157    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:158    call Math.divide 2
@Donut.draw$ret.4  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.4)
// Donut.vm:159    pop local 9
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@9
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:160    push this 8
@THIS
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:161    push local 12
@LCL
D=M
@12
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:162    call Math.multiply 2
@Donut.draw$ret.5  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.5)
// Donut.vm:163    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:164    call Math.divide 2
@Donut.draw$ret.6  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.6)
// Donut.vm:165    pop local 14
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@14
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:166    push local 9
@LCL
D=M
@9
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:167    push this 9
@THIS
D=M
@9
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:168    call Math.multiply 2
@Donut.draw$ret.7  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.7)
// Donut.vm:169    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:170    call Math.divide 2
@Donut.draw$ret.8  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.8)
// Donut.vm:171    pop local 15
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@15
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:172    push local 8
@LCL
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:173    push this 9
@THIS
D=M
@9
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:174    call Math.multiply 2
@Donut.draw$ret.9  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.9)
// Donut.vm:175    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:176    call Math.divide 2
@Donut.draw$ret.10  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.10)
// Donut.vm:177    pop local 16
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@16
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:178    push local 8
@LCL
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:179    push this 11
@THIS
D=M
@11
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:180    push local 13
@LCL
D=M
@13
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:181    call Math.multiply 2
@Donut.draw$ret.11  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.11)
// Donut.vm:182    push local 14
@LCL
D=M
@14
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:183    push this 10
@THIS
D=M
@10
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:184    call Math.multiply 2
@Donut.draw$ret.12  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.12)
// Donut.vm:185    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:186    call Math.multiply 2
@Donut.draw$ret.13  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.13)
// Donut.vm:187    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:188    call Math.divide 2
@Donut.draw$ret.14  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.14)
// Donut.vm:189    push local 15
@LCL
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:190    push this 10
@THIS
D=M
@10
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:191    call Math.multiply 2
@Donut.draw$ret.15  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.15)
// Donut.vm:192    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:193    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:194    call Math.divide 2
@Donut.draw$ret.16  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.16)
// Donut.vm:195    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:196    push local 8
@LCL
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:197    push this 10
@THIS
D=M
@10
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:198    push local 13
@LCL
D=M
@13
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:199    call Math.multiply 2
@Donut.draw$ret.17  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.17)
// Donut.vm:200    push local 14
@LCL
D=M
@14
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:201    push this 11
@THIS
D=M
@11
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:202    call Math.multiply 2
@Donut.draw$ret.18  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.18)
// Donut.vm:203    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:204    call Math.multiply 2
@Donut.draw$ret.19  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.19)
// Donut.vm:205    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:206    call Math.divide 2
@Donut.draw$ret.20  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.20)
// Donut.vm:207    push local 15
@LCL
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:208    push this 11
@THIS
D=M
@11
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:209    call Math.multiply 2
@Donut.draw$ret.21  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.21)
// Donut.vm:210    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:211    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:212    call Math.divide 2
@Donut.draw$ret.22  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.22)
// Donut.vm:213    pop local 1
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
// Donut.vm:214    push this 5
@THIS
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:215    push local 16
@LCL
D=M
@16
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:216    push local 12
@LCL
D=M
@12
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:217    call Math.multiply 2
@Donut.draw$ret.23  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.23)
// Donut.vm:218    push local 9
@LCL
D=M
@9
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:219    push this 8
@THIS
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:220    call Math.multiply 2
@Donut.draw$ret.24  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.24)
// Donut.vm:221    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:222    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:223    call Math.divide 2
@Donut.draw$ret.25  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.25)
// Donut.vm:224    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:225    pop local 2
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
// Donut.vm:226    push local 2
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
// Donut.vm:227    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:228    gt
@Donut.comp87
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
(Donut.comp87)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Donut.vm:229    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Donut.draw$IF_TRUE0
D;JNE
// Donut.vm:230    if-goto IF_FALSE0
@Donut.draw$IF_FALSE0
0;JMP
// Donut.vm:231    label IF_TRUE0
(Donut.draw$IF_TRUE0)
// Donut.vm:232    push this 0
@THIS
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
// Donut.vm:233    push this 4
@THIS
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
// Donut.vm:234    push local 0
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
// Donut.vm:235    call Math.multiply 2
@Donut.draw$ret.26  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.26)
// Donut.vm:236    push local 2
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
// Donut.vm:237    call Math.divide 2
@Donut.draw$ret.27  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.27)
// Donut.vm:238    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:239    pop local 3
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
// Donut.vm:240    push this 1
@THIS
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
// Donut.vm:241    push this 4
@THIS
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
// Donut.vm:242    push local 1
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
// Donut.vm:243    call Math.multiply 2
@Donut.draw$ret.28  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.28)
// Donut.vm:244    push local 2
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
// Donut.vm:245    call Math.divide 2
@Donut.draw$ret.29  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.29)
// Donut.vm:246    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:247    pop local 4
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@4
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:248    push this 16
@THIS
D=M
@16
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:249    push local 13
@LCL
D=M
@13
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:250    push local 11
@LCL
D=M
@11
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:251    call Math.multiply 2
@Donut.draw$ret.30  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.30)
// Donut.vm:252    push this 10
@THIS
D=M
@10
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:253    call Math.multiply 2
@Donut.draw$ret.31  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.31)
// Donut.vm:254    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:255    call Math.divide 2
@Donut.draw$ret.32  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.32)
// Donut.vm:256    push this 9
@THIS
D=M
@9
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:257    push local 11
@LCL
D=M
@11
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:258    call Math.multiply 2
@Donut.draw$ret.33  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.33)
// Donut.vm:259    push local 12
@LCL
D=M
@12
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:260    call Math.multiply 2
@Donut.draw$ret.34  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.34)
// Donut.vm:261    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:262    call Math.divide 2
@Donut.draw$ret.35  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.35)
// Donut.vm:263    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:264    push this 8
@THIS
D=M
@8
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:265    push local 10
@LCL
D=M
@10
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:266    call Math.multiply 2
@Donut.draw$ret.36  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.36)
// Donut.vm:267    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:268    push this 11
@THIS
D=M
@11
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:269    push this 9
@THIS
D=M
@9
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:270    push local 10
@LCL
D=M
@10
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:271    call Math.multiply 2
@Donut.draw$ret.37  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.37)
// Donut.vm:272    push local 11
@LCL
D=M
@11
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:273    push local 14
@LCL
D=M
@14
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:274    call Math.multiply 2
@Donut.draw$ret.38  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.38)
// Donut.vm:275    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:276    call Math.multiply 2
@Donut.draw$ret.39  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.39)
// Donut.vm:277    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:278    call Math.divide 2
@Donut.draw$ret.40  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.40)
// Donut.vm:279    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:280    call Math.multiply 2
@Donut.draw$ret.41  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Donut.draw$ret.41)
// Donut.vm:281    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:282    call Math.divide 2
@Donut.draw$ret.42  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.42)
// Donut.vm:283    push this 15
@THIS
D=M
@15
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:284    call Math.divide 2
@Donut.draw$ret.43  // push return address
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
@Math.divide // goto Math.divide
0;JMP
(Donut.draw$ret.43)
// Donut.vm:285    pop local 7
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@7
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:286    push local 3
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
// Donut.vm:287    push local 4
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
// Donut.vm:288    push local 7
@LCL
D=M
@7
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:289    call Donut.drawPoint 3
@Donut.draw$ret.44  // push return address
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
@8
D=D-A
@ARG
M=D
@SP  // LCL = SP
D=M
@LCL
M=D
@Donut.drawPoint // goto Donut.drawPoint
0;JMP
(Donut.draw$ret.44)
// Donut.vm:290    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:291    label IF_FALSE0
(Donut.draw$IF_FALSE0)
// Donut.vm:292    push local 6
@LCL
D=M
@6
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:293    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:294    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:295    pop local 6
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@6
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:296    if-goto WHILE_EXP1
@Donut.draw$WHILE_EXP1
0;JMP
// Donut.vm:297    label WHILE_END1
(Donut.draw$WHILE_END1)
// Donut.vm:298    push local 5
@LCL
D=M
@5
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:299    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:300    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:301    pop local 5
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@5
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Donut.vm:302    if-goto WHILE_EXP0
@Donut.draw$WHILE_EXP0
0;JMP
// Donut.vm:303    label WHILE_END0
(Donut.draw$WHILE_END0)
// Donut.vm:304    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:305    return from Donut.draw
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
// Donut.vm:306    function Donut.drawPoint 0
(Donut.drawPoint)
// Donut.vm:307    push argument 2
@ARG
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
// Donut.vm:308    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:309    neg
@SP
A=M-1
M=-M
// Donut.vm:310    gt
@Donut.comp88
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
(Donut.comp88)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Donut.vm:311    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Donut.drawPoint$IF_TRUE0
D;JNE
// Donut.vm:312    if-goto IF_FALSE0
@Donut.drawPoint$IF_FALSE0
0;JMP
// Donut.vm:313    label IF_TRUE0
(Donut.drawPoint$IF_TRUE0)
// Donut.vm:314    push argument 0
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
// Donut.vm:315    push argument 1
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
// Donut.vm:316    call Screen.drawPixel 2
@Donut.drawPoint$ret.0  // push return address
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
@Screen.drawPixel // goto Screen.drawPixel
0;JMP
(Donut.drawPoint$ret.0)
// Donut.vm:317    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:318    label IF_FALSE0
(Donut.drawPoint$IF_FALSE0)
// Donut.vm:319    push argument 2
@ARG
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
// Donut.vm:320    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:321    neg
@SP
A=M-1
M=-M
// Donut.vm:322    gt
@Donut.comp89
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
(Donut.comp89)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Donut.vm:323    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Donut.drawPoint$IF_TRUE1
D;JNE
// Donut.vm:324    if-goto IF_FALSE1
@Donut.drawPoint$IF_FALSE1
0;JMP
// Donut.vm:325    label IF_TRUE1
(Donut.drawPoint$IF_TRUE1)
// Donut.vm:326    push argument 0
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
// Donut.vm:327    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:328    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:329    push argument 1
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
// Donut.vm:330    call Screen.drawPixel 2
@Donut.drawPoint$ret.1  // push return address
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
@Screen.drawPixel // goto Screen.drawPixel
0;JMP
(Donut.drawPoint$ret.1)
// Donut.vm:331    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:332    push argument 0
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
// Donut.vm:333    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:334    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:335    push argument 1
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
// Donut.vm:336    call Screen.drawPixel 2
@Donut.drawPoint$ret.2  // push return address
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
@Screen.drawPixel // goto Screen.drawPixel
0;JMP
(Donut.drawPoint$ret.2)
// Donut.vm:337    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:338    label IF_FALSE1
(Donut.drawPoint$IF_FALSE1)
// Donut.vm:339    push argument 2
@ARG
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
// Donut.vm:340    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:341    gt
@Donut.comp90
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
(Donut.comp90)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Donut.vm:342    if IF_TRUE2
@SP
M=M-1
A=M
D=M
@Donut.drawPoint$IF_TRUE2
D;JNE
// Donut.vm:343    if-goto IF_FALSE2
@Donut.drawPoint$IF_FALSE2
0;JMP
// Donut.vm:344    label IF_TRUE2
(Donut.drawPoint$IF_TRUE2)
// Donut.vm:345    push argument 0
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
// Donut.vm:346    push argument 1
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
// Donut.vm:347    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:348    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:349    call Screen.drawPixel 2
@Donut.drawPoint$ret.3  // push return address
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
@Screen.drawPixel // goto Screen.drawPixel
0;JMP
(Donut.drawPoint$ret.3)
// Donut.vm:350    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:351    push argument 0
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
// Donut.vm:352    push argument 1
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
// Donut.vm:353    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:354    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:355    call Screen.drawPixel 2
@Donut.drawPoint$ret.4  // push return address
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
@Screen.drawPixel // goto Screen.drawPixel
0;JMP
(Donut.drawPoint$ret.4)
// Donut.vm:356    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:357    label IF_FALSE2
(Donut.drawPoint$IF_FALSE2)
// Donut.vm:358    push argument 2
@ARG
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
// Donut.vm:359    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:360    gt
@Donut.comp91
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
(Donut.comp91)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Donut.vm:361    if IF_TRUE3
@SP
M=M-1
A=M
D=M
@Donut.drawPoint$IF_TRUE3
D;JNE
// Donut.vm:362    if-goto IF_FALSE3
@Donut.drawPoint$IF_FALSE3
0;JMP
// Donut.vm:363    label IF_TRUE3
(Donut.drawPoint$IF_TRUE3)
// Donut.vm:364    push argument 0
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
// Donut.vm:365    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:366    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:367    push argument 1
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
// Donut.vm:368    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:369    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:370    call Screen.drawPixel 2
@Donut.drawPoint$ret.5  // push return address
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
@Screen.drawPixel // goto Screen.drawPixel
0;JMP
(Donut.drawPoint$ret.5)
// Donut.vm:371    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:372    push argument 0
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
// Donut.vm:373    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:374    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:375    push argument 1
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
// Donut.vm:376    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:377    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:378    call Screen.drawPixel 2
@Donut.drawPoint$ret.6  // push return address
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
@Screen.drawPixel // goto Screen.drawPixel
0;JMP
(Donut.drawPoint$ret.6)
// Donut.vm:379    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:380    label IF_FALSE3
(Donut.drawPoint$IF_FALSE3)
// Donut.vm:381    push argument 2
@ARG
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
// Donut.vm:382    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:383    gt
@Donut.comp92
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
(Donut.comp92)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Donut.vm:384    if IF_TRUE4
@SP
M=M-1
A=M
D=M
@Donut.drawPoint$IF_TRUE4
D;JNE
// Donut.vm:385    if-goto IF_FALSE4
@Donut.drawPoint$IF_FALSE4
0;JMP
// Donut.vm:386    label IF_TRUE4
(Donut.drawPoint$IF_TRUE4)
// Donut.vm:387    push argument 0
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
// Donut.vm:388    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:389    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:390    push argument 1
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
// Donut.vm:391    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:392    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:393    call Screen.drawPixel 2
@Donut.drawPoint$ret.7  // push return address
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
@Screen.drawPixel // goto Screen.drawPixel
0;JMP
(Donut.drawPoint$ret.7)
// Donut.vm:394    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:395    push argument 0
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
// Donut.vm:396    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:397    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Donut.vm:398    push argument 1
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
// Donut.vm:399    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:400    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Donut.vm:401    call Screen.drawPixel 2
@Donut.drawPoint$ret.8  // push return address
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
@Screen.drawPixel // goto Screen.drawPixel
0;JMP
(Donut.drawPoint$ret.8)
// Donut.vm:402    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:403    label IF_FALSE4
(Donut.drawPoint$IF_FALSE4)
// Donut.vm:404    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:405    return from Donut.drawPoint
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
// Donut.vm:406    function Donut.dispose 0
(Donut.dispose)
// Donut.vm:407    push argument 0
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
// Donut.vm:408    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// Donut.vm:409    push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:410    call Memory.deAlloc 1
@Donut.dispose$ret.0  // push return address
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
@Memory.deAlloc // goto Memory.deAlloc
0;JMP
(Donut.dispose$ret.0)
// Donut.vm:411    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Donut.vm:412    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Donut.vm:413    return from Donut.dispose
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
// Keyboard.vm:1    function Keyboard.init 0
(Keyboard.init)
// Keyboard.vm:2    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Keyboard.vm:3    return from Keyboard.init
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
// Keyboard.vm:4    function Keyboard.keyPressed 0
(Keyboard.keyPressed)
// Keyboard.vm:5    push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1
// Keyboard.vm:6    call Memory.peek 1
@Keyboard.keyPressed$ret.0  // push return address
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
@Memory.peek // goto Memory.peek
0;JMP
(Keyboard.keyPressed$ret.0)
// Keyboard.vm:7    return from Keyboard.keyPressed
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
// Keyboard.vm:8    function Keyboard.readChar 2
(Keyboard.readChar)
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
// Keyboard.vm:9    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Keyboard.vm:10    call Output.printChar 1
@Keyboard.readChar$ret.0  // push return address
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
@Output.printChar // goto Output.printChar
0;JMP
(Keyboard.readChar$ret.0)
// Keyboard.vm:11    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Keyboard.vm:12    label WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0)
// Keyboard.vm:13    push local 1
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
// Keyboard.vm:14    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Keyboard.vm:15    eq
@Keyboard.comp93
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
(Keyboard.comp93)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Keyboard.vm:16    push local 0
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
// Keyboard.vm:17    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Keyboard.vm:18    gt
@Keyboard.comp94
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
(Keyboard.comp94)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Keyboard.vm:19    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Keyboard.vm:20    not
@SP
A=M-1
M=!M
// Keyboard.vm:21    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Keyboard.readChar$WHILE_END0
D;JNE
// Keyboard.vm:22    call Keyboard.keyPressed 0
@Keyboard.readChar$ret.1  // push return address
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
@Keyboard.keyPressed // goto Keyboard.keyPressed
0;JMP
(Keyboard.readChar$ret.1)
// Keyboard.vm:23    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Keyboard.vm:24    push local 0
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
// Keyboard.vm:25    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Keyboard.vm:26    gt
@Keyboard.comp95
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
(Keyboard.comp95)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Keyboard.vm:27    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Keyboard.readChar$IF_TRUE0
D;JNE
// Keyboard.vm:28    if-goto IF_FALSE0
@Keyboard.readChar$IF_FALSE0
0;JMP
// Keyboard.vm:29    label IF_TRUE0
(Keyboard.readChar$IF_TRUE0)
// Keyboard.vm:30    push local 0
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
// Keyboard.vm:31    pop local 1
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
// Keyboard.vm:32    label IF_FALSE0
(Keyboard.readChar$IF_FALSE0)
// Keyboard.vm:33    if-goto WHILE_EXP0
@Keyboard.readChar$WHILE_EXP0
0;JMP
// Keyboard.vm:34    label WHILE_END0
(Keyboard.readChar$WHILE_END0)
// Keyboard.vm:35    call String.backSpace 0
@Keyboard.readChar$ret.2  // push return address
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
@String.backSpace // goto String.backSpace
0;JMP
(Keyboard.readChar$ret.2)
// Keyboard.vm:36    call Output.printChar 1
@Keyboard.readChar$ret.3  // push return address
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
@Output.printChar // goto Output.printChar
0;JMP
(Keyboard.readChar$ret.3)
// Keyboard.vm:37    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Keyboard.vm:38    push local 1
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
// Keyboard.vm:39    call Output.printChar 1
@Keyboard.readChar$ret.4  // push return address
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
@Output.printChar // goto Output.printChar
0;JMP
(Keyboard.readChar$ret.4)
// Keyboard.vm:40    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Keyboard.vm:41    push local 1
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
// Keyboard.vm:42    return from Keyboard.readChar
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
// Keyboard.vm:43    function Keyboard.readLine 5
(Keyboard.readLine)
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
// Keyboard.vm:44    push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1
// Keyboard.vm:45    call String.new 1
@Keyboard.readLine$ret.0  // push return address
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
@String.new // goto String.new
0;JMP
(Keyboard.readLine$ret.0)
// Keyboard.vm:46    pop local 3
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
// Keyboard.vm:47    push argument 0
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
// Keyboard.vm:48    call Output.printString 1
@Keyboard.readLine$ret.1  // push return address
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
@Output.printString // goto Output.printString
0;JMP
(Keyboard.readLine$ret.1)
// Keyboard.vm:49    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Keyboard.vm:50    call String.newLine 0
@Keyboard.readLine$ret.2  // push return address
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
@String.newLine // goto String.newLine
0;JMP
(Keyboard.readLine$ret.2)
// Keyboard.vm:51    pop local 1
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
// Keyboard.vm:52    call String.backSpace 0
@Keyboard.readLine$ret.3  // push return address
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
@String.backSpace // goto String.backSpace
0;JMP
(Keyboard.readLine$ret.3)
// Keyboard.vm:53    pop local 2
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
// Keyboard.vm:54    label WHILE_EXP0
(Keyboard.readLine$WHILE_EXP0)
// Keyboard.vm:55    push local 4
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
// Keyboard.vm:56    not
@SP
A=M-1
M=!M
// Keyboard.vm:57    not
@SP
A=M-1
M=!M
// Keyboard.vm:58    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Keyboard.readLine$WHILE_END0
D;JNE
// Keyboard.vm:59    call Keyboard.readChar 0
@Keyboard.readLine$ret.4  // push return address
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
@Keyboard.readChar // goto Keyboard.readChar
0;JMP
(Keyboard.readLine$ret.4)
// Keyboard.vm:60    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Keyboard.vm:61    push local 0
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
// Keyboard.vm:62    push local 1
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
// Keyboard.vm:63    eq
@Keyboard.comp96
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
(Keyboard.comp96)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Keyboard.vm:64    pop local 4
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@4
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Keyboard.vm:65    push local 4
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
// Keyboard.vm:66    not
@SP
A=M-1
M=!M
// Keyboard.vm:67    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Keyboard.readLine$IF_TRUE0
D;JNE
// Keyboard.vm:68    if-goto IF_FALSE0
@Keyboard.readLine$IF_FALSE0
0;JMP
// Keyboard.vm:69    label IF_TRUE0
(Keyboard.readLine$IF_TRUE0)
// Keyboard.vm:70    push local 0
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
// Keyboard.vm:71    push local 2
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
// Keyboard.vm:72    eq
@Keyboard.comp97
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
(Keyboard.comp97)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Keyboard.vm:73    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Keyboard.readLine$IF_TRUE1
D;JNE
// Keyboard.vm:74    if-goto IF_FALSE1
@Keyboard.readLine$IF_FALSE1
0;JMP
// Keyboard.vm:75    label IF_TRUE1
(Keyboard.readLine$IF_TRUE1)
// Keyboard.vm:76    push local 3
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
// Keyboard.vm:77    call String.eraseLastChar 1
@Keyboard.readLine$ret.5  // push return address
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
@String.eraseLastChar // goto String.eraseLastChar
0;JMP
(Keyboard.readLine$ret.5)
// Keyboard.vm:78    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Keyboard.vm:79    if-goto IF_END1
@Keyboard.readLine$IF_END1
0;JMP
// Keyboard.vm:80    label IF_FALSE1
(Keyboard.readLine$IF_FALSE1)
// Keyboard.vm:81    push local 3
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
// Keyboard.vm:82    push local 0
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
// Keyboard.vm:83    call String.appendChar 2
@Keyboard.readLine$ret.6  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Keyboard.readLine$ret.6)
// Keyboard.vm:84    pop local 3
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
// Keyboard.vm:85    label IF_END1
(Keyboard.readLine$IF_END1)
// Keyboard.vm:86    label IF_FALSE0
(Keyboard.readLine$IF_FALSE0)
// Keyboard.vm:87    if-goto WHILE_EXP0
@Keyboard.readLine$WHILE_EXP0
0;JMP
// Keyboard.vm:88    label WHILE_END0
(Keyboard.readLine$WHILE_END0)
// Keyboard.vm:89    push local 3
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
// Keyboard.vm:90    return from Keyboard.readLine
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
// Keyboard.vm:91    function Keyboard.readInt 2
(Keyboard.readInt)
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
// Keyboard.vm:92    push argument 0
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
// Keyboard.vm:93    call Keyboard.readLine 1
@Keyboard.readInt$ret.0  // push return address
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
@Keyboard.readLine // goto Keyboard.readLine
0;JMP
(Keyboard.readInt$ret.0)
// Keyboard.vm:94    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Keyboard.vm:95    push local 0
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
// Keyboard.vm:96    call String.intValue 1
@Keyboard.readInt$ret.1  // push return address
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
@String.intValue // goto String.intValue
0;JMP
(Keyboard.readInt$ret.1)
// Keyboard.vm:97    pop local 1
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
// Keyboard.vm:98    push local 0
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
// Keyboard.vm:99    call String.dispose 1
@Keyboard.readInt$ret.2  // push return address
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
@String.dispose // goto String.dispose
0;JMP
(Keyboard.readInt$ret.2)
// Keyboard.vm:100    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Keyboard.vm:101    push local 1
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
// Keyboard.vm:102    return from Keyboard.readInt
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
// Main.vm:1    function Main.main 3
(Main.main)
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
// Main.vm:2    call Trig.init 0
@Main.main$ret.0  // push return address
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
@Trig.init // goto Trig.init
0;JMP
(Main.main$ret.0)
// Main.vm:3    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:4    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:5    not
@SP
A=M-1
M=!M
// Main.vm:6    pop local 2
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
// Main.vm:7    call Donut.new 0
@Main.main$ret.1  // push return address
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
@Donut.new // goto Donut.new
0;JMP
(Main.main$ret.1)
// Main.vm:8    pop local 1
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
// Main.vm:9    push local 1
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
// Main.vm:10    call Donut.draw 1
@Main.main$ret.2  // push return address
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
@Donut.draw // goto Donut.draw
0;JMP
(Main.main$ret.2)
// Main.vm:11    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:12    call Main.printHelp 0
@Main.main$ret.3  // push return address
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
@Main.printHelp // goto Main.printHelp
0;JMP
(Main.main$ret.3)
// Main.vm:13    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:14    label WHILE_EXP0
(Main.main$WHILE_EXP0)
// Main.vm:15    push local 2
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
// Main.vm:16    not
@SP
A=M-1
M=!M
// Main.vm:17    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Main.main$WHILE_END0
D;JNE
// Main.vm:18    call Keyboard.keyPressed 0
@Main.main$ret.4  // push return address
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
@Keyboard.keyPressed // goto Keyboard.keyPressed
0;JMP
(Main.main$ret.4)
// Main.vm:19    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Main.vm:20    push local 0
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
// Main.vm:21    push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:22    eq
@Main.comp98
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
(Main.comp98)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Main.vm:23    push local 0
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
// Main.vm:24    push constant 140
@140
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:25    eq
@Main.comp99
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
(Main.comp99)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Main.vm:26    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Main.vm:27    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Main.main$IF_TRUE0
D;JNE
// Main.vm:28    if-goto IF_FALSE0
@Main.main$IF_FALSE0
0;JMP
// Main.vm:29    label IF_TRUE0
(Main.main$IF_TRUE0)
// Main.vm:30    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:31    pop local 2
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
// Main.vm:32    label IF_FALSE0
(Main.main$IF_FALSE0)
// Main.vm:33    push local 0
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
// Main.vm:34    push constant 131
@131
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:35    eq
@Main.comp100
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
(Main.comp100)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Main.vm:36    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Main.main$IF_TRUE1
D;JNE
// Main.vm:37    if-goto IF_FALSE1
@Main.main$IF_FALSE1
0;JMP
// Main.vm:38    label IF_TRUE1
(Main.main$IF_TRUE1)
// Main.vm:39    push local 1
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
// Main.vm:40    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:41    call Donut.rotateX 2
@Main.main$ret.5  // push return address
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
@Donut.rotateX // goto Donut.rotateX
0;JMP
(Main.main$ret.5)
// Main.vm:42    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:43    label IF_FALSE1
(Main.main$IF_FALSE1)
// Main.vm:44    push local 0
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
// Main.vm:45    push constant 133
@133
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:46    eq
@Main.comp101
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
(Main.comp101)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Main.vm:47    if IF_TRUE2
@SP
M=M-1
A=M
D=M
@Main.main$IF_TRUE2
D;JNE
// Main.vm:48    if-goto IF_FALSE2
@Main.main$IF_FALSE2
0;JMP
// Main.vm:49    label IF_TRUE2
(Main.main$IF_TRUE2)
// Main.vm:50    push local 1
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
// Main.vm:51    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:52    neg
@SP
A=M-1
M=-M
// Main.vm:53    call Donut.rotateX 2
@Main.main$ret.6  // push return address
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
@Donut.rotateX // goto Donut.rotateX
0;JMP
(Main.main$ret.6)
// Main.vm:54    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:55    label IF_FALSE2
(Main.main$IF_FALSE2)
// Main.vm:56    push local 0
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
// Main.vm:57    push constant 130
@130
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:58    eq
@Main.comp102
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
(Main.comp102)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Main.vm:59    if IF_TRUE3
@SP
M=M-1
A=M
D=M
@Main.main$IF_TRUE3
D;JNE
// Main.vm:60    if-goto IF_FALSE3
@Main.main$IF_FALSE3
0;JMP
// Main.vm:61    label IF_TRUE3
(Main.main$IF_TRUE3)
// Main.vm:62    push local 1
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
// Main.vm:63    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:64    call Donut.rotateY 2
@Main.main$ret.7  // push return address
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
@Donut.rotateY // goto Donut.rotateY
0;JMP
(Main.main$ret.7)
// Main.vm:65    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:66    label IF_FALSE3
(Main.main$IF_FALSE3)
// Main.vm:67    push local 0
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
// Main.vm:68    push constant 132
@132
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:69    eq
@Main.comp103
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
(Main.comp103)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Main.vm:70    if IF_TRUE4
@SP
M=M-1
A=M
D=M
@Main.main$IF_TRUE4
D;JNE
// Main.vm:71    if-goto IF_FALSE4
@Main.main$IF_FALSE4
0;JMP
// Main.vm:72    label IF_TRUE4
(Main.main$IF_TRUE4)
// Main.vm:73    push local 1
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
// Main.vm:74    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:75    neg
@SP
A=M-1
M=-M
// Main.vm:76    call Donut.rotateY 2
@Main.main$ret.8  // push return address
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
@Donut.rotateY // goto Donut.rotateY
0;JMP
(Main.main$ret.8)
// Main.vm:77    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:78    label IF_FALSE4
(Main.main$IF_FALSE4)
// Main.vm:79    push local 0
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
// Main.vm:80    push constant 129
@129
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:81    gt
@Main.comp104
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
(Main.comp104)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Main.vm:82    push local 0
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
// Main.vm:83    push constant 134
@134
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:84    lt
@Main.comp105
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
(Main.comp105)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Main.vm:85    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Main.vm:86    if IF_TRUE5
@SP
M=M-1
A=M
D=M
@Main.main$IF_TRUE5
D;JNE
// Main.vm:87    if-goto IF_FALSE5
@Main.main$IF_FALSE5
0;JMP
// Main.vm:88    label IF_TRUE5
(Main.main$IF_TRUE5)
// Main.vm:89    push local 1
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
// Main.vm:90    call Donut.draw 1
@Main.main$ret.9  // push return address
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
@Donut.draw // goto Donut.draw
0;JMP
(Main.main$ret.9)
// Main.vm:91    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:92    call Main.printHelp 0
@Main.main$ret.10  // push return address
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
@Main.printHelp // goto Main.printHelp
0;JMP
(Main.main$ret.10)
// Main.vm:93    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:94    label IF_FALSE5
(Main.main$IF_FALSE5)
// Main.vm:95    if-goto WHILE_EXP0
@Main.main$WHILE_EXP0
0;JMP
// Main.vm:96    label WHILE_END0
(Main.main$WHILE_END0)
// Main.vm:97    push local 1
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
// Main.vm:98    call Donut.dispose 1
@Main.main$ret.11  // push return address
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
@Donut.dispose // goto Donut.dispose
0;JMP
(Main.main$ret.11)
// Main.vm:99    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:100    call Trig.dispose 0
@Main.main$ret.12  // push return address
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
@Trig.dispose // goto Trig.dispose
0;JMP
(Main.main$ret.12)
// Main.vm:101    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:102    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:103    return from Main.main
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
// Main.vm:104    function Main.printHelp 0
(Main.printHelp)
// Main.vm:105    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:106    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:107    call Output.moveCursor 2
@Main.printHelp$ret.0  // push return address
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
@Output.moveCursor // goto Output.moveCursor
0;JMP
(Main.printHelp$ret.0)
// Main.vm:108    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:109    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:110    call String.new 1
@Main.printHelp$ret.1  // push return address
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
@String.new // goto String.new
0;JMP
(Main.printHelp$ret.1)
// Main.vm:111    push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:112    call String.appendChar 2
@Main.printHelp$ret.2  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.2)
// Main.vm:113    push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:114    call String.appendChar 2
@Main.printHelp$ret.3  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.3)
// Main.vm:115    push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:116    call String.appendChar 2
@Main.printHelp$ret.4  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.4)
// Main.vm:117    push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:118    call String.appendChar 2
@Main.printHelp$ret.5  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.5)
// Main.vm:119    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:120    call String.appendChar 2
@Main.printHelp$ret.6  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.6)
// Main.vm:121    push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:122    call String.appendChar 2
@Main.printHelp$ret.7  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.7)
// Main.vm:123    push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:124    call String.appendChar 2
@Main.printHelp$ret.8  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.8)
// Main.vm:125    push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:126    call String.appendChar 2
@Main.printHelp$ret.9  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.9)
// Main.vm:127    push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:128    call String.appendChar 2
@Main.printHelp$ret.10  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.10)
// Main.vm:129    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:130    call String.appendChar 2
@Main.printHelp$ret.11  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.11)
// Main.vm:131    push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:132    call String.appendChar 2
@Main.printHelp$ret.12  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.12)
// Main.vm:133    push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:134    call String.appendChar 2
@Main.printHelp$ret.13  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.13)
// Main.vm:135    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:136    call String.appendChar 2
@Main.printHelp$ret.14  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.14)
// Main.vm:137    push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:138    call String.appendChar 2
@Main.printHelp$ret.15  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.15)
// Main.vm:139    push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:140    call String.appendChar 2
@Main.printHelp$ret.16  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.16)
// Main.vm:141    push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:142    call String.appendChar 2
@Main.printHelp$ret.17  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.17)
// Main.vm:143    push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:144    call String.appendChar 2
@Main.printHelp$ret.18  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.18)
// Main.vm:145    push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:146    call String.appendChar 2
@Main.printHelp$ret.19  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.19)
// Main.vm:147    call Output.printString 1
@Main.printHelp$ret.20  // push return address
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
@Output.printString // goto Output.printString
0;JMP
(Main.printHelp$ret.20)
// Main.vm:148    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:149    push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:150    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:151    call Output.moveCursor 2
@Main.printHelp$ret.21  // push return address
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
@Output.moveCursor // goto Output.moveCursor
0;JMP
(Main.printHelp$ret.21)
// Main.vm:152    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:153    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:154    call String.new 1
@Main.printHelp$ret.22  // push return address
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
@String.new // goto String.new
0;JMP
(Main.printHelp$ret.22)
// Main.vm:155    push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:156    call String.appendChar 2
@Main.printHelp$ret.23  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.23)
// Main.vm:157    push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:158    call String.appendChar 2
@Main.printHelp$ret.24  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.24)
// Main.vm:159    push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:160    call String.appendChar 2
@Main.printHelp$ret.25  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.25)
// Main.vm:161    push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:162    call String.appendChar 2
@Main.printHelp$ret.26  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.26)
// Main.vm:163    push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:164    call String.appendChar 2
@Main.printHelp$ret.27  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.27)
// Main.vm:165    push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:166    call String.appendChar 2
@Main.printHelp$ret.28  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.28)
// Main.vm:167    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:168    call String.appendChar 2
@Main.printHelp$ret.29  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.29)
// Main.vm:169    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:170    call String.appendChar 2
@Main.printHelp$ret.30  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.30)
// Main.vm:171    push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:172    call String.appendChar 2
@Main.printHelp$ret.31  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.31)
// Main.vm:173    push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:174    call String.appendChar 2
@Main.printHelp$ret.32  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.32)
// Main.vm:175    push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:176    call String.appendChar 2
@Main.printHelp$ret.33  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.33)
// Main.vm:177    push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:178    call String.appendChar 2
@Main.printHelp$ret.34  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.34)
// Main.vm:179    push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:180    call String.appendChar 2
@Main.printHelp$ret.35  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.35)
// Main.vm:181    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:182    call String.appendChar 2
@Main.printHelp$ret.36  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.36)
// Main.vm:183    push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:184    call String.appendChar 2
@Main.printHelp$ret.37  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.37)
// Main.vm:185    push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:186    call String.appendChar 2
@Main.printHelp$ret.38  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.38)
// Main.vm:187    push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:188    call String.appendChar 2
@Main.printHelp$ret.39  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.39)
// Main.vm:189    push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:190    call String.appendChar 2
@Main.printHelp$ret.40  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.40)
// Main.vm:191    call Output.printString 1
@Main.printHelp$ret.41  // push return address
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
@Output.printString // goto Output.printString
0;JMP
(Main.printHelp$ret.41)
// Main.vm:192    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:193    call Output.println 0
@Main.printHelp$ret.42  // push return address
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
@Output.println // goto Output.println
0;JMP
(Main.printHelp$ret.42)
// Main.vm:194    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:195    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:196    call String.new 1
@Main.printHelp$ret.43  // push return address
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
@String.new // goto String.new
0;JMP
(Main.printHelp$ret.43)
// Main.vm:197    push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:198    call String.appendChar 2
@Main.printHelp$ret.44  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.44)
// Main.vm:199    push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:200    call String.appendChar 2
@Main.printHelp$ret.45  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.45)
// Main.vm:201    push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:202    call String.appendChar 2
@Main.printHelp$ret.46  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.46)
// Main.vm:203    push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:204    call String.appendChar 2
@Main.printHelp$ret.47  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.47)
// Main.vm:205    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:206    call String.appendChar 2
@Main.printHelp$ret.48  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.48)
// Main.vm:207    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:208    call String.appendChar 2
@Main.printHelp$ret.49  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.49)
// Main.vm:209    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:210    call String.appendChar 2
@Main.printHelp$ret.50  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.50)
// Main.vm:211    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:212    call String.appendChar 2
@Main.printHelp$ret.51  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.51)
// Main.vm:213    push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:214    call String.appendChar 2
@Main.printHelp$ret.52  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.52)
// Main.vm:215    push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:216    call String.appendChar 2
@Main.printHelp$ret.53  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.53)
// Main.vm:217    push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:218    call String.appendChar 2
@Main.printHelp$ret.54  // push return address
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
@String.appendChar // goto String.appendChar
0;JMP
(Main.printHelp$ret.54)
// Main.vm:219    call Output.printString 1
@Main.printHelp$ret.55  // push return address
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
@Output.printString // goto Output.printString
0;JMP
(Main.printHelp$ret.55)
// Main.vm:220    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Main.vm:221    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Main.vm:222    return from Main.printHelp
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
// Array.vm:1    function Array.new 0
(Array.new)
// Array.vm:2    push argument 0
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
// Array.vm:3    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Array.vm:4    gt
@Array.comp106
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
(Array.comp106)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Array.vm:5    not
@SP
A=M-1
M=!M
// Array.vm:6    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Array.new$IF_TRUE0
D;JNE
// Array.vm:7    if-goto IF_FALSE0
@Array.new$IF_FALSE0
0;JMP
// Array.vm:8    label IF_TRUE0
(Array.new$IF_TRUE0)
// Array.vm:9    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Array.vm:10    call Sys.error 1
@Array.new$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Array.new$ret.0)
// Array.vm:11    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Array.vm:12    label IF_FALSE0
(Array.new$IF_FALSE0)
// Array.vm:13    push argument 0
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
// Array.vm:14    call Memory.alloc 1
@Array.new$ret.1  // push return address
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
@Memory.alloc // goto Memory.alloc
0;JMP
(Array.new$ret.1)
// Array.vm:15    return from Array.new
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
// Array.vm:16    function Array.dispose 0
(Array.dispose)
// Array.vm:17    push argument 0
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
// Array.vm:18    pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D
// Array.vm:19    push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// Array.vm:20    call Memory.deAlloc 1
@Array.dispose$ret.0  // push return address
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
@Memory.deAlloc // goto Memory.deAlloc
0;JMP
(Array.dispose$ret.0)
// Array.vm:21    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Array.vm:22    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Array.vm:23    return from Array.dispose
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
// Math.vm:1    function Math.init 1
(Math.init)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:2    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:3    call Array.new 1
@Math.init$ret.0  // push return address
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
@Array.new // goto Array.new
0;JMP
(Math.init$ret.0)
// Math.vm:4    pop static 1
@SP
M=M-1
A=M
D=M
@Math.1
M=D
// Math.vm:5    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:6    call Array.new 1
@Math.init$ret.1  // push return address
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
@Array.new // goto Array.new
0;JMP
(Math.init$ret.1)
// Math.vm:7    pop static 0
@SP
M=M-1
A=M
D=M
@Math.0
M=D
// Math.vm:8    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:9    push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:10    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:11    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:12    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Math.vm:13    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:14    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:15    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:16    label WHILE_EXP0
(Math.init$WHILE_EXP0)
// Math.vm:17    push local 0
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
// Math.vm:18    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:19    lt
@Math.comp107
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
(Math.comp107)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:20    not
@SP
A=M-1
M=!M
// Math.vm:21    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Math.init$WHILE_END0
D;JNE
// Math.vm:22    push local 0
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
// Math.vm:23    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:24    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:25    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:26    push local 0
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
// Math.vm:27    push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:28    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:29    push local 0
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
// Math.vm:30    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:31    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:32    push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:33    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:34    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:35    push that 0
@THAT
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
// Math.vm:36    push local 0
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
// Math.vm:37    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:38    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:39    push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:40    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:41    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:42    push that 0
@THAT
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
// Math.vm:43    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:44    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Math.vm:45    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:46    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:47    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:48    if-goto WHILE_EXP0
@Math.init$WHILE_EXP0
0;JMP
// Math.vm:49    label WHILE_END0
(Math.init$WHILE_END0)
// Math.vm:50    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:51    return from Math.init
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
// Math.vm:52    function Math.abs 0
(Math.abs)
// Math.vm:53    push argument 0
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
// Math.vm:54    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:55    lt
@Math.comp108
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
(Math.comp108)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:56    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.abs$IF_TRUE0
D;JNE
// Math.vm:57    if-goto IF_FALSE0
@Math.abs$IF_FALSE0
0;JMP
// Math.vm:58    label IF_TRUE0
(Math.abs$IF_TRUE0)
// Math.vm:59    push argument 0
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
// Math.vm:60    neg
@SP
A=M-1
M=-M
// Math.vm:61    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:62    label IF_FALSE0
(Math.abs$IF_FALSE0)
// Math.vm:63    push argument 0
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
// Math.vm:64    return from Math.abs
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
// Math.vm:65    function Math.multiply 5
(Math.multiply)
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
// Math.vm:66    push argument 0
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
// Math.vm:67    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:68    lt
@Math.comp109
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
(Math.comp109)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:69    push argument 1
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
// Math.vm:70    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:71    gt
@Math.comp110
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
(Math.comp110)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:72    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Math.vm:73    push argument 0
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
// Math.vm:74    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:75    gt
@Math.comp111
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
(Math.comp111)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:76    push argument 1
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
// Math.vm:77    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:78    lt
@Math.comp112
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
(Math.comp112)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:79    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Math.vm:80    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Math.vm:81    pop local 4
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@4
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:82    push argument 0
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
// Math.vm:83    call Math.abs 1
@Math.multiply$ret.0  // push return address
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
@Math.abs // goto Math.abs
0;JMP
(Math.multiply$ret.0)
// Math.vm:84    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:85    push argument 1
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
// Math.vm:86    call Math.abs 1
@Math.multiply$ret.1  // push return address
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
@Math.abs // goto Math.abs
0;JMP
(Math.multiply$ret.1)
// Math.vm:87    pop argument 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// Math.vm:88    push argument 0
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
// Math.vm:89    push argument 1
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
// Math.vm:90    lt
@Math.comp113
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
(Math.comp113)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:91    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.multiply$IF_TRUE0
D;JNE
// Math.vm:92    if-goto IF_FALSE0
@Math.multiply$IF_FALSE0
0;JMP
// Math.vm:93    label IF_TRUE0
(Math.multiply$IF_TRUE0)
// Math.vm:94    push argument 0
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
// Math.vm:95    pop local 1
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
// Math.vm:96    push argument 1
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
// Math.vm:97    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:98    push local 1
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
// Math.vm:99    pop argument 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// Math.vm:100    label IF_FALSE0
(Math.multiply$IF_FALSE0)
// Math.vm:101    label WHILE_EXP0
(Math.multiply$WHILE_EXP0)
// Math.vm:102    push local 2
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
// Math.vm:103    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:104    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:105    push argument 1
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
// Math.vm:106    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:107    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:108    lt
@Math.comp114
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
(Math.comp114)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:109    not
@SP
A=M-1
M=!M
// Math.vm:110    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Math.multiply$WHILE_END0
D;JNE
// Math.vm:111    push local 3
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
// Math.vm:112    push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:113    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:114    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:115    push that 0
@THAT
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
// Math.vm:116    push argument 1
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
// Math.vm:117    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Math.vm:118    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:119    eq
@Math.comp115
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
(Math.comp115)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:120    not
@SP
A=M-1
M=!M
// Math.vm:121    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Math.multiply$IF_TRUE1
D;JNE
// Math.vm:122    if-goto IF_FALSE1
@Math.multiply$IF_FALSE1
0;JMP
// Math.vm:123    label IF_TRUE1
(Math.multiply$IF_TRUE1)
// Math.vm:124    push local 0
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
// Math.vm:125    push argument 0
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
// Math.vm:126    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:127    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:128    push local 2
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
// Math.vm:129    push local 3
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
// Math.vm:130    push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:131    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:132    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:133    push that 0
@THAT
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
// Math.vm:134    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:135    pop local 2
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
// Math.vm:136    label IF_FALSE1
(Math.multiply$IF_FALSE1)
// Math.vm:137    push argument 0
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
// Math.vm:138    push argument 0
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
// Math.vm:139    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:140    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:141    push local 3
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
// Math.vm:142    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:143    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:144    pop local 3
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
// Math.vm:145    if-goto WHILE_EXP0
@Math.multiply$WHILE_EXP0
0;JMP
// Math.vm:146    label WHILE_END0
(Math.multiply$WHILE_END0)
// Math.vm:147    push local 4
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
// Math.vm:148    if IF_TRUE2
@SP
M=M-1
A=M
D=M
@Math.multiply$IF_TRUE2
D;JNE
// Math.vm:149    if-goto IF_FALSE2
@Math.multiply$IF_FALSE2
0;JMP
// Math.vm:150    label IF_TRUE2
(Math.multiply$IF_TRUE2)
// Math.vm:151    push local 0
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
// Math.vm:152    neg
@SP
A=M-1
M=-M
// Math.vm:153    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:154    label IF_FALSE2
(Math.multiply$IF_FALSE2)
// Math.vm:155    push local 0
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
// Math.vm:156    return from Math.multiply
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
// Math.vm:157    function Math.divide 4
(Math.divide)
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
// Math.vm:158    push argument 1
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
// Math.vm:159    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:160    eq
@Math.comp116
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
(Math.comp116)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:161    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.divide$IF_TRUE0
D;JNE
// Math.vm:162    if-goto IF_FALSE0
@Math.divide$IF_FALSE0
0;JMP
// Math.vm:163    label IF_TRUE0
(Math.divide$IF_TRUE0)
// Math.vm:164    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:165    call Sys.error 1
@Math.divide$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Math.divide$ret.0)
// Math.vm:166    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Math.vm:167    label IF_FALSE0
(Math.divide$IF_FALSE0)
// Math.vm:168    push argument 0
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
// Math.vm:169    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:170    lt
@Math.comp117
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
(Math.comp117)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:171    push argument 1
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
// Math.vm:172    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:173    gt
@Math.comp118
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
(Math.comp118)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:174    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Math.vm:175    push argument 0
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
// Math.vm:176    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:177    gt
@Math.comp119
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
(Math.comp119)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:178    push argument 1
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
// Math.vm:179    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:180    lt
@Math.comp120
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
(Math.comp120)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:181    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Math.vm:182    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Math.vm:183    pop local 2
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
// Math.vm:184    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:185    push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:186    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:187    push argument 1
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
// Math.vm:188    call Math.abs 1
@Math.divide$ret.1  // push return address
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
@Math.abs // goto Math.abs
0;JMP
(Math.divide$ret.1)
// Math.vm:189    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Math.vm:190    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:191    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:192    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:193    push argument 0
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
// Math.vm:194    call Math.abs 1
@Math.divide$ret.2  // push return address
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
@Math.abs // goto Math.abs
0;JMP
(Math.divide$ret.2)
// Math.vm:195    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:196    label WHILE_EXP0
(Math.divide$WHILE_EXP0)
// Math.vm:197    push local 0
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
// Math.vm:198    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:199    lt
@Math.comp121
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
(Math.comp121)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:200    push local 3
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
// Math.vm:201    not
@SP
A=M-1
M=!M
// Math.vm:202    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Math.vm:203    not
@SP
A=M-1
M=!M
// Math.vm:204    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Math.divide$WHILE_END0
D;JNE
// Math.vm:205    push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:206    push local 0
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
// Math.vm:207    push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:208    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:209    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:210    push that 0
@THAT
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
// Math.vm:211    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:212    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:213    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:214    push local 0
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
// Math.vm:215    push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:216    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:217    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:218    push that 0
@THAT
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
// Math.vm:219    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:220    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:221    lt
@Math.comp122
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
(Math.comp122)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:222    pop local 3
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
// Math.vm:223    push local 3
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
// Math.vm:224    not
@SP
A=M-1
M=!M
// Math.vm:225    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Math.divide$IF_TRUE1
D;JNE
// Math.vm:226    if-goto IF_FALSE1
@Math.divide$IF_FALSE1
0;JMP
// Math.vm:227    label IF_TRUE1
(Math.divide$IF_TRUE1)
// Math.vm:228    push local 0
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
// Math.vm:229    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:230    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:231    push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:232    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:233    push local 0
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
// Math.vm:234    push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:235    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:236    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:237    push that 0
@THAT
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
// Math.vm:238    push local 0
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
// Math.vm:239    push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:240    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:241    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:242    push that 0
@THAT
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
// Math.vm:243    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:244    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Math.vm:245    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:246    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:247    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:248    push local 0
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
// Math.vm:249    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:250    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:251    push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:252    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:253    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:254    push that 0
@THAT
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
// Math.vm:255    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:256    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:257    push argument 0
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
// Math.vm:258    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:259    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:260    gt
@Math.comp123
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
(Math.comp123)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:261    pop local 3
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
// Math.vm:262    push local 3
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
// Math.vm:263    not
@SP
A=M-1
M=!M
// Math.vm:264    if IF_TRUE2
@SP
M=M-1
A=M
D=M
@Math.divide$IF_TRUE2
D;JNE
// Math.vm:265    if-goto IF_FALSE2
@Math.divide$IF_FALSE2
0;JMP
// Math.vm:266    label IF_TRUE2
(Math.divide$IF_TRUE2)
// Math.vm:267    push local 0
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
// Math.vm:268    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:269    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:270    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:271    label IF_FALSE2
(Math.divide$IF_FALSE2)
// Math.vm:272    label IF_FALSE1
(Math.divide$IF_FALSE1)
// Math.vm:273    if-goto WHILE_EXP0
@Math.divide$WHILE_EXP0
0;JMP
// Math.vm:274    label WHILE_END0
(Math.divide$WHILE_END0)
// Math.vm:275    label WHILE_EXP1
(Math.divide$WHILE_EXP1)
// Math.vm:276    push local 0
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
// Math.vm:277    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:278    neg
@SP
A=M-1
M=-M
// Math.vm:279    gt
@Math.comp124
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
(Math.comp124)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:280    not
@SP
A=M-1
M=!M
// Math.vm:281    if WHILE_END1
@SP
M=M-1
A=M
D=M
@Math.divide$WHILE_END1
D;JNE
// Math.vm:282    push local 0
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
// Math.vm:283    push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:284    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:285    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:286    push that 0
@THAT
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
// Math.vm:287    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:288    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:289    push argument 0
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
// Math.vm:290    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:291    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:292    gt
@Math.comp125
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
(Math.comp125)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:293    not
@SP
A=M-1
M=!M
// Math.vm:294    if IF_TRUE3
@SP
M=M-1
A=M
D=M
@Math.divide$IF_TRUE3
D;JNE
// Math.vm:295    if-goto IF_FALSE3
@Math.divide$IF_FALSE3
0;JMP
// Math.vm:296    label IF_TRUE3
(Math.divide$IF_TRUE3)
// Math.vm:297    push local 1
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
// Math.vm:298    push local 0
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
// Math.vm:299    push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:300    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:301    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:302    push that 0
@THAT
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
// Math.vm:303    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:304    pop local 1
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
// Math.vm:305    push argument 0
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
// Math.vm:306    push local 0
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
// Math.vm:307    push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:308    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:309    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:310    push that 0
@THAT
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
// Math.vm:311    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:312    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:313    label IF_FALSE3
(Math.divide$IF_FALSE3)
// Math.vm:314    push local 0
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
// Math.vm:315    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:316    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:317    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:318    if-goto WHILE_EXP1
@Math.divide$WHILE_EXP1
0;JMP
// Math.vm:319    label WHILE_END1
(Math.divide$WHILE_END1)
// Math.vm:320    push local 2
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
// Math.vm:321    if IF_TRUE4
@SP
M=M-1
A=M
D=M
@Math.divide$IF_TRUE4
D;JNE
// Math.vm:322    if-goto IF_FALSE4
@Math.divide$IF_FALSE4
0;JMP
// Math.vm:323    label IF_TRUE4
(Math.divide$IF_TRUE4)
// Math.vm:324    push local 1
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
// Math.vm:325    neg
@SP
A=M-1
M=-M
// Math.vm:326    pop local 1
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
// Math.vm:327    label IF_FALSE4
(Math.divide$IF_FALSE4)
// Math.vm:328    push local 1
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
// Math.vm:329    return from Math.divide
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
// Math.vm:330    function Math.sqrt 4
(Math.sqrt)
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
// Math.vm:331    push argument 0
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
// Math.vm:332    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:333    lt
@Math.comp126
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
(Math.comp126)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:334    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.sqrt$IF_TRUE0
D;JNE
// Math.vm:335    if-goto IF_FALSE0
@Math.sqrt$IF_FALSE0
0;JMP
// Math.vm:336    label IF_TRUE0
(Math.sqrt$IF_TRUE0)
// Math.vm:337    push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:338    call Sys.error 1
@Math.sqrt$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Math.sqrt$ret.0)
// Math.vm:339    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Math.vm:340    label IF_FALSE0
(Math.sqrt$IF_FALSE0)
// Math.vm:341    push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:342    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:343    label WHILE_EXP0
(Math.sqrt$WHILE_EXP0)
// Math.vm:344    push local 0
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
// Math.vm:345    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:346    neg
@SP
A=M-1
M=-M
// Math.vm:347    gt
@Math.comp127
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
(Math.comp127)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:348    not
@SP
A=M-1
M=!M
// Math.vm:349    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Math.sqrt$WHILE_END0
D;JNE
// Math.vm:350    push local 3
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
// Math.vm:351    push local 0
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
// Math.vm:352    push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:353    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:354    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Math.vm:355    push that 0
@THAT
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
// Math.vm:356    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Math.vm:357    pop local 1
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
// Math.vm:358    push local 1
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
// Math.vm:359    push local 1
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
// Math.vm:360    call Math.multiply 2
@Math.sqrt$ret.1  // push return address
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
@Math.multiply // goto Math.multiply
0;JMP
(Math.sqrt$ret.1)
// Math.vm:361    pop local 2
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
// Math.vm:362    push local 2
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
// Math.vm:363    push argument 0
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
// Math.vm:364    gt
@Math.comp128
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
(Math.comp128)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:365    not
@SP
A=M-1
M=!M
// Math.vm:366    push local 2
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
// Math.vm:367    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:368    lt
@Math.comp129
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
(Math.comp129)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:369    not
@SP
A=M-1
M=!M
// Math.vm:370    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Math.vm:371    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Math.sqrt$IF_TRUE1
D;JNE
// Math.vm:372    if-goto IF_FALSE1
@Math.sqrt$IF_FALSE1
0;JMP
// Math.vm:373    label IF_TRUE1
(Math.sqrt$IF_TRUE1)
// Math.vm:374    push local 1
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
// Math.vm:375    pop local 3
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
// Math.vm:376    label IF_FALSE1
(Math.sqrt$IF_FALSE1)
// Math.vm:377    push local 0
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
// Math.vm:378    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Math.vm:379    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Math.vm:380    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Math.vm:381    if-goto WHILE_EXP0
@Math.sqrt$WHILE_EXP0
0;JMP
// Math.vm:382    label WHILE_END0
(Math.sqrt$WHILE_END0)
// Math.vm:383    push local 3
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
// Math.vm:384    return from Math.sqrt
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
// Math.vm:385    function Math.max 0
(Math.max)
// Math.vm:386    push argument 0
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
// Math.vm:387    push argument 1
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
// Math.vm:388    gt
@Math.comp130
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
(Math.comp130)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:389    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.max$IF_TRUE0
D;JNE
// Math.vm:390    if-goto IF_FALSE0
@Math.max$IF_FALSE0
0;JMP
// Math.vm:391    label IF_TRUE0
(Math.max$IF_TRUE0)
// Math.vm:392    push argument 0
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
// Math.vm:393    pop argument 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// Math.vm:394    label IF_FALSE0
(Math.max$IF_FALSE0)
// Math.vm:395    push argument 1
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
// Math.vm:396    return from Math.max
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
// Math.vm:397    function Math.min 0
(Math.min)
// Math.vm:398    push argument 0
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
// Math.vm:399    push argument 1
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
// Math.vm:400    lt
@Math.comp131
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
(Math.comp131)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Math.vm:401    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.min$IF_TRUE0
D;JNE
// Math.vm:402    if-goto IF_FALSE0
@Math.min$IF_FALSE0
0;JMP
// Math.vm:403    label IF_TRUE0
(Math.min$IF_TRUE0)
// Math.vm:404    push argument 0
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
// Math.vm:405    pop argument 1
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
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
// Math.vm:406    label IF_FALSE0
(Math.min$IF_FALSE0)
// Math.vm:407    push argument 1
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
// Math.vm:408    return from Math.min
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
// Memory.vm:1    function Memory.init 0
(Memory.init)
// Memory.vm:2    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:3    pop static 0
@SP
M=M-1
A=M
D=M
@Memory.0
M=D
// Memory.vm:4    push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:5    push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:6    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:7    push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:8    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:9    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:10    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:11    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:12    push constant 2049
@2049
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:13    push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:14    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:15    push constant 2050
@2050
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:16    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:17    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:18    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:19    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:20    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:21    return from Memory.init
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
// Memory.vm:22    function Memory.peek 0
(Memory.peek)
// Memory.vm:23    push argument 0
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
// Memory.vm:24    push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:25    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:26    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:27    push that 0
@THAT
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
// Memory.vm:28    return from Memory.peek
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
// Memory.vm:29    function Memory.poke 0
(Memory.poke)
// Memory.vm:30    push argument 0
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
// Memory.vm:31    push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:32    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:33    push argument 1
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
// Memory.vm:34    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:35    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:36    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:37    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:38    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:39    return from Memory.poke
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
// Memory.vm:40    function Memory.alloc 2
(Memory.alloc)
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
// Memory.vm:41    push argument 0
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
// Memory.vm:42    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:43    lt
@Memory.comp132
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
(Memory.comp132)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:44    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Memory.alloc$IF_TRUE0
D;JNE
// Memory.vm:45    if-goto IF_FALSE0
@Memory.alloc$IF_FALSE0
0;JMP
// Memory.vm:46    label IF_TRUE0
(Memory.alloc$IF_TRUE0)
// Memory.vm:47    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:48    call Sys.error 1
@Memory.alloc$ret.0  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Memory.alloc$ret.0)
// Memory.vm:49    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:50    label IF_FALSE0
(Memory.alloc$IF_FALSE0)
// Memory.vm:51    push argument 0
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
// Memory.vm:52    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:53    eq
@Memory.comp133
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
(Memory.comp133)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:54    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Memory.alloc$IF_TRUE1
D;JNE
// Memory.vm:55    if-goto IF_FALSE1
@Memory.alloc$IF_FALSE1
0;JMP
// Memory.vm:56    label IF_TRUE1
(Memory.alloc$IF_TRUE1)
// Memory.vm:57    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:58    pop argument 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@ARG
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:59    label IF_FALSE1
(Memory.alloc$IF_FALSE1)
// Memory.vm:60    push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:61    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:62    label WHILE_EXP0
(Memory.alloc$WHILE_EXP0)
// Memory.vm:63    push local 0
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
// Memory.vm:64    push constant 16383
@16383
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:65    lt
@Memory.comp134
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
(Memory.comp134)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:66    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:67    push local 0
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
// Memory.vm:68    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:69    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:70    push that 0
@THAT
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
// Memory.vm:71    push argument 0
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
// Memory.vm:72    lt
@Memory.comp135
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
(Memory.comp135)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:73    and
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M&D
// Memory.vm:74    not
@SP
A=M-1
M=!M
// Memory.vm:75    if WHILE_END0
@SP
M=M-1
A=M
D=M
@Memory.alloc$WHILE_END0
D;JNE
// Memory.vm:76    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:77    push local 0
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
// Memory.vm:78    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:79    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:80    push that 0
@THAT
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
// Memory.vm:81    pop local 1
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
// Memory.vm:82    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:83    push local 0
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
// Memory.vm:84    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:85    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:86    push that 0
@THAT
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
// Memory.vm:87    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:88    eq
@Memory.comp136
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
(Memory.comp136)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:89    push local 1
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
// Memory.vm:90    push constant 16382
@16382
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:91    gt
@Memory.comp137
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
(Memory.comp137)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:92    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Memory.vm:93    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:94    push local 1
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
// Memory.vm:95    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:96    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:97    push that 0
@THAT
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
// Memory.vm:98    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:99    eq
@Memory.comp138
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
(Memory.comp138)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:100    or
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M|D
// Memory.vm:101    if IF_TRUE2
@SP
M=M-1
A=M
D=M
@Memory.alloc$IF_TRUE2
D;JNE
// Memory.vm:102    if-goto IF_FALSE2
@Memory.alloc$IF_FALSE2
0;JMP
// Memory.vm:103    label IF_TRUE2
(Memory.alloc$IF_TRUE2)
// Memory.vm:104    push local 1
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
// Memory.vm:105    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:106    if-goto IF_END2
@Memory.alloc$IF_END2
0;JMP
// Memory.vm:107    label IF_FALSE2
(Memory.alloc$IF_FALSE2)
// Memory.vm:108    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:109    push local 0
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
// Memory.vm:110    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:111    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:112    push local 0
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
// Memory.vm:113    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:114    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:115    push that 0
@THAT
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
// Memory.vm:116    push local 0
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
// Memory.vm:117    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Memory.vm:118    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:119    push local 1
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
// Memory.vm:120    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:121    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:122    push that 0
@THAT
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
// Memory.vm:123    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:124    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:125    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:126    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:127    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:128    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:129    push local 1
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
// Memory.vm:130    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:131    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:132    push that 0
@THAT
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
// Memory.vm:133    push local 1
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
// Memory.vm:134    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:135    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:136    eq
@Memory.comp139
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
(Memory.comp139)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:137    if IF_TRUE3
@SP
M=M-1
A=M
D=M
@Memory.alloc$IF_TRUE3
D;JNE
// Memory.vm:138    if-goto IF_FALSE3
@Memory.alloc$IF_FALSE3
0;JMP
// Memory.vm:139    label IF_TRUE3
(Memory.alloc$IF_TRUE3)
// Memory.vm:140    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:141    push local 0
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
// Memory.vm:142    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:143    push local 0
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
// Memory.vm:144    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:145    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:146    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:147    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:148    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:149    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:150    if-goto IF_END3
@Memory.alloc$IF_END3
0;JMP
// Memory.vm:151    label IF_FALSE3
(Memory.alloc$IF_FALSE3)
// Memory.vm:152    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:153    push local 0
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
// Memory.vm:154    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:155    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:156    push local 1
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
// Memory.vm:157    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:158    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:159    push that 0
@THAT
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
// Memory.vm:160    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:161    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:162    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:163    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:164    label IF_END3
(Memory.alloc$IF_END3)
// Memory.vm:165    label IF_END2
(Memory.alloc$IF_END2)
// Memory.vm:166    if-goto WHILE_EXP0
@Memory.alloc$WHILE_EXP0
0;JMP
// Memory.vm:167    label WHILE_END0
(Memory.alloc$WHILE_END0)
// Memory.vm:168    push local 0
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
// Memory.vm:169    push argument 0
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
// Memory.vm:170    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:171    push constant 16379
@16379
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:172    gt
@Memory.comp140
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
(Memory.comp140)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:173    if IF_TRUE4
@SP
M=M-1
A=M
D=M
@Memory.alloc$IF_TRUE4
D;JNE
// Memory.vm:174    if-goto IF_FALSE4
@Memory.alloc$IF_FALSE4
0;JMP
// Memory.vm:175    label IF_TRUE4
(Memory.alloc$IF_TRUE4)
// Memory.vm:176    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:177    call Sys.error 1
@Memory.alloc$ret.1  // push return address
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
@Sys.error // goto Sys.error
0;JMP
(Memory.alloc$ret.1)
// Memory.vm:178    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:179    label IF_FALSE4
(Memory.alloc$IF_FALSE4)
// Memory.vm:180    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:181    push local 0
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
// Memory.vm:182    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:183    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:184    push that 0
@THAT
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
// Memory.vm:185    push argument 0
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
// Memory.vm:186    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:187    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:188    gt
@Memory.comp141
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
(Memory.comp141)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:189    if IF_TRUE5
@SP
M=M-1
A=M
D=M
@Memory.alloc$IF_TRUE5
D;JNE
// Memory.vm:190    if-goto IF_FALSE5
@Memory.alloc$IF_FALSE5
0;JMP
// Memory.vm:191    label IF_TRUE5
(Memory.alloc$IF_TRUE5)
// Memory.vm:192    push argument 0
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
// Memory.vm:193    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:194    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:195    push local 0
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
// Memory.vm:196    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:197    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:198    push local 0
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
// Memory.vm:199    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:200    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:201    push that 0
@THAT
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
// Memory.vm:202    push argument 0
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
// Memory.vm:203    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Memory.vm:204    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:205    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Memory.vm:206    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:207    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:208    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:209    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:210    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:211    push local 0
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
// Memory.vm:212    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:213    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:214    push that 0
@THAT
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
// Memory.vm:215    push local 0
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
// Memory.vm:216    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:217    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:218    eq
@Memory.comp142
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
(Memory.comp142)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:219    if IF_TRUE6
@SP
M=M-1
A=M
D=M
@Memory.alloc$IF_TRUE6
D;JNE
// Memory.vm:220    if-goto IF_FALSE6
@Memory.alloc$IF_FALSE6
0;JMP
// Memory.vm:221    label IF_TRUE6
(Memory.alloc$IF_TRUE6)
// Memory.vm:222    push argument 0
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
// Memory.vm:223    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:224    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:225    push local 0
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
// Memory.vm:226    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:227    push local 0
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
// Memory.vm:228    push argument 0
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
// Memory.vm:229    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:230    push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:231    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:232    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:233    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:234    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:235    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:236    if-goto IF_END6
@Memory.alloc$IF_END6
0;JMP
// Memory.vm:237    label IF_FALSE6
(Memory.alloc$IF_FALSE6)
// Memory.vm:238    push argument 0
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
// Memory.vm:239    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:240    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:241    push local 0
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
// Memory.vm:242    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:243    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:244    push local 0
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
// Memory.vm:245    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:246    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:247    push that 0
@THAT
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
// Memory.vm:248    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:249    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:250    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:251    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:252    label IF_END6
(Memory.alloc$IF_END6)
// Memory.vm:253    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:254    push local 0
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
// Memory.vm:255    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:256    push local 0
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
// Memory.vm:257    push argument 0
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
// Memory.vm:258    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:259    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:260    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:261    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:262    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:263    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:264    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:265    label IF_FALSE5
(Memory.alloc$IF_FALSE5)
// Memory.vm:266    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:267    push local 0
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
// Memory.vm:268    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:269    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:270    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:271    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:272    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:273    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:274    push local 0
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
// Memory.vm:275    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:276    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:277    return from Memory.alloc
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
// Memory.vm:278    function Memory.deAlloc 2
(Memory.deAlloc)
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
// Memory.vm:279    push argument 0
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
// Memory.vm:280    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:281    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Memory.vm:282    pop local 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@LCL
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:283    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:284    push local 0
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
// Memory.vm:285    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:286    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:287    push that 0
@THAT
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
// Memory.vm:288    pop local 1
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
// Memory.vm:289    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:290    push local 1
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
// Memory.vm:291    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:292    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:293    push that 0
@THAT
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
// Memory.vm:294    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:295    eq
@Memory.comp143
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
(Memory.comp143)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:296    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Memory.deAlloc$IF_TRUE0
D;JNE
// Memory.vm:297    if-goto IF_FALSE0
@Memory.deAlloc$IF_FALSE0
0;JMP
// Memory.vm:298    label IF_TRUE0
(Memory.deAlloc$IF_TRUE0)
// Memory.vm:299    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:300    push local 0
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
// Memory.vm:301    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:302    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:303    push local 0
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
// Memory.vm:304    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:305    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:306    push that 0
@THAT
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
// Memory.vm:307    push local 0
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
// Memory.vm:308    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Memory.vm:309    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:310    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Memory.vm:311    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:312    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:313    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:314    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:315    if-goto IF_END0
@Memory.deAlloc$IF_END0
0;JMP
// Memory.vm:316    label IF_FALSE0
(Memory.deAlloc$IF_FALSE0)
// Memory.vm:317    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:318    push local 0
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
// Memory.vm:319    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:320    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:321    push local 0
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
// Memory.vm:322    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:323    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:324    push that 0
@THAT
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
// Memory.vm:325    push local 0
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
// Memory.vm:326    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Memory.vm:327    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:328    push local 1
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
// Memory.vm:329    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:330    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:331    push that 0
@THAT
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
// Memory.vm:332    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:333    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:334    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:335    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:336    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:337    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:338    push local 1
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
// Memory.vm:339    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:340    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:341    push that 0
@THAT
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
// Memory.vm:342    push local 1
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
// Memory.vm:343    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:344    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:345    eq
@Memory.comp144
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
(Memory.comp144)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Memory.vm:346    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Memory.deAlloc$IF_TRUE1
D;JNE
// Memory.vm:347    if-goto IF_FALSE1
@Memory.deAlloc$IF_FALSE1
0;JMP
// Memory.vm:348    label IF_TRUE1
(Memory.deAlloc$IF_TRUE1)
// Memory.vm:349    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:350    push local 0
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
// Memory.vm:351    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:352    push local 0
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
// Memory.vm:353    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:354    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:355    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:356    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:357    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:358    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:359    if-goto IF_END1
@Memory.deAlloc$IF_END1
0;JMP
// Memory.vm:360    label IF_FALSE1
(Memory.deAlloc$IF_FALSE1)
// Memory.vm:361    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:362    push local 0
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
// Memory.vm:363    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:364    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:365    push local 1
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
// Memory.vm:366    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Memory.vm:367    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:368    push that 0
@THAT
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
// Memory.vm:369    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Memory.vm:370    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Memory.vm:371    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:372    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Memory.vm:373    label IF_END1
(Memory.deAlloc$IF_END1)
// Memory.vm:374    label IF_END0
(Memory.deAlloc$IF_END0)
// Memory.vm:375    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Memory.vm:376    return from Memory.deAlloc
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
// Trig.vm:1    function Trig.init 0
(Trig.init)
// Trig.vm:2    push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:3    pop static 2
@SP
M=M-1
A=M
D=M
@Trig.2
M=D
// Trig.vm:4    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:5    pop static 3
@SP
M=M-1
A=M
D=M
@Trig.3
M=D
// Trig.vm:6    push static 2
@Trig.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:7    call Array.new 1
@Trig.init$ret.0  // push return address
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
@Array.new // goto Array.new
0;JMP
(Trig.init$ret.0)
// Trig.vm:8    pop static 0
@SP
M=M-1
A=M
D=M
@Trig.0
M=D
// Trig.vm:9    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:10    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:11    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:12    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:13    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:14    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:15    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:16    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:17    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:18    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:19    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:20    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:21    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:22    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:23    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:24    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:25    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:26    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:27    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:28    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:29    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:30    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:31    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:32    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:33    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:34    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:35    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:36    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:37    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:38    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:39    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:40    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:41    push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:42    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:43    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:44    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:45    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:46    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:47    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:48    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:49    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:50    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:51    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:52    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:53    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:54    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:55    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:56    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:57    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:58    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:59    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:60    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:61    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:62    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:63    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:64    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:65    push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:66    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:67    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:68    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:69    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:70    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:71    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:72    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:73    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:74    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:75    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:76    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:77    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:78    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:79    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:80    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:81    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:82    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:83    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:84    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:85    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:86    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:87    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:88    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:89    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:90    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:91    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:92    push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:93    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:94    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:95    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:96    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:97    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:98    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:99    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:100    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:101    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:102    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:103    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:104    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:105    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:106    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:107    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:108    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:109    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:110    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:111    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:112    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:113    push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:114    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:115    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:116    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:117    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:118    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:119    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:120    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:121    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:122    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:123    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:124    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:125    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:126    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:127    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:128    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:129    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:130    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:131    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:132    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:133    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:134    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:135    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:136    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:137    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:138    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:139    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:140    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:141    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:142    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:143    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:144    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:145    push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:146    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:147    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:148    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:149    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:150    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:151    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:152    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:153    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:154    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:155    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:156    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:157    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:158    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:159    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:160    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:161    push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:162    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:163    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:164    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:165    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:166    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:167    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:168    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:169    push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:170    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:171    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:172    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:173    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:174    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:175    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:176    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:177    push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:178    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:179    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:180    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:181    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:182    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:183    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:184    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:185    push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:186    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:187    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:188    push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:189    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:190    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:191    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:192    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:193    push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:194    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:195    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:196    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:197    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:198    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:199    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:200    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:201    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:202    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:203    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:204    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:205    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:206    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:207    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:208    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:209    push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:210    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:211    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:212    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:213    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:214    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:215    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:216    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:217    push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:218    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:219    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:220    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:221    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:222    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:223    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:224    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:225    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:226    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:227    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:228    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:229    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:230    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:231    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:232    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:233    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:234    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:235    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:236    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:237    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:238    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:239    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:240    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:241    push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:242    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:243    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:244    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:245    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:246    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:247    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:248    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:249    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:250    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:251    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:252    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:253    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:254    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:255    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:256    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:257    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:258    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:259    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:260    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:261    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:262    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:263    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:264    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:265    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:266    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:267    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:268    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:269    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:270    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:271    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:272    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:273    push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:274    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:275    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:276    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:277    neg
@SP
A=M-1
M=-M
// Trig.vm:278    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:279    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:280    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:281    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:282    push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:283    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:284    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:285    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:286    neg
@SP
A=M-1
M=-M
// Trig.vm:287    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:288    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:289    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:290    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:291    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:292    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:293    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:294    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:295    neg
@SP
A=M-1
M=-M
// Trig.vm:296    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:297    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:298    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:299    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:300    push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:301    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:302    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:303    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:304    neg
@SP
A=M-1
M=-M
// Trig.vm:305    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:306    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:307    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:308    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:309    push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:310    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:311    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:312    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:313    neg
@SP
A=M-1
M=-M
// Trig.vm:314    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:315    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:316    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:317    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:318    push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:319    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:320    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:321    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:322    neg
@SP
A=M-1
M=-M
// Trig.vm:323    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:324    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:325    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:326    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:327    push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:328    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:329    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:330    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:331    neg
@SP
A=M-1
M=-M
// Trig.vm:332    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:333    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:334    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:335    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:336    push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:337    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:338    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:339    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:340    neg
@SP
A=M-1
M=-M
// Trig.vm:341    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:342    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:343    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:344    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:345    push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:346    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:347    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:348    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:349    neg
@SP
A=M-1
M=-M
// Trig.vm:350    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:351    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:352    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:353    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:354    push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:355    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:356    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:357    push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:358    neg
@SP
A=M-1
M=-M
// Trig.vm:359    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:360    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:361    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:362    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:363    push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:364    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:365    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:366    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:367    neg
@SP
A=M-1
M=-M
// Trig.vm:368    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:369    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:370    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:371    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:372    push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:373    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:374    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:375    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:376    neg
@SP
A=M-1
M=-M
// Trig.vm:377    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:378    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:379    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:380    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:381    push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:382    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:383    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:384    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:385    neg
@SP
A=M-1
M=-M
// Trig.vm:386    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:387    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:388    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:389    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:390    push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:391    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:392    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:393    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:394    neg
@SP
A=M-1
M=-M
// Trig.vm:395    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:396    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:397    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:398    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:399    push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:400    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:401    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:402    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:403    neg
@SP
A=M-1
M=-M
// Trig.vm:404    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:405    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:406    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:407    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:408    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:409    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:410    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:411    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:412    neg
@SP
A=M-1
M=-M
// Trig.vm:413    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:414    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:415    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:416    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:417    push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:418    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:419    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:420    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:421    neg
@SP
A=M-1
M=-M
// Trig.vm:422    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:423    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:424    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:425    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:426    push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:427    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:428    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:429    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:430    neg
@SP
A=M-1
M=-M
// Trig.vm:431    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:432    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:433    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:434    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:435    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:436    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:437    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:438    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:439    neg
@SP
A=M-1
M=-M
// Trig.vm:440    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:441    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:442    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:443    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:444    push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:445    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:446    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:447    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:448    neg
@SP
A=M-1
M=-M
// Trig.vm:449    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:450    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:451    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:452    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:453    push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:454    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:455    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:456    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:457    neg
@SP
A=M-1
M=-M
// Trig.vm:458    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:459    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:460    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:461    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:462    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:463    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:464    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:465    push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:466    neg
@SP
A=M-1
M=-M
// Trig.vm:467    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:468    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:469    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:470    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:471    push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:472    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:473    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:474    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:475    neg
@SP
A=M-1
M=-M
// Trig.vm:476    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:477    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:478    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:479    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:480    push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:481    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:482    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:483    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:484    neg
@SP
A=M-1
M=-M
// Trig.vm:485    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:486    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:487    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:488    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:489    push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:490    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:491    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:492    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:493    neg
@SP
A=M-1
M=-M
// Trig.vm:494    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:495    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:496    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:497    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:498    push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:499    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:500    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:501    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:502    neg
@SP
A=M-1
M=-M
// Trig.vm:503    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:504    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:505    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:506    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:507    push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:508    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:509    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:510    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:511    neg
@SP
A=M-1
M=-M
// Trig.vm:512    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:513    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:514    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:515    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:516    push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:517    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:518    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:519    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:520    neg
@SP
A=M-1
M=-M
// Trig.vm:521    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:522    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:523    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:524    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:525    push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:526    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:527    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:528    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:529    neg
@SP
A=M-1
M=-M
// Trig.vm:530    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:531    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:532    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:533    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:534    push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:535    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:536    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:537    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:538    neg
@SP
A=M-1
M=-M
// Trig.vm:539    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:540    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:541    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:542    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:543    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:544    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:545    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:546    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:547    neg
@SP
A=M-1
M=-M
// Trig.vm:548    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:549    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:550    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:551    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:552    push static 2
@Trig.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:553    call Array.new 1
@Trig.init$ret.1  // push return address
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
@Array.new // goto Array.new
0;JMP
(Trig.init$ret.1)
// Trig.vm:554    pop static 1
@SP
M=M-1
A=M
D=M
@Trig.1
M=D
// Trig.vm:555    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:556    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:557    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:558    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:559    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:560    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:561    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:562    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:563    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:564    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:565    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:566    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:567    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:568    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:569    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:570    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:571    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:572    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:573    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:574    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:575    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:576    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:577    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:578    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:579    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:580    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:581    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:582    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:583    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:584    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:585    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:586    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:587    push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:588    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:589    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:590    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:591    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:592    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:593    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:594    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:595    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:596    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:597    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:598    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:599    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:600    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:601    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:602    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:603    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:604    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:605    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:606    push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:607    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:608    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:609    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:610    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:611    push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:612    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:613    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:614    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:615    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:616    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:617    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:618    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:619    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:620    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:621    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:622    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:623    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:624    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:625    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:626    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:627    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:628    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:629    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:630    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:631    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:632    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:633    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:634    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:635    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:636    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:637    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:638    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:639    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:640    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:641    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:642    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:643    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:644    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:645    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:646    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:647    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:648    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:649    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:650    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:651    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:652    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:653    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:654    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:655    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:656    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:657    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:658    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:659    push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:660    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:661    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:662    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:663    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:664    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:665    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:666    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:667    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:668    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:669    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:670    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:671    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:672    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:673    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:674    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:675    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:676    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:677    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:678    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:679    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:680    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:681    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:682    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:683    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:684    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:685    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:686    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:687    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:688    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:689    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:690    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:691    push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:692    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:693    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:694    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:695    neg
@SP
A=M-1
M=-M
// Trig.vm:696    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:697    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:698    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:699    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:700    push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:701    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:702    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:703    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:704    neg
@SP
A=M-1
M=-M
// Trig.vm:705    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:706    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:707    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:708    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:709    push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:710    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:711    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:712    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:713    neg
@SP
A=M-1
M=-M
// Trig.vm:714    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:715    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:716    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:717    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:718    push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:719    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:720    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:721    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:722    neg
@SP
A=M-1
M=-M
// Trig.vm:723    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:724    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:725    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:726    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:727    push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:728    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:729    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:730    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:731    neg
@SP
A=M-1
M=-M
// Trig.vm:732    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:733    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:734    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:735    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:736    push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:737    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:738    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:739    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:740    neg
@SP
A=M-1
M=-M
// Trig.vm:741    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:742    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:743    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:744    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:745    push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:746    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:747    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:748    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:749    neg
@SP
A=M-1
M=-M
// Trig.vm:750    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:751    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:752    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:753    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:754    push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:755    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:756    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:757    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:758    neg
@SP
A=M-1
M=-M
// Trig.vm:759    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:760    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:761    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:762    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:763    push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:764    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:765    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:766    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:767    neg
@SP
A=M-1
M=-M
// Trig.vm:768    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:769    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:770    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:771    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:772    push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:773    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:774    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:775    push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:776    neg
@SP
A=M-1
M=-M
// Trig.vm:777    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:778    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:779    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:780    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:781    push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:782    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:783    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:784    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:785    neg
@SP
A=M-1
M=-M
// Trig.vm:786    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:787    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:788    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:789    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:790    push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:791    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:792    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:793    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:794    neg
@SP
A=M-1
M=-M
// Trig.vm:795    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:796    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:797    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:798    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:799    push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:800    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:801    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:802    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:803    neg
@SP
A=M-1
M=-M
// Trig.vm:804    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:805    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:806    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:807    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:808    push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:809    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:810    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:811    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:812    neg
@SP
A=M-1
M=-M
// Trig.vm:813    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:814    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:815    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:816    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:817    push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:818    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:819    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:820    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:821    neg
@SP
A=M-1
M=-M
// Trig.vm:822    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:823    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:824    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:825    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:826    push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:827    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:828    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:829    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:830    neg
@SP
A=M-1
M=-M
// Trig.vm:831    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:832    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:833    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:834    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:835    push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:836    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:837    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:838    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:839    neg
@SP
A=M-1
M=-M
// Trig.vm:840    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:841    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:842    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:843    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:844    push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:845    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:846    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:847    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:848    neg
@SP
A=M-1
M=-M
// Trig.vm:849    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:850    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:851    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:852    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:853    push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:854    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:855    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:856    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:857    neg
@SP
A=M-1
M=-M
// Trig.vm:858    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:859    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:860    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:861    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:862    push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:863    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:864    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:865    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:866    neg
@SP
A=M-1
M=-M
// Trig.vm:867    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:868    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:869    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:870    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:871    push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:872    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:873    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:874    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:875    neg
@SP
A=M-1
M=-M
// Trig.vm:876    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:877    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:878    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:879    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:880    push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:881    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:882    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:883    push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:884    neg
@SP
A=M-1
M=-M
// Trig.vm:885    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:886    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:887    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:888    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:889    push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:890    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:891    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:892    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:893    neg
@SP
A=M-1
M=-M
// Trig.vm:894    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:895    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:896    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:897    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:898    push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:899    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:900    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:901    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:902    neg
@SP
A=M-1
M=-M
// Trig.vm:903    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:904    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:905    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:906    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:907    push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:908    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:909    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:910    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:911    neg
@SP
A=M-1
M=-M
// Trig.vm:912    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:913    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:914    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:915    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:916    push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:917    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:918    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:919    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:920    neg
@SP
A=M-1
M=-M
// Trig.vm:921    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:922    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:923    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:924    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:925    push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:926    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:927    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:928    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:929    neg
@SP
A=M-1
M=-M
// Trig.vm:930    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:931    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:932    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:933    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:934    push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:935    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:936    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:937    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:938    neg
@SP
A=M-1
M=-M
// Trig.vm:939    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:940    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:941    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:942    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:943    push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:944    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:945    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:946    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:947    neg
@SP
A=M-1
M=-M
// Trig.vm:948    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:949    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:950    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:951    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:952    push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:953    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:954    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:955    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:956    neg
@SP
A=M-1
M=-M
// Trig.vm:957    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:958    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:959    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:960    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:961    push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:962    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:963    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:964    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:965    neg
@SP
A=M-1
M=-M
// Trig.vm:966    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:967    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:968    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:969    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:970    push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:971    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:972    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:973    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:974    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:975    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:976    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:977    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:978    push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:979    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:980    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:981    push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:982    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:983    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:984    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:985    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:986    push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:987    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:988    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:989    push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:990    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:991    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:992    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:993    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:994    push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:995    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:996    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:997    push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:998    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:999    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1000    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1001    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1002    push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1003    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1004    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1005    push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1006    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1007    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1008    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1009    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1010    push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1011    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1012    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1013    push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1014    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1015    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1016    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1017    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1018    push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1019    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1020    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1021    push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1022    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1023    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1024    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1025    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1026    push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1027    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1028    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1029    push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1030    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1031    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1032    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1033    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1034    push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1035    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1036    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1037    push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1038    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1039    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1040    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1041    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1042    push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1043    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1044    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1045    push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1046    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1047    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1048    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1049    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1050    push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1051    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1052    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1053    push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1054    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1055    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1056    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1057    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1058    push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1059    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1060    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1061    push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1062    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1063    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1064    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1065    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1066    push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1067    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1068    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1069    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1070    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1071    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1072    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1073    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1074    push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1075    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1076    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1077    push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1078    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1079    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1080    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1081    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1082    push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1083    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1084    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1085    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1086    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1087    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1088    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1089    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1090    push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1091    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1092    add
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M+D
// Trig.vm:1093    push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1094    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1095    pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D
// Trig.vm:1096    push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1097    pop that 0
@SP
M=M-1
A=M
D=M
@R13 // temp store R13 = D
M=D
@THAT
D=M
@0
D=D+A
@R14  // pointer to dest R14 = seg + i
M=D
@R13
D=M
@R14
A=M
M=D
// Trig.vm:1098    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1099    return from Trig.init
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
// Trig.vm:1100    function Trig.sin 0
(Trig.sin)
// Trig.vm:1101    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1102    return from Trig.sin
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
// Trig.vm:1103    function Trig.cos 0
(Trig.cos)
// Trig.vm:1104    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1105    return from Trig.cos
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
// Trig.vm:1106    function Trig.size 0
(Trig.size)
// Trig.vm:1107    push static 2
@Trig.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1108    return from Trig.size
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
// Trig.vm:1109    function Trig.scale 0
(Trig.scale)
// Trig.vm:1110    push static 3
@Trig.3
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1111    return from Trig.scale
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
// Trig.vm:1112    function Trig.clamp 0
(Trig.clamp)
// Trig.vm:1113    push argument 0
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
// Trig.vm:1114    push static 2
@Trig.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1115    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1116    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Trig.vm:1117    gt
@Trig.comp145
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
(Trig.comp145)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Trig.vm:1118    if IF_TRUE0
@SP
M=M-1
A=M
D=M
@Trig.clamp$IF_TRUE0
D;JNE
// Trig.vm:1119    if-goto IF_FALSE0
@Trig.clamp$IF_FALSE0
0;JMP
// Trig.vm:1120    label IF_TRUE0
(Trig.clamp$IF_TRUE0)
// Trig.vm:1121    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1122    return from Trig.clamp
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
// Trig.vm:1123    label IF_FALSE0
(Trig.clamp$IF_FALSE0)
// Trig.vm:1124    push argument 0
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
// Trig.vm:1125    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1126    lt
@Trig.comp146
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
(Trig.comp146)
@SP
A=M-1
M=D // Write result of comparison op to stack
// Trig.vm:1127    if IF_TRUE1
@SP
M=M-1
A=M
D=M
@Trig.clamp$IF_TRUE1
D;JNE
// Trig.vm:1128    if-goto IF_FALSE1
@Trig.clamp$IF_FALSE1
0;JMP
// Trig.vm:1129    label IF_TRUE1
(Trig.clamp$IF_TRUE1)
// Trig.vm:1130    push static 2
@Trig.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1131    push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1132    sub
@SP
M=M-1
A=M
D=M
@SP
A=M-1
M=M-D
// Trig.vm:1133    return from Trig.clamp
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
// Trig.vm:1134    label IF_FALSE1
(Trig.clamp$IF_FALSE1)
// Trig.vm:1135    push argument 0
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
// Trig.vm:1136    return from Trig.clamp
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
// Trig.vm:1137    function Trig.dispose 0
(Trig.dispose)
// Trig.vm:1138    push static 0
@Trig.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1139    call Memory.deAlloc 1
@Trig.dispose$ret.0  // push return address
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
@Memory.deAlloc // goto Memory.deAlloc
0;JMP
(Trig.dispose$ret.0)
// Trig.vm:1140    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1141    push static 1
@Trig.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1142    call Memory.deAlloc 1
@Trig.dispose$ret.1  // push return address
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
@Memory.deAlloc // goto Memory.deAlloc
0;JMP
(Trig.dispose$ret.1)
// Trig.vm:1143    pop temp 0
@SP
M=M-1
A=M
D=M
@R5
M=D
// Trig.vm:1144    push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Trig.vm:1145    return from Trig.dispose
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
