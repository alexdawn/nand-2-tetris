import sys
from parser import Parser, InstructionType
from code import dest, comp, jump


def main():
    with open(sys.argv[1]) as file:
        p = Parser(file)
        while p.has_more_lines():
            p.advance()
            if p.current_instruction[0:2] != '//':
                inst = p.instruction_type()
                if inst == InstructionType.A_INSTRUCTION:
                    print(f'0{int(p.symbol()):015b}')
                elif inst == InstructionType.C_INSTRUCTION:
                    print(f'111{comp(p.comp())}{dest(p.dest())}{jump(p.jump())}')
                elif inst == InstructionType.L_INSTRUCTION:
                    pass  # pass symbols defs for now


if __name__ == '__main__':
    main()
