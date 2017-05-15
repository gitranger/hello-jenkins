#!/bin/sh
 
ssh vagrant@192.168.60.11 <<EOF
  cd ~/hello-jenkins
  git pull
  npm install --production
  forever restartall
  exit
EOF
