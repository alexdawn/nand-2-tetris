import os
from parser import InstructionType
from typing import Dict, Any

"""
Code write turns VM commands into HACK

See readme for more details

R13 - used during logical comparison to store the return address for PC
R13 - also used temporary store for indirect pops (including function returns)
R14 - used to store the destination address of an indirect pop
R15 - stores the a copy of LCL used to point to the saved frame of the caller
"""


def get_dir_name(name: str) -> str:
    """Get the directory name even handles trailing forward slashes"""
    if name.split('/')[-1] != '':
        return name.split('/')[-1]
    else:
        return name.split('/')[-2]


class CodeWriter:
    def __init__(self, filename: str, options: Dict[str, Any]) -> None:
        self.set_file_name(filename)
        out_name = get_dir_name(filename) if os.path.isdir(filename) else self.filename
        asm_name = f'{out_name}.asm'
        print(f"writing to file {asm_name}")
        self.file = open(asm_name, 'w')
        self.filename = self.file.name.split("/")[-1].split(".")[0]
        self.jump_index = 0
        self.call_index = 0
        self.parent_function_name = ''
        self.line_number = 0
        self.is_listing_file = options.get('is_listing_file', False)

        if any(o for o in options.values()):
            self._bootstrap(options)

    def set_file_name(self, filename: str) -> None:
        """Extract the filename from path and extension"""
        self.filename = filename.split("/")[-1].replace('.vm', '')

    def _write_to_file(self, text: str):
        """Handles whitespace and blank lines"""
        lines = [
            t.strip() for t in text.split('\n')
            if t.strip() != ''
        ]
        for l in lines:
            if l.split('//')[0].strip() != '' and not ('(' in l.split('//')[0] and ')' in l.split('//')[0]):
                line_prefix = f'{self.line_number}: '
                self.line_number += 1
            else:
                line_prefix = ''
            if self.is_listing_file:  # have option to print line numbers
                self.file.write(f'{line_prefix}{l}\n')
            else:
                self.file.write(f'{l}\n')

    def _bootstrap(self, options: Dict[str, Any]) -> None:
        """Initialises the stack, sets function pointers to illegal values"""
        if options['bootstrap']:
            self._write_to_file("""
                // Bootstrap
                @256
                D=A
                @SP
                M=D
            """)
        if options['init_illegal']:
            self._write_to_file("""
                @101 // set the other pointers to illegal negative values
                D=-A
                @LCL
                M=D
                @102
                D=-A
                @ARG
                M=D
                @103
                D=-A
                @THIS
                M=D
                @104
                D=-A
                @THAT
                M=D
            """)
        if options['system_call']:
            self.write_call("Sys.init", 0, 'Inserted bootstrap code')

    def close(self) -> None:
        """Suffix the asm code with an infinite loop trap and compare routine"""
        self._write_infinite_loop()
        self._write_true_subroutine()
        self.file.close()

    def _write_infinite_loop(self):
        """Catches the end of a program to stop it doing any harm"""
        self._write_to_file('''
            (INFINITE_LOOP)
            @INFINITE_LOOP
            0;JMP
        ''')

    def _write_true_subroutine(self):
        """Routine which all comparison ops jump to, uses R13 to return
        to the right place"""
        self._write_to_file('''
            (WRITETRUE)
            D=-1 // True
            @R13 // Jump back to where the sub was called
            A=M
            0;JMP
        ''')

    def _compare_op(self, jump: str, jump_label: str):
        """Code to run a comparison op JEQ|JGT|JLT"""
        # Idea: add a routine to the end for each mode, save on text mem
        assert jump in ('JEQ', 'JGT', 'JLT'), f"invalid jump command {jump}"
        self._write_to_file(f'''
            @SP
            A=M-1
            D=M-D // take the difference of the two operands
            @WRITETRUE
            D;{jump}
            D=0 // write False if no jump
            ({jump_label})
            @SP
            A=M-1
            M=D // Write result of comparison op to stack
        ''')

    def compare(self, jump: str):
        """Compare has to make use of conditional jumps
            saves text memory by sharing the same write true routine
        """
        jump_label_name = f'{self.filename}.comp{self.jump_index}'
        self.store_return_location(jump_label_name)
        self.write_pop('D')
        self._compare_op(jump, jump_label_name)
        self.jump_index += 1    

    def store_return_location(self, jump_label: str) -> None:
        """Store the location of where to return to after
        a compare operation"""
        self._write_to_file(f'''
                @{jump_label}
                D=A
                @R13
                M=D
        ''')

    def write_arithmetic(self, command: str, debug_text: str) -> None:
        """pushes 1 or 2 operands from stack depending on the operator
            effectively "peeks" the bottom operand and overwrites the result of
            the operations to avoid an extra pop and push
        """
        self.write_comment(command, '', '', debug_text)
        if command == 'add':
            self.write_pop('D')
            self._write_to_file('''
                @SP
                A=M-1
                M=M+D
            ''')
        elif command == 'sub':
            self.write_pop('D')
            self._write_to_file('''
                @SP
                A=M-1
                M=M-D
            ''')
        elif command == 'neg':
            self._write_to_file('''
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
            self._write_to_file('''
                @SP
                A=M-1
                M=M&D
            ''')
        elif command == 'or':
            self.write_pop('D')
            self._write_to_file('''
                @SP
                A=M-1
                M=M|D
            ''')
        elif command == 'not':
            self._write_to_file('''
                @SP
                A=M-1
                M=!M
            ''')

    def write_push_pop(
            self, command: InstructionType, segment: str, index: int,
            debug_text: str) -> None:
        if command == command.C_PUSH:
            self.write_comment('push', segment, index, debug_text)
            self.get_seg(segment, index)
            self.write_push('D')
        elif command == command.C_POP:
            self.write_comment('pop', segment, index, debug_text)
            self.write_pop('D')
            self.put_seg(segment, index)
        else:
            raise RuntimeError(f"Invalid Instruction {command}")

    def write_comment(
            self, command: str, segment: str, index: int, debug_text: str)\
            -> None:
        self._write_to_file(f'// {debug_text}    {command} {segment} {index}')

    def put_seg(self, segment: str, index: int) -> None:
        """put sets a vregister to D, exact process on the segment mode"""
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
        """get sets D to value of a vregister depending on the segment mode"""
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
            self.get_direct(f'{self.filename}.{index}')
        else:
            raise RuntimeError(f"Invalid arg1 '{segment}'")

    def put_constant(self, index: str) -> None:
        """Used for both constant and temp segments RAM[i]=D,
            gives a way for the VM to directly write to
            specific hardware memory"""
        self._write_to_file(f'''
            @{index}
            M=D
        ''')

    def get_direct(self, index: str) -> None:
        """differs from get constant as it reads the contents of D=RAM[i]"""
        self._write_to_file(f'''
            @{index}
            D=M
        ''')

    def get_constant(self, index: str) -> None:
        """loads the constant value into D=const"""
        self._write_to_file(f'''
            @{index}
            D=A
        ''')

    def put_pointer_offset(self, segment: str, index: int) -> None:
        """put pointer offset RAM[seg + i] = D
            complex process using R13 and R14 for storage"""
        self._write_to_file(f'''
            @R13 // temp store R13 = D
            M=D
            @{segment}
            D=M
            @{index}
            D=D+A
            @R14  // pointer to dest R14 = seg + i
            M=D
            @R13
            D=M
            @R14
            A=M
            M=D
        ''')

    def get_pointer_offset(self, segment: str, index: int) -> None:
        """Get pointer offset D=RAM[seg + i]"""
        self._write_to_file(f'''
            @{segment}
            D=M
            @{index}
            D=D+A
            A=D
            D=M
        ''')

    def write_push(self, reg: str) -> None:
        """Push stack from register RAM[SP++]=r
            using reg A or M is no good as the stack push uses them
        """
        assert reg in ('D'), f"reg {reg} is not a valid register D"
        self._write_to_file(f'''
            @SP
            A=M
            M={reg}
            @SP
            M=M+1
        ''')

    def write_pop(self, reg: str) -> None:
        """Pop stack to register r=RAM[--SP]
            using reg A or M is no good as the stack pop uses them
        """
        assert reg in ('D'), f"reg {reg} is not a valid register D"
        self._write_to_file(f'''
            @SP
            M=M-1
            A=M
            {reg}=M
        ''')

    def write_label(self, label: str, debug_text: str) -> None:
        """Make a label, a valid label is [A-Za-z_.:][A-Za-z0-9_.:]*"""
        self.write_comment('label', label, '', debug_text)
        self._write_to_file(f'''
            ({self.parent_function_name}${label})
        ''')

    def write_goto(self, label: str, debug_text: str) -> None:
        """Jump to label"""
        self.write_comment('if-goto', label, '', debug_text)
        self._write_to_file(f'''
            @{self.parent_function_name}${label}
            0;JMP
        ''')

    def write_if(self, label: str, debug_text: str) -> None:
        """Pop the stack to D and check if it truthy"""
        self.write_comment('if', label, '', debug_text)
        self.write_pop('D')
        self._write_to_file(f'''
            @{self.parent_function_name}${label}
            D;JNE
        ''')

    def write_function(self, name: str, number_variables: int, debug_text: str) \
            -> None:
        """Initialised function with n local values"""
        self.write_comment('function', name, number_variables, debug_text)
        function_name = f'{name}'
        self._write_to_file(f'''
            ({function_name})
        ''')
        if number_variables > 0:
            self._write_to_file('@0\nD=A')
            for n in range(number_variables):
                self.write_push('D')  # write n times '0' values to stack
        self.parent_function_name = function_name
        self.call_index = 0

    def write_call(self, name: str, number_arguments: int, debug_text: str) \
            -> None:
        """
            Pushes information of the caller to the stack:
            -6 <args n> <-- ARG (first arg)
            -5 push return address
            -4 push LCL
            -3 push ARG
            -2 push THIS
            -1 push THAT
             0 <-- frame, LCL, SP head
            ARG = SP - (5 + nArgs)
            LCL = SP
        """
        function_label = f'{name}'
        self.write_comment(
            'call', function_label, number_arguments, debug_text)
        return_label = f'{self.parent_function_name}$ret.{self.call_index}'
        self.call_index += 1
        self._write_to_file(f'''
            @{return_label}  // push return address
            D=A
        ''')
        self.write_push('D')

        self._write_to_file('''
            @LCL  // push LCL
            D=M
        ''')
        self.write_push('D')

        self._write_to_file('''
            @ARG  // push ARG
            D=M
        ''')
        self.write_push('D')

        self._write_to_file('''
            @THIS  // push THIS
            D=M
        ''')
        self.write_push('D')

        self._write_to_file('''
            @THAT  // push THAT
            D=M
        ''')
        self.write_push('D')

        self._write_to_file(f'''
            @SP  // ARG = SP - (5 + nArgs)
            D=M
            @{5 + number_arguments}
            D=D-A
            @ARG
            M=D
        ''')
        self._write_to_file(f'''
            @SP  // LCL = SP
            D=M
            @LCL
            M=D
            @{function_label} // goto {function_label}
            0;JMP
            ({return_label})
        ''')

    def write_return(self, debug_text: str) -> None:
        """
            frame = LCL
            retAddr = *(frame-5) < store in R14
            *arg = pop() < overwrite the 1st arg, why retAddr is saved
            SP = ARG + 1
            THAT = *(frame-1)
            THIS = *(frame-2)
            ARG = *(frame-3)
            LCL = *(frame-4)
            goto retAddr
        """
        self.write_comment(
            f'return from {self.parent_function_name}', '', '', debug_text)
        self._write_to_file('''
            @LCL  // frame (stored in R15) = LCL
            D=M
            @R15
            M=D
        ''')
        self._write_to_file('''
            @5
            A=D-A  // *(frame-5)
            D=M
            @R14
            M=D
        ''')
        self.write_pop('D')
        self._write_to_file('''
            @ARG  // *arg = pop()
            A=M
            M=D
        ''')
        self._write_to_file('''
            @ARG  // SP = ARG + 1
            D=M+1
            @SP
            M=D
        ''')
        self._write_to_file('''
            @R15  // THAT = *(frame-1)
            M=M-1
            A=M
            D=M
            @THAT
            M=D
        ''')
        self._write_to_file('''
            @R15  // THIS = *(frame-2)
            M=M-1
            A=M
            D=M
            @THIS
            M=D
        ''')
        self._write_to_file('''
            @R15  // ARG = *(frame-3)
            M=M-1
            A=M
            D=M
            @ARG
            M=D
        ''')
        self._write_to_file('''
            @R15  // LCL = *(frame-4)
            M=M-1
            A=M
            D=M
            @LCL
            M=D
        ''')
        self._write_to_file('''
            @R14  // get retAddr from R14
            A=M
            0;JMP
        ''')
