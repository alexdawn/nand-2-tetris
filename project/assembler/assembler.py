from typing import Dict

import click

from parser import Parser, InstructionType
from code import dest, comp, jump

FIRST_SYMBOL = 16


def hardcoded_symbols() -> Dict[str, int]:
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


def first_pass(filename: str) -> Dict[str, int]:
    """This scan builds a symbol table"""
    instruction_number = 0
    symbol_table = hardcoded_symbols()
    with open(filename) as file:
        p = Parser(file)
        while p.has_more_lines():
            p.advance()
            if p.current_instruction[0:2] != '//':
                inst = p.instruction_type()
                if inst in (InstructionType.A_INSTRUCTION, InstructionType.C_INSTRUCTION):
                    instruction_number += 1
                elif inst == InstructionType.L_INSTRUCTION:
                    if is_symbol(p.symbol()):
                        symbol_table[p.symbol()] = instruction_number
    return symbol_table


class Writer:
    def __init__(self, options):
        self.file_handle = None
        self.options = options

    def __enter__(self):
        if self.options['output']:
            self.file_handle = open(self.options['output'], 'w')

        def partial(text):
            if self.options['output']:
                self.file_handle.write(text)
            else:
                print(text, end='')
        return partial

    def __exit__(self, exc_t, exc_v, trace):
        if self.options['output']:
            self.file_handle.close()


def second_pass(asm_file: str, symbol_table: Dict[str, int], options) -> None:
    next_ram_space = FIRST_SYMBOL

    with Writer(options) as out:
        with open(asm_file) as file:
            p = Parser(file)
            while p.has_more_lines():
                p.advance()
                if p.current_instruction[0:2] != '//':
                    inst = p.instruction_type()
                    if options['verbose']:
                        debug = f' // {p.current_instruction}'.replace("\n", "")
                    else:
                        debug = ''
                    if inst == InstructionType.A_INSTRUCTION:
                        if is_symbol(p.symbol()):
                            if p.symbol() in symbol_table.keys():
                                out(f'0{symbol_table[p.symbol()]:015b}{debug}\n')
                            else:  # new definition, append to RAM space
                                # logging.warning(f"unknown def {p.symbol()}")
                                out(f'0{next_ram_space:015b}{debug}\n')
                                symbol_table[p.symbol()] = next_ram_space
                                next_ram_space += 1
                        else:
                            out(f'0{int(p.symbol()):015b}{debug}\n')
                    elif inst == InstructionType.C_INSTRUCTION:
                        if p.jump() and (
                                (p.dest() and 'M' in p.dest()) or (p.comp() and 'M' in p.comp())):
                            raise RuntimeError("Cannot have both a jump and use the M register")
                        out(f'111{comp(p.comp())}{dest(p.dest())}{jump(p.jump())}{debug}\n')
    if options['symbol']:
        print(symbol_table)


@click.command()
@click.argument('filename')
@click.option("-o", "--output", type=str, help="write to file instead of std out")
@click.option("-v", "--verbose", is_flag=True, help="print the asm as comments")
@click.option("-s", "--symbol", is_flag=True, help="list the generated symbol table")
@click.option("-b", "--binary", is_flag=True, help="output in binary")
def main(filename: str, output: str, verbose: bool, symbol: bool, binary: bool) -> None:
    options = {"output": output, "verbose": verbose, "symbol": symbol, "binary": binary}
    table = first_pass(filename)
    second_pass(filename, table, options)


if __name__ == '__main__':
    main()
