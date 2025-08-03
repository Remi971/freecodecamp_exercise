#!/bin/bash
# Generate a random number between 1 and 1000 for users to guess
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

RANDOM_NUMBER=$((1 + RANDOM % 1000))

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM username WHERE name = '$USERNAME'")
if [[ -z $USER_ID ]]
then 
#username is not in database (create it)
  echo "$($PSQL "INSERT INTO username(name) VALUES('$USERNAME')")"
  USER_ID=$($PSQL "SELECT user_id FROM username WHERE name = '$USERNAME'")
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
else
#username is in database
  GAMES_PLAYED=$($PSQL "SELECT COUNT(user_id) FROM games WHERE user_id = $USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id = $USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo -e "Guess the secret number between 1 and 1000:"
read GUESS

TRY=0

while [ $GUESS ]
do
  if [[ $GUESS =~ ^[0-9]+$ ]]
    then
      if [[ $GUESS == $RANDOM_NUMBER ]]
        then
           ((TRY++))
           echo "$($PSQL "INSERT INTO games(user_id, guesses) VALUES ($USER_ID, $TRY)")"
           echo "You guessed it in $TRY tries. The secret number was $GUESS. Nice job!"
         break
      elif [[ $GUESS < $RANDOM_NUMBER ]]
      then
        ((TRY++))
        echo "It's higher than that, guess again:"
        read GUESS
      elif  [[ $GUESS > $RANDOM_NUMBER ]]
      then
        ((TRY++))
        echo "It's lower than that, guess again:"
        read GUESS
      fi
  else
    ((TRY++))
    echo "That is not an integer, guess again:"
    read GUESS
  fi
done
