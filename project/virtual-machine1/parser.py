from enum import Enum
from io import FileIO


class InstructionType(Enum):
    C_ARITHMETIC = 1
    C_PUSH = 2
    C_POP = 3
    C_LABEL = 4
    C_GOTO = 5
    C_IF = 6
    C_FUNCTION = 7
    C_RETURN = 8
    C_CALL = 9


class Parser:
    def __init__(self, file_stream: FileIO):
        self.current_instruction = None
        self.file_stream = file_stream
        self.next_instruction = self.file_stream.readline()
        self.line_number = 0
        self.command = None
        self.arg1 = None
        self.arg2 = None

    def get_debug_info(self) -> str:
        return f'{self.file_stream.name.split("/")[-1]}:{self.line_number}'

    def has_more_lines(self) -> bool:
        return self.next_instruction != ''

    def advance(self) -> None:
        self.current_instruction = self.next_instruction
        self.line_number += 1
        if '//' in self.current_instruction:
            self.current_instruction = self.current_instruction.split('//')[0]
        self.next_instruction = self.file_stream.readline()
        if self.current_instruction not in ('', '\n'):
            self.command, _, second = self.current_instruction.strip().partition(' ')
            self.arg1, _, self.arg2 = second.partition(' ')
        else:
            self.advance()

    def command_type(self) -> InstructionType:
        if self.command in ('add', 'sub', 'neg', 'eq', 'gt', 'lt', 'and', 'or', 'not'):
            return InstructionType.C_ARITHMETIC
        elif 'push' in self.command:
            return InstructionType.C_PUSH
        elif 'pop' in self.command:
            return InstructionType.C_POP
        elif 'label' in self.command:
            return InstructionType.C_LABEL
        elif 'if-goto' in self.command:
            return InstructionType.C_IF
        elif 'goto' in self.command:
            return InstructionType.C_GOTO
        elif 'function' in self.command:
            return InstructionType.C_FUNCTION
        elif 'return' in self.command:
            return InstructionType.C_RETURN
        elif 'call' in self.command:
            return InstructionType.C_CALL
        else:
            raise RuntimeError(f"Unknown command '{self.command}'")

    def get_arg1(self) -> str:
        if self.arg1:
            return self.arg1
        return self.command

    def get_arg2(self) -> str:
        return self.arg2
