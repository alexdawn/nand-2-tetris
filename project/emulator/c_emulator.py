import tkinter
from tkinter.filedialog import askopenfilename
from PIL import Image, ImageTk
import time
import numpy as np
import ctypes
import sys
import pathlib

# TODO to get this dir so can run the script from any folder
# tkiner to hack char codes
key = {
    "space": 32,
    "exclam": 33,
    "quotedbl": 34,
    "numbersign": 35,
    "dollar": 36,
    "percent": 37,
    "ampersand": 38,
    "quoteright": 39,
    "parenleft": 40,
    "parenright": 41,
    "asterisk": 42,
    "plus": 43,
    "comma": 44,
    "minus": 45,
    "period": 46,
    "slash": 47,
    "0": 48,
    "1": 49,
    "2": 50,
    "3": 51,
    "4": 52,
    "5": 53,
    "6": 54,
    "7": 55,
    "8": 56,
    "9": 57,
    "colon": 58,
    "semicolon": 59,
    "less": 60,
    "equal": 61,
    "greater": 62,
    "question": 63,
    "at": 64,
    "A": 65,
    "B": 66,
    "C": 67,
    "D": 68,
    "E": 69,
    "F": 70,
    "G": 71,
    "H": 72,
    "I": 73,
    "J": 74,
    "K": 75,
    "L": 76,
    "M": 77,
    "N": 78,
    "O": 79,
    "P": 80,
    "Q": 81,
    "R": 82,
    "S": 83,
    "T": 84,
    "U": 85,
    "V": 86,
    "W": 87,
    "X": 88,
    "Y": 89,
    "Z": 90,
    "bracketleft": 91,
    "backslash": 92,
    "bracketright": 93,
    "asciicircum": 94,
    "underscore": 95,
    "quoteleft": 96,
    "a": 97,
    "b": 98,
    "c": 99,
    "d": 100,
    "e": 101,
    "f": 102,
    "g": 103,
    "h": 104,
    "i": 105,
    "j": 106,
    "k": 107,
    "l": 108,
    "m": 109,
    "n": 110,
    "o": 111,
    "p": 112,
    "q": 113,
    "r": 114,
    "s": 115,
    "t": 116,
    "u": 117,
    "v": 118,
    "w": 119,
    "x": 120,
    "y": 121,
    "z": 122,
    "braceleft": 123,
    "bar": 124,
    "braceright": 125,
    "asciitilde": 126,
    "Delete": 127,
    "Return": 128,
    "BackSpace": 129,
    "Left": 130,
    "Up": 131,
    "Right": 132,
    "Down": 133,
    # missing keys my keyboard is missing
    "home": 134,
    "end": 135,
    "pageup": 136,
    "pagedown": 137,
    "insert": 138,
    "delete": 139,
    #
    "Escape": 140,
    "F1": 141,
    "F2": 142,
    "F3": 143,
    "F4": 144,
    "F5": 145,
    "F6": 146,
    "F7": 147,
    "F8": 148,
    "F9": 149,
    "F10": 150,
    "F11": 151,
    "F12": 152
}


class CHack:
    def __init__(self, message, canvas, rom):
        libname = pathlib.Path().absolute()
        if sys.platform.startswith("win"):
            self.hack = ctypes.CDLL(libname / "emulator.dll")
        else:
            self.hack = ctypes.CDLL(libname / "emulator.so")

        self.pc = ctypes.c_ushort.in_dll(self.hack, "pc")
        self.d = ctypes.c_short.in_dll(self.hack, "d")
        self.a = ctypes.c_short.in_dll(self.hack, "a")
        self.keyboard = ctypes.c_short(0)

        self.ram = (ctypes.c_ushort * 32768).in_dll(self.hack, "ram")
        self.np_ram = np.ctypeslib.as_array(self.ram)
        self.rom = (ctypes.c_short * 65536).in_dll(self.hack, "rom")
        self.debug_rom = []
        self.replace_rom(rom)
        self.message = message
        self.canvas = canvas
        self.current_time = time.time()
        self.reset()
        self.stop = False
        self.clock_speed = 75_000

    def set_clock(self, value: int):
        self.clock_speed = value

    def replace_rom(self, filename: str):
        with open(filename) as file:
            data = [word.split('//') for word in file.readlines()]
        self.debug_rom = []
        for i, d in enumerate(data):
            self.rom[i] = int(d[0], 2)
            if len(d) > 1:
                self.debug_rom.append(d[1])

    def key_handler(self, event):
        # TODO fix xset r off requirement
        hack_char_code = key.get(event.keysym)
        if hack_char_code:
            self.keyboard = ctypes.c_short(hack_char_code)
            self.hack.keyboard_to_ram(self.keyboard)

    def key_release(self, _):
        self.keyboard = ctypes.c_short(0)
        self.hack.keyboard_to_ram(self.keyboard)

    def set_message(self, ops: int):
        self.last_time = self.current_time
        self.current_time = time.time()
        delta = self.current_time - self.last_time
        freq = '{0:.2e}'.format(ops / float(delta))
        assembly = self.debug_rom[self.pc.value] if len(self.debug_rom) else ''
        self.message.config(
            text=f'speed: {freq}Hz PC: {self.pc.value:>4x} {assembly}\nA: {self.a.value:>4x} D: {self.d.value:>4x} key: {self.keyboard.value:>4}')

    def reset(self):
        for i, d in enumerate(self.ram):
            self.ram[i] = 0
        self.pc.value = 0
        self.a.value = 0
        self.d.value = 0
        # self.image_last = Image.new('L', (512, 256), color='black')
        # self.black = self.image_last.copy()
        self.image = Image.new('L', (512, 256), color='black')
        self.photo_img = ImageTk.PhotoImage(self.image.resize((512 * 2, 256 * 2))) 
        self.canvas.config(image=self.photo_img)
        self.canvas.pack()
        self.set_message(0)

    def first_play(self):
        print("play")
        self.stop = False
        self.message.after(0, self.play)

    def play(self):
        if not self.stop:
            self.steps(self.clock_speed)
            self.message.after(1, self.play)

    def steps(self, count: int):
        for i in range(count):
            self.hack.step()
        self.gui_refresh(count)

    def stop_clock(self):
        self.stop = True

    def gui_refresh(self, ops):
        self.set_message(ops)
        self.hack.ram_to_screen.restype = ctypes.POINTER(ctypes.c_char)
        scrn = self.hack.ram_to_screen()
        np_screen = np.ctypeslib.as_array(scrn, (256, 512))
        self.image = Image.fromarray(np_screen, mode='L')
        #     'L', (512, 256), self.np_ram[16_384: 24_576],
        #     'raw', 'L', 0, 1)
        # self.image = Image.blend(self.image, self.image_last, 0.2)
        # self.image_last = Image.blend(self.image.copy(), self.black, 0.01)
        self.photo_img = ImageTk.PhotoImage(self.image.resize((512 * 2, 256 * 2)))
        self.canvas.config(image=self.photo_img)

    def manual_step(self):
        print("step")
        self.hack.step()
        self.gui_refresh(1)

    def load(self):
        self.replace_rom(open_file_chooser())


def open_file_chooser():
    filename = askopenfilename()
    return filename


if __name__ == '__main__':
    root = tkinter.Tk()
    filename = '../../project-data/06-assembler/pong/Pong.hack'
    root.title(filename.split('/')[-1])
    root.resizable(False, False)
    canvas = tkinter.Label(root)
    message = tkinter.Label(root, text="Hello, World!")
    hack = CHack(message, canvas, filename)
    root.bind("<KeyPress>", hack.key_handler)
    root.bind('<KeyRelease>', hack.key_release)
    message.pack()
    hack.set_message(0)
    button = tkinter.Button(root, text="Step", command=hack.manual_step)
    button.pack(side=tkinter.LEFT)
    button = tkinter.Button(root, text="Play", command=hack.first_play)
    button.pack(side=tkinter.LEFT)
    button = tkinter.Button(root, text="Stop", command=hack.stop_clock)
    button.pack(side=tkinter.LEFT)
    button = tkinter.Button(root, text="Reset", command=hack.reset)
    button.pack(side=tkinter.LEFT)
    button = tkinter.Button(root, text="Load ROM", command=hack.load)
    button.pack(side=tkinter.LEFT)
    root.mainloop()
