## Server Availability Script

This is a Bash script that checks a list of servers, checks their status using `ping`, and sends an email report if any servers are down. 

## Features
- Reads a list of server addresses from a file (`servers.txt`).
- Checks if the servers respond to `ping`.
- Generates a report for servers that are down.
- Sends the report via email using `msmtp` and Gmail SMTP.

---

## Installation

**Clone the repository**
   
   git clone git@github.com:KonstantinosMichalatos24/server_avail.git
   
**Change Directory**

   cd server_avail
