#!/bin/bash

#angular project
cd smart_home_web-app 
git checkout develop
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




