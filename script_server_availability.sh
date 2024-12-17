#!/bin/bash


REPORT="report.txt"

> "$REPORT"

while IFS= read -r server; do
    if ! ping -c 4 "$server" &>/dev/null; then
        echo "$server is DOWN" >> "$REPORT"
    fi
done < "servers.txt"


if [ -s "$REPORT" ]; then

    # Sending report with Gmail SMTP
    SUBJECT="Server Down Report"
    TO_EMAIL="examplemail@mail.com"  # Change mail
    echo -e "Subject: $SUBJECT\n\n$(cat $REPORT)" | msmtp "$TO_EMAIL"
  
else
    echo "All servers are UP."
fi
