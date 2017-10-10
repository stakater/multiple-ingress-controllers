#!/usr/bin/env bash

cd external
./teardown-external.sh
cd ..

cd internal
./teardown-internal.sh
cd ..

sleep 45s #Waits 30 seconds so, that we cleanup is done by the externaldns but its removed as well!

cd externaldns
./teardown-externaldns.sh
cd ..