#!/usr/bin/env bash

printf "Simple grammar\n"
./parse_grammar.sh src/test/resources/parse/ll1table/simple.grammar
printf "Identifier grammar\n"
./parse_grammar.sh src/test/resources/grammar/identifier.grammar
printf "Invalid grammar\n"
./parse_grammar.sh src/test/resources/grammar/invalid.grammar
