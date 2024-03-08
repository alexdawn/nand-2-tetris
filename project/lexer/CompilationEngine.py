import JackTokenizer


class Xml:
    def __init__(self, token_name: str, engine):
        self.token_name = token_name
        self.engine = engine

    def __enter__(self):
        print("    " * self.engine.current_indent + f"<{self.token_name}>")
        self.engine.current_indent += 1

    def __exit__(self, *args):
        self.engine.current_indent -= 1
        print("    " * self.engine.current_indent + f"</{self.token_name}>")


op = set([*'+-*/&|<>='])
unary_op = set([*'-~'])
keyword_constants = set(['true', 'false', 'null', 'this'])
class_variable_type = set(["static", "field"])
variable_type = set(['int', 'char', 'boolean'])
statements = set(['let', 'if', 'do', 'while', 'return'])
function_types = set(['constructor', 'function', 'method'])


class CompilationEngine:
    current_indent = 0
    current_token = None
    next_token = None
    next_token_type = None

    def __init__(self, tokenizer: JackTokenizer):
        self.tokenizer = tokenizer
        self.next_token_type, self.next_token = self.tokenizer.advance()

    def process(self, token_type: str, token: set|str):
        self.current_token_type, self.current_token = self.next_token_type, self.next_token
        self.next_token_type, self.next_token = self.tokenizer.advance()
        if token is None or self.current_token == token or (type(token) is set and self.current_token in token):
            with Xml(token_type, self):
                print("    " * self.current_indent + self.current_token)
        else:
            raise Exception(f"Invalid token {self.current_token} expected {token}")


    def compile_class(self):
        with Xml('class', self):
            self.process("keyword", "class")
            self.process("identifier", None)
            self.process("symbol", "{")
            while self.next_token in class_variable_type:
                self.compile_class_var_declaration()
            while self.next_token in function_types:
                self.compile_subroutine()
            self.process("symbol", "}")

    def compile_class_var_declaration(self):
        with Xml('classVariable', self):
            self.process("keyword", class_variable_type)
            # handle variable or object
            if self.next_token_type == 'keyword':
                self.process("keyword", variable_type)
            else:
                self.process("identifier", None)
            self.process("identifier", None)
            # handle extra variables
            while self.next_token == ',':
                self.process('symbol', ',')
                self.process('identifier', None)
            self.process("symbol", ";")

    def compile_subroutine(self):
        with Xml('subroutine', self):
            self.process("keyword", function_types)
            # handle variable or object
            if self.next_token_type == 'keyword':
                self.process("keyword", variable_type.union(set(['void'])))
            else:
                self.process("identifier", None)
            self.process("identifier", None)
            self.process("symbol", '(')
            self.compile_parameter_list()
            self.process("symbol", ')')
            self.compile_subroutine_body()

    def compile_parameter_list(self):
        with Xml('parameterList', self):
            while self.next_token in variable_type:
                self.process("keyword", variable_type)
                self.process("identifier", None)
                if self.next_token == ',':
                    self.process("symbol", ',')

    def compile_subroutine_body(self):
        with Xml('subroutineBody', self):
            self.process("symbol", '{')
            while self.next_token == 'var':
                self.compile_var_declaration()
            self.compile_statements()
            self.process("symbol", '}')

    def compile_var_declaration(self):
        with Xml('variableDeclaration', self):
            self.process("keyword", 'var')
            # handle variable or object
            if self.next_token_type == 'keyword':
                self.process("keyword", variable_type)
            else:
                self.process("identifier", None)
            self.process("identifier", None)
            while self.next_token == ',':
                self.process("symbol", ',')
                self.process("identifier", None)
            self.process("symbol", ';')

    def compile_statements(self):
        with Xml('statements', self):
            while self.next_token in statements:
                if self.next_token == 'let':
                    self.compile_let()
                elif self.next_token == 'if':
                    self.compile_if()
                elif self.next_token == 'while':
                    self.compile_while()
                elif self.next_token == 'do':
                    self.compile_do()
                elif self.next_token == 'return':
                    self.compile_return()
                else:
                    raise RuntimeError("Not a statement keyword")

    def compile_let(self):
        with Xml('letStatement', self):
            self.process("keyword", "let")
            self.process("identifier", None)
            if self.next_token == '[':
                self.process("symbol", '[')
                self.compile_expression()
                self.process("symbol", ']')
            self.process("symbol", "=")
            self.compile_expression()
            self.process("symbol", ";")

    def compile_if(self):
        with Xml('ifStatement', self):
            self.process("keyword", "if")
            self.process("symbol", "(")
            self.compile_expression()
            self.process("symbol", ")")
            self.process("symbol", "{")
            self.compile_statements()
            self.process("symbol", "}")
            if self.next_token == 'else':
                self.process("keyword", "else")
                self.process("symbol", "{")
                self.compile_statements()
                self.process("symbol", "}")

    def compile_while(self):
        with Xml('whileStatement', self):
            self.process("keyword", "while")
            self.process("symbol", "(")
            self.compile_expression()
            self.process("symbol", ")")
            self.process("symbol", "{")
            self.compile_statements()
            self.process("symbol", "}")

    def compile_do(self):
        with Xml('doStatement', self):
            self.process("keyword", "do")
            self.process("identifier", None)  # subroutine|class|variable
            if self.next_token == '.':
                self.process("symbol", '.')
                self.process("identifier", None)
            self.process("symbol", '(')
            self.compile_expression_list()
            self.process("symbol", ')')
            self.process("symbol", ";")

    def compile_return(self):
        with Xml('returnStatement', self):
            self.process("keyword", 'return')
            if self.next_token != ';':
                self.compile_expression()
            self.process("symbol", ';')

    def compile_expression(self):
        with Xml('expression', self):
            self.compile_term()
            while self.next_token in op:
                self.process("symbol", op)
                self.compile_term()

    def compile_term(self):
        with Xml('term', self):
            if self.next_token_type == JackTokenizer.TokenType.INTEGER_CONSTANT:
                self.process('integer_constant', None)
            elif self.next_token_type == JackTokenizer.TokenType.STRING_CONSTANT:
                self.process('string_constant', None)
            elif self.next_token in keyword_constants:
                self.process("keyword", keyword_constants)
            elif self.next_token_type == JackTokenizer.TokenType.IDENTIFIER:  # could be a subroutine call, variable or variable with array access
                self.process("identifier", None)
                if self.next_token == '[':
                    self.process('symbol', '[')
                    self.compile_expression()
                    self.process('symbol', ']')
            elif self.next_token == '(':
                self.process('symbol', '(')
                self.compile_expression()
                self.process('symbol', ')')
            elif self.next_token in unary_op:
                self.process('symbol', unary_op)
                self.compile_term()
            else:
                raise RuntimeError("Invalid term")

    def compile_expression_list(self) -> int:
        list_length = 0
        with Xml('expressionList', self):
            if self.next_token != ')':  # handle zero length list
                self.compile_expression()
                list_length += 1
                while self.next_token == ',':
                    self.process("symbol", ',')
                    self.compile_expression()
                    list_length += 1
        return list_length
