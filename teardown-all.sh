#!/usr/bin/env bash

cd external
./teardown-external.sh
cd ..

cd internal
./teardown-internal.sh
cd ..

cd externaldns
./teardown-externaldns.sh
cd ..