# Written by Marc Bacvanski
# DO NOT RUN THIS FILE BY ITSELF!!!
# It's called by install.sh - run that one instead.

echo "--------------------- Installing Node.js and NPM. ----------------------"

sudo apt-get install -y mongodb

echo "--------------------- Finished installing MongoDB! ---------------------"
echo "----------- To get started, run this monster of a command:  ------------"
echo ""
echo "sudo mkdir $HOME/db ; sudo mongod --dbpath $HOME/db --port 80"
echo ""
echo "To fork the output into a log file, append this to the above command: "
echo ""
echo "--fork \ --logpath /var/tmp/mongodb" 
