#!/bin/bash

RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" ${1})
SLEEP_TIME="60"
EMAIL="test@gmail.com"

while [ $RESPONSE = 403 o $RESPONSE = 404 ]
do
    sleep ${SLEEP_TIME}
    RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" ${1})
    echo $RESPONSE
done

echo -ne '\007' '\007' '\007' # Make a beep sound three times
echo "$1" | mail -s "It is online." "$EMAIL"
echo "It is up\!"
