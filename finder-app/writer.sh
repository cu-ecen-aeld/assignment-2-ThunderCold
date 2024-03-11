#!/bin/bash

writefile="$1"
writestr="$2"

if [ $# -lt 2 ]; then
    echo "Error: Please provide the full path to a file and the text string to write."
    exit 1
fi

dir=$(dirname "$writefile")

if [ $(touch "$writefile" 2> "/dev/null" || mkdir -p "$dir") ]; then
    echo "Error"
    exit 1
fi

echo "$writestr" > "$writefile"