#!bin/bash

file="weather_ascii.txt"
i=1
while read line;do
echo "$line"
done < $file

echo ""
echo "Developed by Srijan Dutta"
echo ""
echo ""
echo "Enter your location:"
read loc

echo "0. Current Weather"
echo "1. Current Weather + Today's Forecast"
echo "2. Current Weather + Today's Forecast + Tomorrow's Forecast"
echo ""
echo "Enter your choice:"
read choice

forecast=$(curl wttr.in/$loc?$choice)
echo "$forecast"

echo ""
echo "Hope this helps! Have a great day ahead!"
