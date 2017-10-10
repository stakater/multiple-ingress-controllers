#!/usr/bin/env bash

cd externaldns
./deploy-externaldns.sh
cd ..

sleep 30s

cd external
./deploy-external.sh
cd ..

cd internal
./deploy-internal.sh
cd ..