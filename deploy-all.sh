#!/usr/bin/env bash

cd external
./deploy-external.sh
cd ..

cd internal
./deploy-internal.sh
cd ..

cd externaldns
./deploy-externaldns.sh
cd ..