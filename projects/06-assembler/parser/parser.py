from enum import Enum
from io import FileIO

class InstructionType(Enum):
    A_INSTRUCTION = 1
    C_INSTRUCTION = 2
    L_INSTRUCTION = 3

class Parser:
    def __init__(self, file_stream: FileIO):
        self.current_instruction = None
        self.file_stream = file_stream
        self.next_instruction = self.file_stream.readline()

    def has_more_lines(self) -> bool:
        return self.next_instruction != ''

    def advance(self) -> None:
        self.current_instruction = self.next_instruction
        if '//' in self.current_instruction:
            self.current_instruction = self.current_instruction.split('//')[0]
        self.next_instruction = self.file_stream.readline()

    def instruction_type(self) -> InstructionType:
        if '@' in self.current_instruction:
            return InstructionType.A_INSTRUCTION
        elif '=' in self.current_instruction or ';' in self.current_instruction:
            return InstructionType.C_INSTRUCTION
        elif '(' in self.current_instruction:
            return InstructionType.L_INSTRUCTION

    def symbol(self) -> str:
        return self.current_instruction.replace('@', '').replace('(', '').replace(')', '').strip()

    def dest(self) -> str:
        if '=' in self.current_instruction:
            return self.current_instruction.split('=')[0].strip()

    def comp(self) -> str:
        seg = self.current_instruction
        if '=' in seg:
            seg = seg.split('=')[1]
        if ';' in seg:
            seg = seg.split(';')[0]
        return seg.strip()

    def jump(self) -> str:
        if ';' in self.current_instruction:
            return self.current_instruction.split(';')[1].strip()
