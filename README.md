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

## Hack+

To make Hack more practical for the programs that are normally run on the VM. The following
spec change is made:

## Paging JMP

By convention the comparison opcodes are set to zero in the jump instruction `0;JMP`
This allows use to extend the JMP instruction to use the comparison opcodes as a paging jump to allow
more ROM. The comparison opcodes are 7 bits so allows 128 pages of ROM. Old code will continue to function
as `0;JMP` will continue to jump to ROM in the first page.

To make full use of the 16-bit `PC`, each page is boosted from 32K to 64K. For programs to be able to use the
higher half of memory the A instructions need to be combined with an C instruction to make numbers up to 64K.

e.g. `@32768 D=M @32768 A=D+A 0;JMP`

Hence the high memory addresses will take 5 ops instead of 2 ops to complete. However this does mean hack can
load up to around 8 million instructions at once.

A naive compiler option is convert each vm file to a page. Will have to see if any really big programs
need anything cleverer to pack them in.

## Extended C instructions

C instructions currently start with the opcode `111`, the 2nd and 3rd bit hence are free to add new instructions:
* `100` - reserved for extension
* `101` - L instructions - Loading instructions load RAM into ROM
* `110` - S instructions - signals and interrupts
* `111` - C instructions - as existing

### Loads

Loads needs to do two things. Load RAM into ROM, and paging RAM.
To allow OS virtualisation there needs to be two registers `base` and `bounds`
if the M registered accessed by the C instruction is outside of the `base` and `bounds` throw an interrupt
depending on the permission.

### signals and interrupts

Each S instructions sends a signal to an 12 bit address. This allows for 4,096 peripherals.

4 bits are for 16 interrupt types

The remaining bit is used for (loading interrupt from stack or their data, triggering software interrupts, changing interrupt mask)


the interrupt will give it's address and 4 bits (for interrupt type?)
each interrupt also has a data value of 16-bits and depending on peripheral may have memory mapping or ability to write to ram

Peripherals should be able to send interrupts. If enabled an interrupt will have the PC set to the value in the
`trap` register.

### Kernel mode

There should be a bit that specifies user or kernel mode. Kernel mode disables interrupts and the base and bounds.

Kernel mode will have it's own A, D and M registers (what about stack?). Only Kernel can set the trap values

## future extensions

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
