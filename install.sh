#!/bin/bash
echo PLEASE RUN THIS SCRIPT AS SUDO!
echo ---------------------------------------------------------------------------
echo IF YOU DID NOT RUN THIS SCRIPT WITH SUDO PRESS CTRL + C TO EXIT THE SCRIPT!
echo ---------------------------------------------------------------------------
sleep 10
echo Ok! lets get started!
echo You WILL be installing a minecraft 1.16 server!
echo Please enter the Apsalute path for the minecraft server to be installed into. E.G /minecraft-server
read path
echo you choose $path, press CRTL + C if you ented it rong!
sleep 5
echo WARNING!!! THE $path FOLDER WILL BE DELETED IF YOU ALREDY HAVE A SERVER SET UP IN THAT FOLDER PLEASE EXIT THE SCRIPT NOW WITH CRTL + C !
sleep 20
sudo apt update -y
sudo apt install nano -y
sudo apt install wget -y
sudo apt install curl -y
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install software-properties-common ca-certificates apt-transport-https curl
curl https://apt.corretto.aws/corretto.key | sudo apt-key add -
echo -------------------------------
echo Please hit ENTER when prompted!
echo -------------------------------
sleep 5
sudo add-apt-repository 'deb https://apt.corretto.aws stable main'
sudo apt-get update
sudo apt-get install -y java-16-amazon-corretto-jdk

sudo rm -rf $path && sudo mkdir $path && cd $path && sudo wget https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar
echo please enter the amount of RAM the srever can use! E.G. 512M or 1G
read mem
echo The server will have $mem of system memory, Press CTRL + C if you ented it rong!
echo ------
echo PAPER!
echo ------
cd $path && sudo java -$mem -jar paper-1.16.5-794.jar
echo --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
echo To use the server type sudo nano $path/eula.txt and change false to true! To conigure the server type sudo nano $path/server.propoties and edit the server.propeties file!
echo --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
echo Pro-Tip! when typeing a file or folder name E.G: $path or $path/eula.txt press the TAB key to compleate the name of the folder or file!
echo TO RUN THE SERVER AGAIN TYPE cd $path && ./run TO SAFLY RUN THE SERVER!
