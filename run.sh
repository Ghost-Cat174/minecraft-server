#!/bin/bash
echo PLEASE RUN THIS SCRIPT AS SUDO!
echo ---------------------------------------------------------------------------
echo IF YOU DID NOT RUN THIS SCRIPT WITH SUDO PRESS CTRL + C TO EXIT THE SCRIPT!
echo ---------------------------------------------------------------------------
echo YOU CAN MOVE THIS FILE TO WHERE YOU WANT BECUCE IT ASKS FOR THE PATH OF THE paper.jar FILE
echo please wait...
sleep 10
echo please enter the path to the server.jar file DO NOT PUT THE JAR FILE IN THE PATH! e.g /minecraft-server
read path
echo $path is the path you ented!
sleep 10
echo please enter the amount of ram the minecraft server can use. e.g. 512M or 1G
read mem
echo you choose $mem
sleep 10
echo ------
echo PAPER!
echo ------
cd $path && java -Xmx$mem -jar paper.jar
