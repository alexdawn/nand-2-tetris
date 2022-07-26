import sys
from typing import Dict
from parser import Parser, InstructionType
from code import dest, comp, jump


def hardcoded_symbols():
    return {
        **{
            f'R{x}': x for x in range(16)
        }, 
        **{
            'SP': 0,
            'LCL': 1,
            'ARG': 2,
            'THIS': 3,
            'THAT': 4,
            'SCREEN': 16384,
            'KBD': 24576,
        }
    }


def is_symbol(text: str) -> bool:
    return not text[0].isdigit()


def first_pass() -> Dict:
    instruction_number = 0
    symbol_table = hardcoded_symbols()
    with open(sys.argv[1]) as file:
            p = Parser(file)
            while p.has_more_lines():
                p.advance()
                if p.current_instruction[0:2] != '//':
                    inst = p.instruction_type()
                    if inst == InstructionType.A_INSTRUCTION:
                        instruction_number += 1
                    elif inst == InstructionType.C_INSTRUCTION:
                        instruction_number += 1
                    elif inst == InstructionType.L_INSTRUCTION:
                        if is_symbol(p.symbol()):
                            symbol_table[p.symbol()] = instruction_number
    return symbol_table


def second_pass(symbol_table: Dict) -> None:
    asm_file = sys.argv[1]
    bin_file = asm_file.replace('.asm', '.hack')
    next_ram_space =16

    with open(bin_file, 'w') as out:
        with open(asm_file) as file:
            p = Parser(file)
            while p.has_more_lines():
                p.advance()
                if p.current_instruction[0:2] != '//':
                    inst = p.instruction_type()
                    if inst == InstructionType.A_INSTRUCTION:
                        if is_symbol(p.symbol()):
                            if p.symbol() in symbol_table.keys():
                                out.write(f'0{symbol_table[p.symbol()]:015b}\n')
                            else:  # new definition, append to RAM space
                                out.write(f'0{next_ram_space:015b}\n')
                                symbol_table[p.symbol()] = next_ram_space
                                next_ram_space += 1
                        else:
                            out.write(f'0{int(p.symbol()):015b}\n')
                    elif inst == InstructionType.C_INSTRUCTION:
                        out.write(f'111{comp(p.comp())}{dest(p.dest())}{jump(p.jump())}\n')
    print(symbol_table)


if __name__ == '__main__':
    table = first_pass()
    second_pass(table)
