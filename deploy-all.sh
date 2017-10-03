#!/usr/bin/env bash

cd exposecontroller
deploy-all.sh
cd ..

cd external-ingress
deploy-all.sh
cd ..

cd internal-ingress
deploy-all.sh
cd ..

cd external-echoserver
deploy-all.sh
cd ..

cd internal-echoserver
deploy-all.sh
cd ..