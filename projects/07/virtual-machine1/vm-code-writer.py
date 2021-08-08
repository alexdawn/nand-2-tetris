import sys
from parser import Parser, InstructionType
from code import *

if __name__ == '__main__':
    with open(sys.argv[1]) as file:
        cw = CodeWriter(file)
        parser = Parser(file)
        while(parser.has_more_lines()):
            parser.advance()
            command = parser.command_type()
            if command == InstructionType.C_ARITHMETIC:
                cw.write_arithmetic(parser.get_arg1())
            elif command in (InstructionType.C_PUSH, InstructionType.C_POP):
                cw.write_push_pop(command, parser.get_arg1(), parser.get_arg2())
    cw.close()
