#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n~~~~~ MY SALON ~~~~~"
echo -e "\nWelcome to My Salon, how can I help you?"

BOOKING_SERVICE() {
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  #check phone number
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  echo "$CUSTOMER_NAME"
  #if doesnt exist
  if [[ -z $CUSTOMER_NAME ]]
  then
    echo -e "I don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    CREATE_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  fi
  echo -e "\nWhat time would you like your cut, $CUSTOMER_NAME?"
  read SERVICE_TIME
  #get customer ID
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  MAKE_APOINTMENT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
}

MAIN_MENU() {
if [[ $1 ]]
then 
  echo "$1"
fi
SERVICES_LIST=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")
echo "$SERVICES_LIST" | while read SERVICE_ID BAR NAME
do
  if [[  $SERVICE_ID =~ [0-9]+ ]]
  then
    echo "$SERVICE_ID) $NAME"
  fi
done
# pick a service
read SERVICE_ID_SELECTED
# Check the name of the service
SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
# if service doesn't exists
if [[ -z $SERVICE_NAME ]]
then
# send to main menu
MAIN_MENU "I could not find that service. What would you like today?"
else
BOOKING_SERVICE
fi

}

MAIN_MENU