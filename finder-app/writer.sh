#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo "error! two arguments required <writefile> <writestr>" >&2
    exit 1 

fi

writefile="$1"
writestr="$2"

writedir=$(dirname -- "$writefile" )

if ! mkdir -p -- "$writedir" ; then
echo "fatal ! cannot create directory"
exit 1
fi

if ! printf "%s" "$writestr" > "$writefile" ; then
echo :couldnt write in file: >$2
exit 1
fi
exit 0

