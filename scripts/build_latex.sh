#!/usr/bin/env bash

EXAMPLE_DIR=examples

for file in "${EXAMPLE_DIR}"/*.tex; do
  echo "Compile $file"
  pdflatex -halt-on-error -output-directory "${EXAMPLE_DIR}" "$file" >/dev/null
done

rm "${EXAMPLE_DIR}"/*.aux "${EXAMPLE_DIR}"/*.log
echo "Done"
