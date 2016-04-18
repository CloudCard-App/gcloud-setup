#!/bin/bash

# Sets up Ubuntu for the flashcard-application.
# Written by Marc Bacvanski

echo "------------ Welcome to the Flashcard-App server installer. ------------"

# sudo apt-get update

echo "------------------ Installing Node.js, NPM, and Vim. -------------------"

# sudo apt-get install nodejs npm vim 

num=0
until ( [[ "$num" -ge 1 ]] && [[ "$num" -le 3 ]] )
do
  echo "What type of server are you running?"
  echo "[1]: TeacherUI"
  echo "[2]: Recorder"
  echo "[3]: MongoDB (by itself)"
  read num
done

if ( [[ "$num" == '1' ]] ); then
  echo "Downloading and installing TeacherUI server."
  # Call the TeacherUI script
elif ( [[ "$num" == '2' ]] ); then
  echo "Downloading and installing Recorder server."
  # Call the Recorder script
elif ( [[ "$num" == '3' ]] ); then
  echo "Downloading and installing MongoDB by itself."
  # Call the MongoDB script
fi

echo "------------------------ Installation complete! ------------------------"

