#!/bin/bash

# Check for correct number of arguments
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required: <directory> <search_string>"
    exit 1
fi

filesdir=$1
searchstr=$2

# Check if directory exists
if [ ! -d "$filesdir" ]; then
    echo "Error: Directory '$filesdir' does not exist"
    exit 1
fi

# Count number of files
filecount=$(find "$filesdir" -type f | wc -l)

# Count matching lines
matchcount=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $filecount and the number of matching lines are $matchcount"


