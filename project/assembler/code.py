def dest(symbol: str) -> str:
    """This part can contain zero or more registers to copy the result to"""
    code = 0
    if symbol:
        if 'M' in symbol:
            code += 0b1
        if 'D' in symbol:
            code += 0b10
        if 'A' in symbol:
            code += 0b100
    return f'{code:03b}'


def comp(symbol: str) -> str:
    """big old lookup table to convert comparison part to code, symmetric ops appear twice"""
    lookup_table = {
        '0':   '0101010',
        '1':   '0111111',
        '-1':  '0111010',
        'D':   '0001100',
        'A':   '0110000',
        'M':   '1110000',
        '!D':  '0001111',
        '!A':  '0110001',
        '!M':  '1110001',
        '-D':  '0001111',
        '-A':  '0110011',
        '-M':  '1110011',
        'D+1': '0011111',
        '1+D': '0011111',
        'A+1': '0110111',
        '1+A': '0110111',
        'M+1': '1110111',
        '1+M': '1110111',
        'D-1': '0001110',
        'A-1': '0110010',
        'M-1': '1110010',
        'D+A': '0000010',
        'A+D': '0000010',
        'D+M': '1000010',
        'M+D': '1000010',
        'D-A': '0010011',
        'D-M': '1010011',
        'A-D': '0000111',
        'M-D': '1000111',
        'D&A': '0000000',
        'A&D': '0000000',
        'D&M': '1000000',
        'M&D': '1000000',
        'D|A': '0010101',
        'A|D': '0010101',
        'D|M': '1010101',
        'M|D': '1010101'
    }
    return lookup_table[symbol.replace(' ', '')]


def jump(symbol: str) -> str:
    """lookup for the jump prefix"""
    lookup_table = {
        None:   '000',
        'JGT':  '001',
        'JEQ':  '010',
        'JGE':  '011',
        'JLT':  '100',
        'JNE':  '101',
        'JLE':  '110',
        'JMP':  '111',
        'JUMP': '111'
    }
    return lookup_table[symbol]
