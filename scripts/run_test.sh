#!/usr/bin/env bash

echo 'Running unit tests
'
./gradlew :test

echo 'Running show tests

'
printf "> Simple example\n"
./run.sh src/test/resources/parse/ll1table/simple.grammar 'a'
printf "\n> Kleene star\n"
./run.sh src/test/resources/parse/ll1table/kleene.grammar 'aaaaa'
printf "\n> Incorrect string for \'+\'(>= 1 times 'a')\n"
./run.sh src/test/resources/parse/ll1table/plus.grammar ''
printf "\n> Correct expression\n"
./run.sh src/test/resources/parse/support/expression.grammar '(n+n)*(n)'
printf "\n> Incorrect expression\n"
./run.sh src/test/resources/parse/support/expression.grammar '(n+n*n'
printf "\n> Natural number(zeros can be in the beginning)\n"
./run.sh src/test/resources/grammar/natural.grammar '12334'
printf "\n> Identifier by regex: [_a-zA-Z][_a-zA-Z0-9]\n"
./run.sh src/test/resources/grammar/identifier.grammar '_the_id_'
printf "\n> Grammar is not LL(1) #1.\n"
./run.sh src/test/resources/parse/ll1table/non_ll1.grammar '((((()))))(((((())))))'
printf "\n> Grammar is not LL(1) #2.\n"
./run.sh src/test/resources/parse/support/non_ll1_2.grammar 'ad'
