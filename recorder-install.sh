# Written by Marc Bacvanski
# DO NOT RUN THIS FILE BY ITSELF!!!
# It's called by install.sh - run that one instead.

echo "--------------------- Installing Node.js and NPM. ----------------------"

sudo apt-get install -y nodejs npm

echo "----------------- Finished installing Node.js and NPM. -----------------"

mkdir ~/Servers
cd ~/Servers/

echo "--------------------- Created directory ~/Servers. ---------------------"

git clone https://github.com/Flashcard-App/Flashcard-App-Recorder.git

echo "----------- Cloned into ~/Servers/Flashcard-App-TeacherUI/. ------------"

cd ~/Servers/Flashcard-App-Recorder/

echo "-------------------- Installing Node.js libraries. ---------------------"

npm install

echo "---------------- Finished installing Node.js libraries. ----------------"
echo "------------------------ Finishing installation. -----------------------"

sudo chmod +x app.js

echo "------------ All done! Run nodejs app.js to get started! ------------"

