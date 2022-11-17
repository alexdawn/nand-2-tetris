#include <stdio.h>
#include "emulator.h"

unsigned short pc;
signed short a;
signed short d;
signed short ram[32768];
unsigned short rom[65536];
//char screen[131072]; // PIL takes 1 bytes per screen bit in 1 mode, this pads each ram bit to one byte
unsigned char screen[4 * 131072]; // JS takes 4 bytes per pixel


unsigned short get_pc() {
    return pc;
}

void reset() {
    pc = 0;
    for (int i=0; i < 32768; i++) {
        ram[i] = 0;
    }
}

void keyboard_to_ram(signed short keycode) {
    ram[24576] = keycode;
}

unsigned char* ram_to_screen(void) {
    return &screen[0];
}

signed short* get_ram() {
    return &ram[0];
}

unsigned short* get_rom() {
    return &rom[0];
}

unsigned char* get_screen() {
    return &screen[0];
}

signed short val(short alt) {
    return alt ? ram[a] : a;
}

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

void jump(short condition) {
    if (condition)
        pc = a;
    else
        pc++;
}

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

void set_memory(signed short value) {
    ram[a] = value;
    if (a >= 16384 && a < 24576) {
        // update_pil_screen(a, value);
        update_js_screen(a, value);
    }
}

int step() {
    // printf("C: PC %x CMD %x D %x A %x M %x\n", pc, rom[pc], d, a, ram[a]);
    unsigned short jump_code = 0;
    if (!(rom[pc] & 0x8000)) {
        a = rom[pc];
    } else {
        jump_code = rom[pc] & 0x0007;
        unsigned short dest = (rom[pc] & 0x0038) >> 3;
        unsigned short comp = (rom[pc] & 0x0fc0) >> 6;
        short alt = (rom[pc] & 0x1000);

        signed short res = calc(alt, comp);
        if (dest & 0b001)
            set_memory(res);
        if (dest & 0b010)
            d = res;
        if (dest & 0b100)
            a = res;
        if (jump_code == 0b111)
            jump(1);
        else if (jump_code == 0b001)
            jump(res > 0);
        else if (jump_code == 0b010)
            jump(res == 0);
        else if (jump_code == 0b011)
            jump(res >= 0);
        else if (jump_code == 0b100)
            jump(res < 0);
        else if (jump_code == 0b101)
            jump(res != 0);
        else if (jump_code == 0b110)
            jump(res <= 0);
    }
    if (!jump_code) {
        pc++;
    }
    return 1;
}

void steps(int count) {
    for (int i = 0; i < count; i++) {
        step();
    }
}
