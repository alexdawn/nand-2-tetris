#include <stdio.h>
#include "emulator.h"

// c data types:
// char 8 bit
// short 16 bit
// long 32 bit
// long long 64 bit

unsigned short pc; // original hack short, hack+ long
signed short a;
signed short d;
signed short ram[32768]; 
unsigned char page = 0; // hack+ addition, this stores the current page of ROM
unsigned short rom[128 * 65536]; // original hack one page of 32K ROM, hack+ 128 pages of 64K ROM
//char screen[131072]; // PIL takes 1 bytes per screen bit in 1 mode, this pads each ram bit to one byte
unsigned char screen[4 * 131072]; // JS takes 4 bytes per pixel


// method to get pc register to the wrapping program
unsigned short get_pc() {
    return pc;
}

unsigned char get_page() {
    return page;
}

// method to reset the hack emulator
void reset() {
    pc = 0;
    for (int i=0; i < 32768; i++) {
        ram[i] = 0;
    }
}

// method to write the keycode into the memory mapped address for the keyboard
void keyboard_to_ram(signed short keycode) {
    ram[24576] = keycode;
}

// get a pointer to the first screen address
unsigned char* ram_to_screen(void) {
    return &screen[0];
}

// get a pointer to the first ram address
signed short* get_ram() {
    return &ram[0];
}

// get a pointer to the first rom address
unsigned short* get_rom() {
    return &rom[0];
}

// same as ram_to_screen?
unsigned char* get_screen() {
    return &screen[0];
}

// the a opcode picks between the M or A register
// this method halfs the number of switches in calc
signed short val(short alt) {
    return alt ? ram[a] : a;
}

// compute the comparison operation in a C instruction
signed short calc(short alt, short command) {
    signed short result;
    switch (command) {
        case 0b101010:
            result = 0;
            break;
        case 0b111111:
            result = 1;
            break;
        case 0b111010: 
            result = -1;
            break;
        case 0b001100:
            result = d;
            break;
        case 0b110000:
            result = val(alt);
            break;
        case 0b001101:
            result = ~d;
            break;
        case 0b110001:
            result = ~val(alt);
            break;
        case 0b001111:
            result = -d;
            break;
        case 0b110011:
            result = -val(alt);
            break;
        case 0b011111:
            result = d + 1;
            break;
        case 0b110111:
            result = val(alt) + 1;
            break;
        case 0b001110:
            result = d - 1;
            break;
        case 0b110010:
            result = val(alt) - 1;
            break;
        case 0b000010:
            result = d + val(alt);
            break;
        case 0b010011:
            result = d - val(alt);
            break;
        case 0b000111:
            result = val(alt) - d;
            break;
        case 0b000000:
            result = d & val(alt);
            break;
        case 0b010101:
            result = d | val(alt);
            break;
    }
    return result;
}

// method to simulate the JMP command
// either jump to the address in A or just the next instruction
void jump(unsigned char page, short condition) {
    if (condition) {
        page = page;
        pc = a;
    } else {
        pc++;
    }
}

// method for writing to the screen used in python
void update_pil_screen(short a, short value) {
    int i = a - 16384;
    for (int j=0; j < 16; j++) {
        if (value & (0x1 << j)) {
            screen[i * 16 + j] = 0xff;
        } else {
            screen[i * 16 + j] = 0x00;
        }
    }
}

// method for writing to the screen used in JS
void update_js_screen(short a, short value) {
    int i = a - 16384;
    for (int j=0; j < 16; j++) {
        if (value & (0x1 << j)) {
            screen[(i * 16 + j) * 4] = 0xff;  // R
            screen[(i * 16 + j) * 4 + 1] = 0xff;  // G
            screen[(i * 16 + j) * 4 + 2] = 0xff;  // B
            screen[(i * 16 + j) * 4 + 3] = 0xff;  // A
        } else {
            screen[(i * 16 + j) * 4] = 0x00;  // R
            screen[(i * 16 + j) * 4 + 1] = 0x00;  // G
            screen[(i * 16 + j) * 4 + 2] = 0x00; // B
            screen[(i * 16 + j) * 4 + 3] = 0xff;  // A
        }
    }
}

// method to set memory, handles writing to the screen memory mapped addresses
void set_memory(signed short value) {
    ram[a] = value;
    if (a >= 16384 && a < 24576) {
        // update_pil_screen(a, value);
        update_js_screen(a, value);
    }
}

// make a single simulation step
int step() {
    // printf("C: PC %x CMD %x D %x A %x M %x\n", pc, rom[pc], d, a, ram[a]);
    unsigned short jump_code = 0;
    if (!(rom[page * 65536 + pc] & 0x8000)) {
        a = rom[page * 65536 + pc]; // A instruction, copy literal to A reg
    } else {
        // decompose C instruction to parts
        jump_code = rom[page * 65536 + pc] & 0x0007;
        unsigned short dest = (rom[page * 65536 + pc] & 0x0038) >> 3;
        unsigned short comp = (rom[page * 65536 + pc] & 0x0fc0) >> 6;
        short alt = (rom[page * 65536 + pc] & 0x1000);

        // calculate operation specified
        signed short res = calc(alt, comp);
        // set destination registers
        if (dest & 0b001)
            set_memory(res);
        if (dest & 0b010)
            d = res;
        if (dest & 0b100)
            a = res;
        // calculate if a jump should occur
        // jmp can page, conditional jumps are always to the same page
        if (jump_code == 0b111)
            jump((unsigned char) comp, 1); // jmp, in hack+ this can page
        else if (jump_code == 0b001)
            jump(page, res > 0); // jgt
        else if (jump_code == 0b010)
            jump(page, res == 0); // jeq
        else if (jump_code == 0b011)
            jump(page, res >= 0); // jge
        else if (jump_code == 0b100)
            jump(page, res < 0); // jlt
        else if (jump_code == 0b101)
            jump(page, res != 0); // jne
        else if (jump_code == 0b110)
            jump(page, res <= 0); // jle
    }
    if (!jump_code) {
        pc++;
    }
    return 1;
}

// make count step simulation steps
void steps(int count) {
    for (int i = 0; i < count; i++) {
        step();
    }
}
