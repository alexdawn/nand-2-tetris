import tkinter
from tkinter.filedialog import askopenfilename
from PIL import Image, ImageTk
import time

key = {
    114: 132,
    113: 130
}

calcs = {
    0b101010: lambda self, alt: 0,
    0b111111: lambda self, alt: 1,
    0b111010: lambda self, alt: -1,
    0b001100: lambda self, alt: self.d,
    0b110000: lambda self, alt: self.val(alt),
    0b001101: lambda self, alt: ~self.d,
    0b110001: lambda self, alt: ~self.val(alt),
    0b001111: lambda self, alt: -self.d,
    0b110011: lambda self, alt: -self.val(alt),
    0b011111: lambda self, alt: self.d + 1,
    0b110111: lambda self, alt: self.val(alt) + 1,
    0b001110: lambda self, alt: self.d - 1,
    0b110010: lambda self, alt: self.val(alt) - 1,
    0b000010: lambda self, alt: self.d + self.val(alt),
    0b010011: lambda self, alt: self.d - self.val(alt),
    0b000111: lambda self, alt: self.val(alt) - self.d,
    0b000000: lambda self, alt: self.d & self.val(alt),
    0b010101: lambda self, alt: self.d | self.val(alt)
}


class Hack:
    def __init__(self, message, canvas, rom):
        self.keypressed = 0
        self.replace_rom(rom)
        self.message = message
        self.canvas = canvas
        self.current_time = time.time()
        self.reset()
        self.stop = False

    def replace_rom(self, filename: str):
        with open(filename) as file:
            data = [int(word.split('//')[0], 2) for word in file.readlines()]
        # data.extend([0] * (32000 - len(data)))
        self.rom = data

    def key_handler(self, event):
        self.keypressed = key.get(event.keycode, event.keycode)

    def key_release(self, _):
        self.keypressed = 0

    def set_message(self, ops: int):
        self.last_time = self.current_time
        self.current_time = time.time()
        delta = self.current_time - self.last_time
        freq = '{0:.2e}'.format(ops / float(delta))
        self.message.config(
            text=f'speed: {freq}Hz PC: {self.pc:>4x} A: {self.a:>4x} D: {self.d:>4x} key: {self.keypressed:>4}')

    def get_m(self):
        if self.a == 24_576:
            return self.keypressed
        else:
            return self.ram[self.a]

    def set_pixels(self, address, value):
        for i in range(16):
            coords = ((address * 16 + i) % (32 * 16), address // 32)
            val = 255 if (value >> i) & 1 else 0
            self.image.putpixel(coords, val)
            if val:
                self.image_last.putpixel(coords, val)

    def set_m(self, value: int):
        self.ram[self.a] = value
        if self.a >= 16_384 and self.a <= 24_575:
            self.set_pixels(self.a - 16_384, value)

    def del_m(self):
        del self._m

    m = property(get_m, set_m, del_m)

    def val(self, alt: bool) -> int:
        return self.m if alt else self.a

    def calc(self, alt: int, comp: int) -> int:
        return calcs[comp](self, alt)

    def jump(self, condition: bool) -> None:
        if condition:
            self.pc = self.a
        else:
            self.pc += 1

    def reset(self):
        self.ram = [256]
        self.ram.extend([0] * 32_000)
        self.pc = 0
        self.a = 0
        self.d = 0
        self.image_last = Image.new('L', (512, 256), color='black')
        self.black = self.image_last.copy()
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
            self.steps(10_000)
            self.message.after(1, self.play)

    def stop_clock(self):
        self.stop = True

    def gui_refresh(self, ops):
        self.set_message(ops)
        self.image = Image.blend(self.image, self.image_last, 0.2)
        self.image_last = Image.blend(self.image.copy(), self.black, 0.01)
        self.photo_img = ImageTk.PhotoImage(self.image.resize((512 * 2, 256 * 2)))
        self.canvas.config(image=self.photo_img)

    def steps(self, count):
        for i in range(count):
            self.step()
        self.gui_refresh(count)

    def manual_step(self):
        print("step")
        self.step()
        self.gui_refresh(1)

    def step(self):
        if not (self.rom[self.pc] & 0x8000):
            jump = 0
            self.a = self.rom[self.pc]
        else:
            jump = self.rom[self.pc] & 0x0007
            dest = (self.rom[self.pc] & 0x0038) >> 3
            comp = (self.rom[self.pc] & 0x0fc0) >> 6
            alt = bool(self.rom[self.pc] & 0x1000)

            res = self.calc(alt, comp)
            if dest & 0b001:
                self.m = res
            if dest & 0b010:
                self.d = res
            if dest & 0b100:
                self.a = res
            if jump == 0b111:
                self.jump(True)
            elif jump == 0b001:
                self.jump(res > 0)
            elif jump == 0b010:
                self.jump(res == 0)
            elif jump == 0b011:
                self.jump(res >= 0)
            elif jump == 0b100:
                self.jump(res < 0)
            elif jump == 0b101:
                self.jump(res != 0)
            elif jump == 0b110:
                self.jump(res <= 0)
        if not jump:
            self.pc += 1

    def load(self):
        self.replace_rom(open_file_chooser())


def open_file_chooser():
    filename = askopenfilename()
    print("You have selected : %s" % filename)
    return filename


if __name__ == '__main__':
    root = tkinter.Tk()
    filename = open_file_chooser()  # './05-architecture/Rect.hack'
    root.title(filename.split('/')[-1])
    root.resizable(False, False)
    canvas = tkinter.Label(root)
    message = tkinter.Label(root, text="Hello, World!")
    hack = Hack(message, canvas, filename)
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
