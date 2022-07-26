import sys
from parser import Parser, InstructionType
from typing import List, Tuple, Dict, Any
from code import *

def parse_args(args: List[str]) -> Tuple[str, Dict[str, Any]]:
    """Check for flags and files"""
    options = {
        "bootstrap": False,
        "init_illegal": False,
        "system_call": False,
    }
    files: List[str] = []
    for arg in args[1:]:
        if arg in ('-b', '--bootstrap'):
            options['bootstrap'] = True
        elif arg in ('-i', '--init-illegal'):
            options['init_illegal'] = True
        elif arg in ('-s', '--system-call'):
            options['system_call'] = True
        elif arg in ('-l', '--listing'):
            options['is_listing_file'] = True
        elif arg[0] == '-':
            print(f"Unknown arg {arg}")
        else:
            files.append(arg)
    return files, options


if __name__ == '__main__':
    cw = None
    file_args, options = parse_args(sys.argv)
    for file_arg in file_args:    
        if os.path.isdir(file_arg):
            files = [
                os.path.join(file_arg, f) for f in os.listdir(file_arg) 
                if os.path.isfile(os.path.join(file_arg, f)) and f.split('.')[-1] == 'vm'
            ]
        else:
            files = [file_arg]
        cw = CodeWriter(file_arg, options)
        for filepath in files:
            print(f"converting file: {filepath}")
            with open(filepath) as file:
                cw.set_file_name(file.name)
                parser = Parser(file)
                while(parser.has_more_lines()):
                    parser.advance()
                    command = parser.command_type()
                    if command == InstructionType.C_ARITHMETIC:
                        cw.write_arithmetic(parser.get_arg1(), parser.get_debug_info())
                    elif command in (InstructionType.C_PUSH, InstructionType.C_POP):
                        cw.write_push_pop(command, parser.get_arg1(), parser.get_arg2(), parser.get_debug_info())
                    elif command == InstructionType.C_LABEL:
                        cw.write_label(parser.get_arg1(), parser.get_debug_info())
                    elif command == InstructionType.C_GOTO:
                        cw.write_goto(parser.get_arg1(), parser.get_debug_info()),
                    elif command == InstructionType.C_IF:
                        cw.write_if(parser.get_arg1(), parser.get_debug_info())
                    elif command == InstructionType.C_FUNCTION:
                        cw.write_function(parser.get_arg1(), int(parser.get_arg2()), parser.get_debug_info())
                    elif command == InstructionType.C_CALL:
                        cw.write_call(parser.get_arg1(), int(parser.get_arg2()), parser.get_debug_info())
                    elif command == InstructionType.C_RETURN:
                        cw.write_return(parser.get_debug_info())
                    else:
                        raise RuntimeError(f"Unknown Instruction type {parser.current_instruction}")
    cw.close()
