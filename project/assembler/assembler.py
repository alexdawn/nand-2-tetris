from typing import Dict, Any
import logging

import click

from parser import Parser, InstructionType
from code import dest, comp, jump

FIRST_SYMBOL = 16
COMMENT = '//'


def hardcoded_symbols() -> Dict[str, int]:
    """Defined symbols for special addresses"""
    return {
        **{
            f'R{x}': x for x in range(16)  # R0-R15 for the first 16 addresses in RAM
        }, 
        **{
            'SP': 0,  # stack pointer
            'LCL': 1,  # pointer to first local variable
            'ARG': 2,  # pointer to first argument
            'THIS': 3,  # pointer to the current object
            'THAT': 4,  # pointer to calling object
            'SCREEN': 16384,  # first address
            'KBD': 24576,  # keyboard address
        }
    }


def is_symbol(text: str) -> bool:
    """symbols don't start with digit"""
    return not text[0].isdigit()


def first_pass(filename: str) -> Dict[str, int]:
    """This scan builds a symbol table"""
    instruction_number = 0
    symbol_table = hardcoded_symbols()
    with open(filename) as file:
        p = Parser(file)
        while p.has_more_lines():
            p.advance()
            if p.current_instruction[0:2] != COMMENT:  # ignore comments
                inst = p.instruction_type()
                if inst in (InstructionType.A_INSTRUCTION, InstructionType.C_INSTRUCTION):
                    instruction_number += 1
                elif inst == InstructionType.L_INSTRUCTION:
                    if is_symbol(p.symbol()):
                        # TODO error if symbol is already in the table
                        symbol_table[p.symbol()] = instruction_number
    return symbol_table


class Writer:
    """manage file streams and output with the with pattern"""
    def __init__(self, options: Dict[str, Any]):
        self.file_handle = None
        self.options = options

    def __enter__(self):
        if self.options['output']:
            self.file_handle = open(self.options['output'], 'w')

        def partial(text: str):
            if self.options['output']:
                self.file_handle.write(text)
            else:
                print(text, end='')
        return partial

    def __exit__(self, exc_t, exc_v, trace):
        if self.options['output']:
            self.file_handle.close()


# TODO allow macro instructions
def second_pass(asm_file: str, symbol_table: Dict[str, int], options: Dict[str, Any]) -> None:
    """this pass converts all instructions to machine code"""
    next_ram_space = FIRST_SYMBOL

    with Writer(options) as out:
        with open(asm_file) as file:
            p = Parser(file)
            while p.has_more_lines():
                p.advance()
                if p.current_instruction[0:2] != COMMENT:
                    inst = p.instruction_type()
                    debug = (f' {COMMENT} {p.current_instruction}'.replace("\n", "")
                             if options['verbose'] else '')
                    if inst == InstructionType.A_INSTRUCTION:
                        if is_symbol(p.symbol()):
                            # symbols can either be symbols to a label in ROM or a symbol in RAM
                            if p.symbol() in symbol_table.keys():
                                out(f'0{symbol_table[p.symbol()]:015b}{debug}\n')
                            else:  # new definition, append to RAM space
                                logging.warning(f"unknown def {p.symbol()}")
                                out(f'0{next_ram_space:015b}{debug}\n')
                                symbol_table[p.symbol()] = next_ram_space
                                next_ram_space += 1
                                # TODO warn if ram space is low
                        else:
                            # a literal constant
                            out(f'0{int(p.symbol()):015b}{debug}\n')
                    elif inst == InstructionType.C_INSTRUCTION:
                        # build instruction from it's component parts
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
    table = first_pass(filename)  # build labels table
    second_pass(filename, table, options)  # write instructions


if __name__ == '__main__':
    main()
