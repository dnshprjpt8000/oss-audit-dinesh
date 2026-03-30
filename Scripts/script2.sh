#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
 echo "$PACKAGE is installed."
 git --version
else
 echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
 git) echo "Git: version control system created by Linus Torvalds" ;;
 vlc) echo "VLC: open source media player" ;;
 firefox) echo "Firefox: open source browser" ;;
 *) echo "Unknown package" ;;
esac
