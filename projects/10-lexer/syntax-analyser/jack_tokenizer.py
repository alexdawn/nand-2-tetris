import re
from io import FileIO


class JackTokenizer:
    def __init__(self, input_file: FileIO) -> None:
        self.file = input_file
        self.token = None
        self.next_token = None
        self.regex_integer = re.compile('^[0-9]+$')
        self.regex_identifier = re.compile('^[A-Za-z_][A-Za-z0-9_]*$')
        self.next_token = self._get_next_token()

    def _peek_char(self) -> str:
        """get the next char in file, then rewind"""
        char = self.file.read(1)
        self.file.seek(self.file.tell() - 1)
        return char

    def _seek_to_end_of_comment(self, comment_type) -> None:
        """read forward until the comment finishes"""
        next_char = None
        if comment_type == '//':
            while next_char != '\n':
                next_char = self.file.read(1)
        elif comment_type == '/*':
            while next_char != '*' or self._peek_char() != '/':
                next_char = self.file.read(1)
            _ = self.file.read(1)
            assert _ == '\n', f"impossible situation '{_}'"

    def _get_next_token(self) -> str:
        """reads one char at a time until there is a valid token"""
        # import pdb
        # pdb.set_trace()
        buf = ''
        while self._token_type(buf) is None:
            next_char = self.file.read(1)
            if next_char == '':  # indicates EOF
                break
            if next_char == '/' and self._peek_char() in '/*':
                self._seek_to_end_of_comment('/' + self._peek_char())
                next_char = ''
            buf += next_char
            if buf.strip() == '':  # avoid building tokens starting with whitespace
                buf = ''
            if next_char == '\n':
                if buf.strip() != '':
                    raise RuntimeError(f"Non whitespace text which isn't a token {buf}")
                buf = '' # clear out buffer for newline to remove comments

        # has to keep reading until the token is invalid before an identifier or constant can be read
        while self._token_type(buf) is not None:
            next_char = self.file.read(1)
            if next_char == '/' and self._peek_char() in '/*':
                self._seek_to_end_of_comment('/' + self._peek_char())
                next_char = ''
            buf += next_char
        buf = buf[:-1]  # remove the char which invalidates the token
        self.file.seek(self.file.tell() - 1)
        return buf


    def has_more_tokens(self) -> bool:
        """if the rest of text has non-white space"""
        return bool(self.next_token)

    def advance(self) -> None:
        """get the next token"""
        self.token = self.next_token
        self.next_token = self._get_next_token()

    def token_type(self) -> str:
        return self._token_type(self.token)

    def _token_type(self, text: str) -> str:
        """resolve token type"""
        if text in ('class', 'constructor', 'function', 'method', 'field', 'static', 'var', 'int', 'char', 
            'boolean', 'void', 'true', 'false', 'null', 'this', 'let', 'do', 'if', 'else', 'while', 'return'):
            return 'KEYWORD'
        elif text in set('{}()[].,;+-*/&|<>=~'):
            return 'SYMBOL'
        elif self.regex_integer.match(text):
            return 'INT_CONST'
        elif len(text) > 1 and text[0] == '"' and text[-1] == '"':
            return 'STRING_CONST'
        elif self.regex_identifier.match(text):
            return 'IDENTIFIER'

    def keyword(self) -> str:
        return self.token

    def symbol(self) -> str:
        return self.token

    def identifier(self) -> str:
        return self.token

    def integer_value(self) -> int:
        return int(self.token)

    def string_value(self) -> str:
        return self.token.replace('"', '')
