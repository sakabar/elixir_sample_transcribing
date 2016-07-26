#!/bin/zsh

set -u
if [ $# -ne 1 ]; then
    echo "Argument Error: <input>">&2
    exit 1
fi
input=$1

elixir src/fizzbuzz.exs $input
