#!/bin/bash
ip=$(curl -s https://api.ipify.org)
loc=$(curl -s https://ipapi.co/"$ip"/city)

weather=$(curl -s https://wttr.in/"$loc")

echo "$weather" | head -n -3 | tail -n +2
