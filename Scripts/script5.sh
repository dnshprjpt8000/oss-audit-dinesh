#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer 3 questions:"
echo ""

read -p "1. Tool you use daily: " TOOL
read -p "2. Freedom means (one word): " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe in open source." > $OUTPUT
echo "I use $TOOL every day." >> $OUTPUT
echo "For me, freedom means $FREEDOM." >> $OUTPUT
echo "I want to build $BUILD and share it with the world." >> $OUTPUT

echo ""
echo "Manifesto saved in $OUTPUT"
echo ""
cat $OUTPUT
