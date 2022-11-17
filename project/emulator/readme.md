Started as a python emulator but executing hack operations were too
slow for running programs such as the provided pong one. Converted the
emulator into C code while the GUI elements remains in python.

* GUI and keyboard input with tkinter
* screen canvas controlled with numpy and PIL

## wasm



## Todos

* sort keyboard event issues without using `xset r off`
* show vm stack info
* handle screen sync issue
* write an assembly optimiser
* with an improved hack controller set, to have a physical stack would be a lot faster still
* add in a persistent storage and networking
* rewind mode?
