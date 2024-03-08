import sys
import os
from typing import List, Tuple, Dict, Any
import JackTokenizer
import CompilationEngine


def parse_args(args: List[str]) -> Tuple[str, Dict[str, Any]]:
    """Check for flags and files"""
    options = {
    }
    files: List[str] = []
    for arg in args[1:]:
        if arg[0] == '-':
            print(f"Unknown arg {arg}")
        else:
            files.append(arg)
    return files, options


if __name__ == '__main__':
    file_args, options = parse_args(sys.argv)
    for file_arg in file_args:
        if os.path.isdir(file_arg):
            files = [
                os.path.join(file_arg, f) for f in os.listdir(file_arg)
                if os.path.isfile(os.path.join(file_arg, f)) and f.split('.')[-1] == 'jack'
            ]
        else:
            files = [file_arg]
        for filepath in files:
            t = JackTokenizer.JackTokenizer(open(filepath, 'r'))
            compilation_engine = CompilationEngine.CompilationEngine(t)
            compilation_engine.compile_class()
