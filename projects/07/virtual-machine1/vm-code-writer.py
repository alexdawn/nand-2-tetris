import sys
from parser import Parser, InstructionType
from code import *

if __name__ == '__main__':
    arg1 = sys.argv[1]
    if os.path.isdir(arg1):
        raise NotImplementedError("Can't read directories yet")
    with open(arg1) as file:
        cw = CodeWriter(file)
        parser = Parser(file)
        while(parser.has_more_lines()):
            parser.advance()
            command = parser.command_type()
            if command == InstructionType.C_ARITHMETIC:
                cw.write_arithmetic(parser.get_arg1())
            elif command in (InstructionType.C_PUSH, InstructionType.C_POP):
                cw.write_push_pop(command, parser.get_arg1(), parser.get_arg2())
            elif command == InstructionType.C_LABEL:
                cw.write_label(parser.get_arg1())
            elif command == InstructionType.C_GOTO:
                cw.write_goto(parser.get_arg1())
            elif command == InstructionType.C_IF:
                cw.write_if(parser.get_arg1())
            elif command == InstructionType.C_FUNCTION:
                cw.write_function(parser.get_arg1(), parser.get_arg2())
            elif command == InstructionType.C_CALL:
                cw.write_call(parser.get_arg1(), parser.get_arg2())
            elif command == InstructionType.C_RETURN:
                cw.write_return(parser.get_arg1(), parser.get_arg2())
            else:
                raise RuntimeError(f"Unknown Instruction type {parser.current_instruction}")
    cw.close()
