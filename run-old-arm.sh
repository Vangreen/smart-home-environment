#!/bin/bash

echo "Smart home web app ..."
cd smart_home_web-app 
git checkout develop
if [ $1 == 'arm' ]
then
echo "ARM smart home web app version..."
# prevent JavaScript heap out of memory error
export NODE_OPTIONS="--max-old-space-size=900"
fi
git pull
npm install 
ng build --output-path=dist
cd ..

echo "Smart home web app done."
echo "Smart home server ... "
#spring 
cd smart-home-server
git pull
if [ $1 == 'arm' ]
then
echo "ARM smart home web app version ..."
git checkout develop-arm
else
git checkout develop
fi
mvn install -DskipTests
cd ..
echo "Build complet"
echo "Starting dockers ..."
#docker 
docker-compose up -d --build 




