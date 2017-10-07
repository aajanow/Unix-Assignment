#!/usr/bin/env bash
# Unix assignment file: guessinggame.sh


#call the number of files in the current directory (not including hidden files)
fileCount=$(ls | wc -l)

#ask to guess the number of files 
echo "Hello! Let's play a game!"
echo "Please guess how many files I keep in this folder"
read response
   while [ $response != ${#fileCount[@]} ] # loop is active while the response is incorrect
   do
      if [ $response -gt ${#fileCount[@]} ]
      then
         echo "Too high.."
	 echo "Try again."
	 read response
      elif [ $response -lt ${#fileCount[@]} ]
      then
         echo "Too low.."
 	 echo "Try again."
         read response

   fi

done # if the guess is right the loop finishes and prints the last message 


echo "Congratulations! You guessed right!"
echo "Goodbye!"


