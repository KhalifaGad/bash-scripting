#! /bin/bash

RANDOMWORD=$( shuf -n 1 /usr/share/dict/words)

echo $RANDOMWORD
echo

ANOTHER_RANDOM_WORD=$( grep -E '\w+' /usr/share/dict/words | head -$RANDOM | tail -1 )
echo $ANOTHER_RANDOM_WORD

