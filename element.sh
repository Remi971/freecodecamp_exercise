#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
ARGUMENT=$1

if [[ $ARGUMENT =~ [0-9]+ ]]
then
  #If argument is a number
  QUERY=$($PSQL "SELECT * FROM properties p JOIN elements e ON p.atomic_number = e.atomic_number JOIN types t ON p.type_id = t.type_id WHERE p.atomic_number = $ARGUMENT")
elif [[ "$ARGUMENT" =~ ^[a-zA-Z]{1,2} ]] && [ ${#ARGUMENT} -lt 3 ]
then 
#If argument is a letter
  QUERY=$($PSQL "SELECT * FROM properties p JOIN elements e ON p.atomic_number = e.atomic_number JOIN types t ON p.type_id = t.type_id WHERE UPPER(e.symbol) = UPPER('$ARGUMENT')")
elif [[ "$ARGUMENT" =~ ^[[:alpha:]]+$ ]] && [ ${#ARGUMENT} -gt 2 ];
then
#If argument is a element name
  QUERY=$($PSQL "SELECT * FROM properties p JOIN elements e ON p.atomic_number = e.atomic_number JOIN types t ON p.type_id = t.type_id WHERE e.name = '$ARGUMENT'")
fi

#If no argument is provided
if [[ -z $ARGUMENT ]]
then
  echo "Please provide an element as an argument."
elif [[ -z $QUERY ]]
then
  echo "I could not find that element in the database."
else
  echo "$QUERY" | while IFS='|' read NUMBER MASS MELTING BOILING TYPE_ID NUMBER SYMBOL NAME TYPE_ID TYPE;
  do 
    echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
  done 
fi
