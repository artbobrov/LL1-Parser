#!/usr/bin/env bash


EXAMPLE_DIR=examples

./gradlew run -q --args="$1 '$2' $EXAMPLE_DIR"
