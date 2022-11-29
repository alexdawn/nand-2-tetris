from enum import Enum
from io import FileIO, SEEK_CUR


class TokenType(Enum):
    KEYWORD = 1
    SYMBOL = 2
    IDENTIFIER = 3
    INTEGER_CONSTANT = 4
    STRING_CONSTANT = 5


class Keyword(Enum):
    CLASS = 1
    METHOD = 2
    FUNCTION = 3
    CONSTRUCTOR = 4
    INT = 5
    BOOLEAN = 6
    CHAR = 7
    VOID = 8
    VAR = 9
    STATIC = 10
    FIELD = 11
    LET = 12
    DO = 13
    IF = 14
    ELSE = 15
    WHILE = 16
    RETURN = 17
    TRUE = 18
    FALSE = 19
    NULL = 20
    THIS = 21


symbols = set(*['{}()[].,;+-*/&|<>=~'])
keywords = set([
    'class', 'constructor', 'function', 'method', 'field', 'static', 'var', 'int', 'char',
    'boolean', 'void', 'true', 'false', 'null', 'this', 'let', 'do', 'if', 'else', 'while', 'return'
])
whitespace = set([' ', '\t', '\n'])
alpha_numeric = set([*'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'])
assert len(alpha_numeric) == 2 * 26
digits = set([*'0123456789'])
valid_identifiers = alpha_numeric.union(digits)


class JackTokenizer:
    current_token: str = None
    input_file: FileIO = None
    char: str = ''

    def __init__(self, input_file: FileIO):
        self.input_file = input_file

    def has_more_tokens(self) -> bool:
        char = self.input_file.read(1)
        self.input_file.seek(self.input_file.tell() - 1)
        return char != ''

    def advance(self) -> None:
        self.char = ' '
        while self.char in whitespace:
            self.char = self.input_file.read(1)
        self.current_token = self.char
        while self.char not in whitespace and self.token_type() and self.char != '':
            self.char = self.input_file.read(1)
            self.current_token += self.char
        if self.char != '':
            self.input_file.seek(self.input_file.tell() - 1)
            self.current_token = self.current_token[0:-1]
        print(self.token_type(), self.current_token)

    def token_type(self) -> TokenType:
        if len(self.current_token) >= 1:
            if self.current_token[0] in symbols:
                return TokenType.SYMBOL
            elif self.current_token.lower() in keywords:
                return TokenType.KEYWORD
            elif self.current_token[0] == '"' and self.current_token[-1] == '"':
                return TokenType.STRING_CONSTANT
            elif self.current_token[0] not in digits and all(char in valid_identifiers for char in self.current_token):
                return TokenType.IDENTIFIER
            elif all(char in digits for char in self.current_token):
                return TokenType.INTEGER_CONSTANT
        return None

    def keyword(self) -> Keyword:
        assert self.token_type() == TokenType.KEYWORD
        return Keyword[self.current_token.lower()]

    def symbol(self) -> str:
        assert self.token_type() == TokenType.SYMBOL
        return self.current_token

    def identifier(self) -> str:
        assert self.token_type() == TokenType.IDENTIFIER
        return self.current_token

    def int_value(self) -> int:
        assert self.token_type() == TokenType.INTEGER_CONSTANT
        value = int(self.current_token)
        assert value <= 32767 and value > 0, "integer out of range"
        return value

    def string_value(self) -> str:
        assert self.token_type() == TokenType.STRING_CONSTANT
        return self.current_token[1:-1]


if __name__ == '__main__':
    t = JackTokenizer(open('test.txt', 'r'))
    while t.has_more_tokens():
        t.advance()
