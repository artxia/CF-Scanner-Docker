#!/bin/bash

./cloudflare-scanner

export INTERVAL=$(echo "$INTERVAL" | sed 's/[A-Za-z]//g')
sleep "$INTERVAL"
done