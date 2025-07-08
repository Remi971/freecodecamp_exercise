#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo -e "\n-- Insert data into Teams table\n"
echo "$($PSQL "TRUNCATE teams games")"
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $WINNER != winner ]]
  then
   echo "$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
   echo "Add $WINNER into Teams table"
  fi
  if [[ $OPPONENT != opponent ]]
  then
    echo "$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
    echo "Add $OPPONENT into Teams table"
  fi
  WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
  OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
  echo "$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")"
  echo "Add game into database"
done
