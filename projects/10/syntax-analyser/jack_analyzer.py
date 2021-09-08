import sys

from jack_tokenizer import JackTokenizer
from compilation_engine import CompilationEngine

# striping spaces from strings

def main():
    j = JackTokenizer(open(sys.argv[1], 'r'))
    j.advance()
    while j.has_more_tokens():
        print(j.token, j.token_type())
        j.advance()

if __name__ == '__main__':
    main()
