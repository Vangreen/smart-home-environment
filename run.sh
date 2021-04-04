#!/bin/bash

#angular project
cd smart_home_web-app 
git checkout develop
if [ $1 == 'arm' ]
then
# prevent JavaScript heap out of memory error
export NODE_OPTIONS="--max-old-space-size=8192"
fi
git pull
npm install 
ng build --output-path=dist
cd ..

#spring 
cd smart-home-server
git pull
if [ $1 == 'arm' ]
then
git checkout develop-arm
else
git checkout develop
fi
mvn install -DskipTests
cd ..

#docker 
docker-compose up -d --build 




