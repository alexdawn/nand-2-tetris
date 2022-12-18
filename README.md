# nand-2-tetris

My projects around the https://www.nand2tetris.org/ course

Preview online with the hack emulator: https://alexdawn.github.io/nand-2-tetris/

## goal

The idea with the emulator is to show off, the cool projects people have
made, however most of the projects will not work on the vanilla hack machine as they are too large between the OS functions and the large jack programs.

Options:
* create a C vm emulator (loses some of the realness)
* Keep pushing for VM code size optimisations
* increase the word size so jump labels work for larger than 32K

## extensions

* hardware changes
    * create a different emulator e.g. DCPU16
    * add more registers and stack (use the spare bits 111)
    * way to load programs
    * add mouse memory map
    * memory map for screen modes (allow 4, 16 colours)
    * memory map for disk RW
    * memory map for internet comms

* asm macros
* VM optimisations (tweak contract)
* jack language tweaks make it a bit less painful
