#!/bin/bash
# Minecraft starter
#set -x
cd $SERVERDIR
#SERVER=" minecraft_server.1.15.1.jar "
SERVER=" minecraft_server.1.15.2.jar "
#echo "/usr/bin/screen -dmS $LABEL $JAVA -Xms256m -Xmx3500m -D$LABEL -jar $SERVER nogui" > /home/MC-Server/Sky/cmdtoexec.txt
screen -dmS $LABEL $JAVA -Xms256m -Xmx3500m -D$LABEL  -jar $SERVER nogui
sleep 10
ps afxu | grep "java.*minecraft_kimadu"| grep -iEv "grep|screen" | awk {'print $2'} > $PIDFILE

