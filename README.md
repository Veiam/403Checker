# Seashells by the Seashorepheus
Bash scripts I created for personal usages go here.

## 403Checker
Simple Bash Program to check whether or not the curl returns a 403 response.
I created this to alert myself when the Costco item comes back in stock.

Usage: run.sh "https://sample.url"

You can config the following in the file

RESPONSE=403

SLEEP_TIME="60"

EMAIL="test@gmail.com"


Once the response code does not match anymore, it will beep 3 times then send an email and echo.
It will check using CURL with a sleep timer.
Email function will only work if you have a local smtp/postfix/mail setup to use mail command correctly.
