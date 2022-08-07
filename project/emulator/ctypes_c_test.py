#!/usr/bin/env python
""" Simple examples of calling C functions through ctypes module. """
import ctypes
import sys
import pathlib

if __name__ == "__main__":
    libname = pathlib.Path().absolute()
    if sys.platform.startswith("win"):
        hack = ctypes.CDLL(libname / "emulator.dll")
    else:
        hack = ctypes.CDLL(libname / "emulator.so")

    pc = ctypes.c_ushort.in_dll(hack, "pc")
    d = ctypes.c_short.in_dll(hack, "d")
    a = ctypes.c_short.in_dll(hack, "a")

    ram = (ctypes.c_ushort * 65536).in_dll(hack, "ram")
    rom = (ctypes.c_short * 65536).in_dll(hack, "rom")
    pc.value = 10
    hack.step()
    print(f"    In Python: return val {pc}")
    hack.ram_to_screen.restype = ctypes.POINTER(ctypes.c_char)
    scrn = hack.ram_to_screen()
    print(f"    In Python: return val {scrn[0]}")
