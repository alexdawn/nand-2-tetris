import os
from parser import InstructionType
from io import FileIO

class CodeWriter:
    def __init__(self, file: FileIO) -> None:
        self.filename = os.path.basename(file.name).replace('.vm', '')
        out_name ='prog' if os.path.isdir(file.name) else self.filename
        self.file = open(f'{out_name}.asm', 'w')
        self.bootstrap()
        self.filename = self.file.name.split("/")[-1].split(".")[0]
        self.jump_index = 0

    def set_file_name(self, filename: str) -> None:
        self.filename = filename

    def write_to_file(self, text: str):
        """Handles whitespace and blank lines"""
        self.file.write(
            '\n'.join(t.strip() 
            for t in text.split('\n') 
            if t.strip() != '')
        )
        self.file.write('\n')


    def bootstrap(self) -> None:
        self.write_to_file("""
            // Bootstrap
            @256
            D=A
            @SP
            M=D
            // TODO call Sys.init
        """)


    def close(self) -> None:
        """Suffix the asm code with an infinite loop trap"""
        self.write_infinite_loop()
        self.write_true_subroutine()
        self.file.close()


    def write_infinite_loop(self):
        """Catches the end of a program to stop it doing any harm"""
        self.write_to_file('''
            (INFINITE_LOOP)
            @INFINITE_LOOP
            0;JMP
        ''')


    def write_true_subroutine(self):
        """Routine which all comparison ops jump to, uses R13 to return to the right place"""
        self.write_to_file('''
            (WRITETRUE)
            D=-1 // True
            @R13 // Jump back to where the sub was called
            A=M
            0;JMP
        ''')


    def compare_op(self, jump: str, jump_index: str):
        """Code to run a comparison op JEQ|JGT|JLT"""
        self.write_to_file(f'''
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
        self.store_return_location(jump_label_name)
        self.write_pop('D')
        self.compare_op(jump, jump_label_name)
        self.jump_index += 1    


    def store_return_location(self, jump_index: str) -> None:
        """Store the location of where to return to after a compare operation"""
        self.write_to_file(f'''
                @NEXT{jump_index}
                D=A
                @R13
                M=D
            ''')


    def write_arithmetic(self, command: str) -> None:
        self.write_comment(command, '', '')
        if command == 'add':
            self.write_pop('D')
            self.write_to_file('''
                @SP
                A=M-1
                M=M+D
            ''')
        elif command == 'sub':
            self.write_pop('D')
            self.write_to_file('''
                @SP
                A=M-1
                M=M-D
            ''')
        elif command == 'neg':
            self.write_to_file('''
                @SP
                A=M-1
                M=-M
            ''')
        elif command == 'eq':
            self.compare('JEQ')
        elif command == 'gt':
            self.compare('JGT')
        elif command == 'lt':
            self.compare('JLT')
        elif command == 'and':
            self.write_pop('D')
            self.write_to_file('''
                @SP
                A=M-1
                M=M&D
            ''')
        elif command == 'or':
            self.write_pop('D')
            self.write_to_file('''
                @SP
                A=M-1
                M=M|D
            ''')
        elif command == 'not':
            self.write_to_file('''
                @SP
                A=M-1
                M=!M
            ''')


    def write_push_pop(self, command: InstructionType, segment: str, index: int) -> None:
        if command == command.C_PUSH:
            self.write_comment('push', segment, index)
            self.get_seg(segment, index)
            self.write_push('D')
        elif command == command.C_POP:
            self.write_comment('pop', segment, index)
            self.write_pop('D')
            self.put_seg(segment, index)
        else:
            raise RuntimeError(f"Invalid Instruction {command}")


    def write_comment(self, command: str, segment: str, index: int) -> None:
        self.write_to_file(f'// {command} {segment} {index}')


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
            reg = 'THAT' if int(index) == 1 else 'THIS'
            self.put_constant(reg)
        elif segment == 'temp':
            if int(index) >= 0 and int(index) < 8:
                self.put_constant(f'R{5+int(index)}')
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
            reg = 'THAT' if int(index) == 1 else 'THIS'
            self.get_direct(reg)
        elif segment == 'temp':
            if int(index) >= 0 and int(index) < 8:
                self.get_direct(f'R{5+int(index)}')
            else:
                raise RuntimeError(f"Invalid TEMP register temp {index}")
        elif segment == 'constant':
            self.get_constant(index)
        elif segment == 'static':
            self.get_direct(f'{self.file.name.split("/")[-1].split(".")[0]}.{index}')
        else:
            raise RuntimeError(f"Invalid arg1 '{segment}'")


    def put_constant(self, index: str) -> None:
        """Used for both constant and temp segments, gives a way for the VM to directly write to specific hardware memory"""
        self.write_to_file(f'''
            @{index}
            M=D
        ''')


    def get_direct(self, index: str) -> None:
        """differs from get constant as it reads the contents of RAM[A]"""
        self.write_to_file(f'''
            @{index}
            D=M
        ''')


    def get_constant(self, index: str) -> None:
        """loads the constant value into D"""
        self.write_to_file(f'''
            @{index}
            D=A
        ''')


    def put_pointer_offset(self, segment: str, index: int) -> None:
        """complex process using R13 and R14 for storage"""
        self.write_to_file(f'''
            @R13 // value that has been popped off of stack
            M=D
            @{segment}
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
        self.write_to_file(f'''
            @{segment}
            D=M
            @{index}
            D=D+A
            A=D
            D=M
        ''')


    def write_push(self, reg: str) -> None:
        self.write_to_file(f'''
            @SP
            A=M
            M={reg}
            @SP
            M=M+1
        ''')


    def write_pop(self, reg: str) -> None:
        self.write_to_file(f'''
            @SP
            M=M-1
            A=M
            {reg}=M
        ''')


    def write_label(self, label: str) -> None:
        """label is [A-Za-z_.:][A-Za-z0-9_.:]*"""
        self.write_comment('label', label, '')
        self.write_to_file(f'''
            ({label})
        ''')

    def write_goto(self, label: str) -> None:
        self.write_comment('goto', label, '')
        self.write_to_file(f'''
            @{label}
            0;JMP
        ''')

    def write_if(self, label: str) -> None:
        self.write_comment('if', label, '')
        self.write_pop('D')
        self.write_to_file(f'''
            @{label}
            D;JNE
        ''')

    def write_function(self, name: str, number_variables: int) -> None:
        pass

    def write_call(self, name: str, number_arguments: int) -> None:
        pass

    def write_return(self) -> None:
        pass
