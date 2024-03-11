#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: Please provide the path to a directory and a search string."
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a valid directory."
    exit 1
fi

num_files=$(ls -1 $filesdir | wc -l)
num_matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"
