#!/bin/bash
# Path to netcat
NC="logger"
MESSAGES=("Error Event" "Warning Event" "Info Event")
# How long to wait in between sending messages.
SLEEP_SECS=1
# How many message to send at a time.
COUNT=1
PRIORITIES=(0 1 2 3 4 5 6 7)

while [ 1 ]
do
        for i in $(seq 1 $COUNT)
        do
                # Picks a random syslog message from the list.
                RANDOM_MESSAGE=${MESSAGES[$RANDOM % ${#MESSAGES[@]} ]}
                PRIORITY=${PRIORITIES[$RANDOM % ${#PRIORITIES[@]} ]}
                $NC $PRIORITY $RANDOM_MESSAGE
                $NC $PRIORITY "Hello Splunk - Demo"
        done
        sleep $SLEEP_SECS
done &

