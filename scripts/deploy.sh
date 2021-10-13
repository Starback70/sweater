#!/usr/bin/env bash

#mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
    target/sweater-1.0.jar \
    mers@192.168.31.231:/home/mers/

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa mers@192.168.31.231 << EOF

pgrep java | xargs kill -9
nohup java -jar sweater-1.0.jar > log.txt &

EOF

echo 'Bye'