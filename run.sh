#!/bin/bash

echo "Smart home web app ..."
cd smart_home_web-app 
git checkout develop
git pull
npm install 
ng build --output-path=dist
cd ..

echo "Smart home web app done."
echo "Smart home server ... "
#spring 
cd smart-home-server
git pull
git checkout develop
mvn clean install -DskipTests
cd ..
echo "Build complet"
echo "Starting dockers ..."
#docker 
docker-compose up -d --build 




