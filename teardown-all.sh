#!/usr/bin/env bash

cd exposecontroller
teardown-all.sh
cd ..

cd external-ingress
teardown-all.sh
cd ..

cd internal-ingress
teardown-all.sh
cd ..

cd external-echoserver
teardown-all.sh
cd ..

cd internal-echoserver
teardown-all.sh
cd ..