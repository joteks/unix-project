#!/bin/bash

function  howmanyfiles {
   res=$(ls | wc -l)
   echo $res
}

num=$(howmanyfiles)

echo "How many files are in the current directory?"

while :
   do
     echo -n "Guess a number: "
     read guess
     if [[ $guess -gt $num ]] 
     then 
        echo "Too high"
     elif [[ $guess -lt $num ]] 
     then 
        echo "Too low"
     else 
        echo "Congratulations! You guessed the number."
        break
     fi 
   done
