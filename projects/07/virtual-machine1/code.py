from parser import InstructionType

class CodeWriter:
    def __init__(self) -> None:
        self.file = open('Prog.asm', 'w')
        self.filename = self.file.name.split("/")[-1].split(".")[0]
        self.jump_index = 0

    def close(self) -> None:
        self.write_true_subroutine()
        self.write_infinite_loop()
        self.file.close()

    def write_infinite_loop(self):
        """Catches the end of a program to stop it doing any harm"""
        self.file.write('''
            (INFINITE_LOOP)
            @INFINITE_LOOP
            0;JMP
        ''')

    def write_true_subroutine(self):
        """Routine which all comparison ops jump to, uses R13 to return to the right place"""
        self.file.write('''
            (WRITETRUE)
            D=-1 // True
            @R13 // Jump back to where the sub was called
            A=M
            0;JMP
        ''')

    def compare_op(self, jump: str, jump_index: str):
        """Code to run a comparison op JEQ|JGT|JLT"""
        self.file.write(f'''
            @SP
            A=M-1
            D=M-D
            @WRITETRUE
            D;{jump}
            D=0 // False
            (NEXT{jump_index})
            @SP
            A=M-1
            M=D // Write result of comparison op
        ''')

    def compare(self, jump: str):
        jump_label_name = f'{self.filename}.comp{self.jump_index}'
        self.store_return_location(self.jump_index, jump_label_name)
        self.write_pop('D')
        self.compare_op(jump, jump_label_name)
        self.jump_index += 1    

    def store_return_location(self, jump_index: str) -> None:
        """Store the location of where to return to after a compare operation"""
        self.file.write(f'''
                @NEXT{jump_index}
                D=A
                @R13
                M=D
            ''')

    def write_arithmetic(self, command: str) -> None:
        self.write_comment(command, '', '')
        if command == 'add':
            self.write_pop('D')
            self.file.write('''
                @SP
                A=M-1
                M=M+D
            ''')
        elif command == 'sub':
            self.write_pop('D')
            self.file.write('''
                @SP
                A=M-1
                M=M-D
            ''')
        elif command == 'neg':
            self.file.write('''
                @SP
                A=M-1
                M=-M
            ''')
        elif command == 'eq':
            compare('JEQ')
        elif command == 'gt':
            compare('JGT')
        elif command == 'lt':
            compare('GLT')
        elif command == 'and':
            self.write_pop('D')
            self.file.write('''
                @SP
                A=M-1
                M=M&D
            ''')
        elif command == 'or':
            self.write_pop('D')
            self.file.write('''
                @SP
                A=M-1
                M=M|D
            ''')
        elif command == 'not':
            self.file.write('''
                @SP
                A=M-1
                M=!M
            ''')

    def write_push_pop(self, command: InstructionType, segment: str, index: int) -> None:
        if command.C_PUSH:
            self.write_comment('push', segment, index)
            self.put_seg(segment, index)
            self.write_push('D')
        elif command.C_POP:
            self.write_comment('pop', segment, index)
            self.write_pop('D')
            self.get_seg(segment, index)

    def write_comment(self, command: str, segment: str, index: int) -> None:
        self.file.write(f'// {command} {segment} {index}')

    def put_seg(self, segment: str, index: int) -> None:
        if segment == 'local':
            self.put_pointer_offset('LCL', index)
        elif segment == 'argument':
            self.put_pointer_offset('ARG', index)
        elif segment == 'this':
            self.put_pointer_offset('THIS', index)
        elif segment == 'that':
            self.put_pointer_offset('THAT', index)
        elif segment == 'pointer':
            reg = 'THAT' if index else 'THIS'
            self.put_constant(reg)
        elif segment == 'temp':
            if index >= 0 and index < 8:
                self.put_constant(f'R{5+index}')
            else:
                raise RuntimeError(f"Invalid TEMP register temp {index}")
        elif segment == 'constant':
            self.put_constant(index)
        elif segment == 'static':
            self.put_constant(f'{self.filename}.{index}')
        else:
            raise RuntimeError(f"Invalid arg1 '{segment}'")

    def get_seg(self, segment: str, index: int) -> None:
        if segment == 'local':
            self.get_pointer_offset('LCL', index)
        elif segment == 'argument':
            self.get_pointer_offset('ARG', index)
        elif segment == 'this':
            self.get_pointer_offset('THIS', index)
        elif segment == 'that':
            self.get_pointer_offset('THAT', index)
        elif segment == 'pointer':
            reg = 'THAT' if index else 'THIS'
            self.get_constant(reg)
        elif segment == 'temp':
            if index >= 0 and index < 8:
                self.get_constant(f'R{5+index}')
            else:
                raise RuntimeError(f"Invalid TEMP register temp {index}")
        elif segment == 'constant':
            self.get_constant(index)
        elif segment == 'static':
            self.get_constant(f'{self.file.name.split("/")[-1].split(".")[0]}.{index}')
        else:
            raise RuntimeError(f"Invalid arg1 '{segment}'")

    def put_constant(self, index: str) -> None:
        self.file.write(f'''
            @{index}
            D=A
        ''')

    def get_constant(self, index: str) -> None:
        self.file.write(f'''
            @{index} // noop
        ''')

    def put_pointer_offset(self, segment: str, index: int) -> None:
        """complex process using R13 and R14 for storage"""
        self.file.write(f''''
            @R13 // value that has been popped off of stack
            M=D
            @{reg}
            D=M
            @{index}
            D=D+A
            @R14  // pointer to dest
            M=D
            @R13
            D=M
            @R14
            A=M
            M=D
        ''')

    def get_pointer_offset(self, segment: str, index: int) -> None:
        self.file.write(f'''
            @{reg}
            D=M
            @{index}
            D=D+A
            A=D
            D=M
        ''')

    def write_push(self, reg: str) -> None:
        self.file.write(f'''
            @SP
            A=M
            M={reg}
            @SP
            M=M+1
        ''')

    def write_pop(self, reg: str) -> None:
        self.file.write(f'''
            @SP
            M=M-1
            A=M
            {reg}=M
        ''')
