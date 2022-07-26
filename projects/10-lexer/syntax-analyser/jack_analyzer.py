import sys

from jack_tokenizer import JackTokenizer
from compilation_engine import CompilationEngine

# losing last few tokens???

def main():
    j = JackTokenizer(open(sys.argv[1], 'r'))
    j.advance()
    i = 0
    while j.has_more_tokens():
        if i == 136:
            import pdb
            pdb.set_trace()
        print(f'{i:>4}\t{j.token:<25}{j.token_type():>20}')
        j.advance()
        i+=1

if __name__ == '__main__':
    main()
