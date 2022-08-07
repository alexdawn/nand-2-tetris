import tkinter
from tkinter.filedialog import askopenfilename
from PIL import Image, ImageTk
import time
import numpy as np
import ctypes
import sys
import pathlib

key = {
    114: 132,
    113: 130
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
            data = [int(word.split('//')[0], 2) for word in file.readlines()]
        for i, d in enumerate(data):
            self.rom[i] = d

    def key_handler(self, event):
        # TODO fix xset r off requirement
        self.keyboard = ctypes.c_short(key.get(event.keycode, event.keycode))
        self.hack.keyboard_to_ram(self.keyboard)

    def key_release(self, _):
        self.keyboard = ctypes.c_short(0)
        self.hack.keyboard_to_ram(self.keyboard)

    def set_message(self, ops: int):
        self.last_time = self.current_time
        self.current_time = time.time()
        delta = self.current_time - self.last_time
        freq = '{0:.2e}'.format(ops / float(delta))
        self.message.config(
            text=f'speed: {freq}Hz PC: {self.pc.value:>4x} A: {self.a.value:>4x} D: {self.d.value:>4x} key: {self.keyboard.value:>4}')

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
