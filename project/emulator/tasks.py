""" Task definitions for invoke command line utility for python bindings
    overview article.
"""
import invoke
import sys
import os
import shutil
import glob

on_win = sys.platform.startswith("win")


@invoke.task
def clean(c):
    """Remove any built objects"""
    for file_pattern in (
        "*.o",
        "*.so",
        "*.obj",
        "*.dll",
        "*.exp",
        "*.lib",
        "*.pyd"
    ):
        for file in glob.glob(file_pattern):
            os.remove(file)
    for dir_pattern in "Release":
        for dir in glob.glob(dir_pattern):
            shutil.rmtree(dir)


def print_banner(msg):
    print("==================================================")
    print("= {} ".format(msg))


@invoke.task()
def build_emulator(c, path=None):
    """Build the shared library for the sample C code"""
    # Moving this type hint into signature causes an error (???)
    c: invoke.Context
    if on_win:
        if not path:
            print("Path is missing")
        else:
            # Using c.cd didn't work with paths that have spaces :/
            path = f'"{path}vcvars32.bat" x86'  # Enter the VS venv
            path += f'&& cd "{os.getcwd()}"'  # Change to current dir
            path += "&& cl /LD cmult.c"  # Compile
            # Uncomment line below, to suppress stdout
            # path = path.replace("&&", " >nul &&") + " >nul"
            c.run(path)
    else:
        print_banner("Building C Library")
        cmd = "gcc -c -Wall -Werror -fpic emulator.c -I /usr/include/python3.7"
        invoke.run(cmd)
        invoke.run("gcc -shared -o emulator.so emulator.o")
        print("* Complete")


@invoke.task()
def test_ctypes(c):
    """Run the script to test ctypes"""
    print_banner("Testing ctypes Module for C")
    # pty and python3 didn't work for me (win).
    if on_win:
        invoke.run("python ctypes_c_test.py")
    else:
        invoke.run("python3 ctypes_c_test.py", pty=True)

@invoke.task(
    clean,
    build_emulator,
    test_ctypes
)
def all(c):
    """Build and run all tests"""
    pass
