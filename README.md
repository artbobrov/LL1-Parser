# LL(1) parser

LL(1) parser implementation in Kotlin using ANTLR.
Program checks whether the text conforms to the given grammar described using my own grammar language.

Parsing provided with Latex report: Nullable table, First table, Follow table, Derivation tree.
To see report example look at `./examples` directory.

## Grammar description

BNF like syntax. Rules are separated by `;`. Spaces are ignored.
Epsilon rule are not built-in, to express it use `<eps> ::= '';`.
Nonterminals – `<_identifier>`. Terminals – `'string'`.
Alternatives are allowed(`<rule> ::= 'a' | 'b';`).

Grammar of CF grammar:

```cpp
grammar ::= sequence
sequence ::= (rule ';')*
rule ::= nonterminal '::=' rvalue
rvalue ::= alternatives
alternatives ::= alternative ('|' alternative)*
alternative ::= symbol+
symbol ::= terminal | nonterminal;
nonterminal ::= '<'identifier'>'
identifier ::= [a-zA-Z][a-zA-Z0-9'_- ]*
terminal ::= '\'~[\r\n']*\''
```

## Usage

Usage:

```bash
./gradlew run --args="PATH_TO_GRAMMAR TEXT PATH_TO_REPORT_DIR" # text checking
./gradlew run --args="[--parse_grammar_only] PATH_TO_GRAMMAR" # grammar parse only
```

## Examples

There are a bunch of test with grammar samples.

Some usefull scripts:

* `scripts/build_latex.sh` to build all `.tex` in example directory

* `scripts/parse_grammar.sh` to parse only one grammar

* `scripts/parse_grammar_test.sh` to run some parse only examples

* `scripts/run.sh` to run single text checking

* `scripts/run_test.sh` to run some checking example with latex report in example dir.