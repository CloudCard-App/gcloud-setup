#!/bin/bash

# Sets up Ubuntu for the flashcard-application.
# Written by Marc Bacvanski

echo "------------ Welcome to the Flashcard-App server installer. ------------"

sudo apt-get update

echo "------------------ Installing Node.js, NPM, and Vim. -------------------"

sudo apt-get install nodejs npm vim 

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
  chmod +x teacherui-install.sh
  ./teacherui-install.sh
  chmod -x teacherui-install.sh
elif ( [[ "$num" == '2' ]] ); then
  echo "Downloading and installing Recorder server."
  chmod +x recorder-install.sh
  ./recorder-install.sh
  chmod -x recorder-install.sh
elif ( [[ "$num" == '3' ]] ); then
  echo "Downloading and installing MongoDB by itself."
  chmod +x mongodb-install.sh
  ./mongodb-install.sh
  chmod -x mongodb-install.sh
  echo "To run mongoDB, execute:"
  echo "sudo mkdir $HOME/db ; sudo mongod --dbpath $HOME/db --port 80"
fi

echo "------------------------ Installation complete! ------------------------"

