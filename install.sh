#!/bin/bash

# Sets up Ubuntu for the flashcard-application.
# Written by Marc Bacvanski

# sudo apt-get update

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
  echo "Installing dependencies for TeacherUI type server."
  # Call the TeacherUI script
elif ( [[ "$num" == '2' ]] ); then
  echo "Installing dependencies for Recorder type server."
  # Call the Recorder script
elif ( [[ "$num" == '3' ]] ); then
  echo "Installing dependencies for MongoDB by itself."
  # Call the MongoDB script
fi

