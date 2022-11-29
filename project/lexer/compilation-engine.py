class Xml:
    def __init__(self, token_name: str, nesting: int):
        self.token_name = token_name
        self.nesting = nesting

    def __enter__(self):
        print("\t" * self.nesting + f"<{self.token_name}>")

    def __exit__(self):
        print("\t" * self.nesting + f"</{self.token_name}>")


op = set([*'+-*/&|<>='])
unary_op = set([*'-~'])
keyword_constants = set(['true', 'false', 'null', 'this'])
class_variable_type = set("static", "field")
variable_type = set(['int', 'char', 'boolean'])
statements = set(['let', 'if', 'do', 'while', 'return'])
function_types = set(['constructor', 'function', 'method'])


class CompilationEngine:
    current_indent = 0
    next_token = None
    next_token_type = None

    def __init__(self, input_file: str, output_file: str):
        pass

    def process(self, token_type: str, token: str):
        if current_token == token:
            with Xml(token_type):
                print(token)
        else:
            raise Exception(f"Invalid token {current_token} expected {token}")
        current_token = tokenizer.advance()

    def compile_class(self, input, output):
        with Xml('class', self.current_indent):
            self.process("keyword", "class")
            self.process("identifier")
            self.process("symbol", "{")
            while self.next_token in class_variable_type:
                self.compile_class_var_declaration()
            while self.next_token in function_types:
                self.compile_subroutine()
            self.process("symbol", "}")

    def compile_class_var_declaration(self):
        with Xml('classVariable', self.current_indent):
            self.process("keyword", class_variable_type)
            # handle variable or object
            if self.next_token_type == 'keyword':
                self.process("keyword", variable_type)
            else:
                self.process("identifier")
            self.process("identifier")
            # handle extra variables
            while self.next_token == ',':
                self.process('symbol', ',')
                self.process('identifier')
            self.process("symbol", ";")

    def compile_subroutine(self):
        with Xml('subroutine', self.current_indent):
            self.process("keyword", function_types)
            self.process("keyword", variable_type.union(set(['void'])))
            self.process("identifier")
            self.process("symbol", '(')
            self.compile_parameter_list()
            self.process("symbol", ')')
            self.compile_subroutine_body()

    def compile_parameter_list(self):
        with Xml('parameterList', self.current_indent):
            while self.next_token in variable_type:
                self.process("keyword", variable_type)
                self.process("identifier")
                if self.next_token == ',':
                    self.process("symbol", ',')

    def compile_subroutine_body(self):
        with Xml('subroutineBody', self.current_indent):
            self.process("symbol", '{')
            while self.next_token == 'var':
                self.compile_var_declaration()
            self.compile_statements()
            self.process("symbol", '}')

    def compile_var_declaration(self):
        with Xml('variableDeclaration', self.current_indent):
            self.process("keyword", 'var')
            self.process("keyword", variable_type)
            self.process("identifier")
            while self.next_token == ',':
                self.process("symbol", ',')
                self.process("identifier")
            self.process("symbol", ';')

    def compile_statements(self):
        with Xml('statements', self.current_indent):
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
        with Xml('letStatement', self.current_indent):
            self.process("keyword", "let")
            self.process("identifier")
            if self.next_token == '[':
                self.process("symbol", '[')
                self.compile_expression()
                self.process("symbol", ']')
            self.process("symbol", "=")
            self.compile_expression()
            self.process("symbol", ";")

    def compile_if(self):
        with Xml('ifStatement', self.current_indent):
            self.process("keyword", "if")
            self.process("symbol", "(")
            self.compile_expression()
            self.process("symbol", ")")
            self.process("symbol", "{")
            self.compile_statements()
            self.process("symbol", "}")

    def compile_while(self):
        with Xml('whileStatement', self.current_indent):
            self.process("keyword", "while")
            self.process("symbol", "(")
            self.compile_expression()
            self.process("symbol", ")")
            self.process("symbol", "{")
            self.compile_statements()
            self.process("symbol", "}")

    def compile_do(self):
        with Xml('doStatement', self.current_indent):
            self.process("keyword", "do")
            self.process("identifier")  # subroutine|class|variable
            if self.next_token == '.':
                self.process("symbol", '.')
                self.process("identifier")
            self.process("symbol", '(')
            self.compile_expression_list()
            self.process("symbol", ')')
            self.process("symbol", ";")

    def compile_return(self):
        with Xml('returnStatement', self.current_indent):
            self.process("keyword", 'return')
            if self.next_token != ';':
                self.compile_expression()
            self.process("symbol", ';')

    def compile_expression(self):
        with Xml('expression', self.current_indent):
            self.compile_term()
            while self.next_token in op:
                self.process("symbol", op)
                self.compile_term()

    def compile_term(self):
        with Xml('term', self.current_indent):
            if self.next_token_type == 'integer_constant':
                self.process('integer_constant')
            elif self.next_token_type == 'string_constant':
                self.process('string_constant')
            elif self.next_token in keyword_constants:
                self.process("keyword", keyword_constants)
            elif self.next_token_type == 'identifier':
                self.process("identifier")
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
            elif self.next_token_type == 'identifier':
                pass  # subroutine name
            else:
                raise RuntimeError("Invalid term")

    def compile_expression_list(self) -> int:
        list_length = 0
        with Xml('expressionList', self.current_indent):
            if True:  # first_expression
                self.compile_expression()
                list_length += 1
                while self.next_token == ',':
                    self.process("symbol", ',')
                    self.compile_expression()
                    list_length += 1
        return list_length
