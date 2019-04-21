#! /bin/bash

regex='[[:digit:]]+'
# we may use [0-9]+ instead
if [[ $1 =~ $regex ]]
   then  
	RANDOM_WORD=$( grep -E '\w+' /usr/share/dict/words | head -$1 | tail -1 )
   else 
	RANDOM_WORD=$( grep -E '\w+' /usr/share/dict/words | head -$RANDOM | tail -1 ) 
fi

echo $RANDOM_WORD


