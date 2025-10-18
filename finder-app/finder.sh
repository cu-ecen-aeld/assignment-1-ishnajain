#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo "error! two arguments required <filesdir> <searchdir>" >&2
    exit 1 

fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
echo " fatal: d'$filesdir' directory doesnt exist" >&2
exit 1
fi

files_present=$(find "$filesdir" -type f 2>/dev/null | wc -l )

count_str=$(grep -R -F -- "$searchstr" "$filesdir" 2>/dev/null | wc -l)


echo "The number of files are $files_present and the number of matching lines are $count_str"
exit 0