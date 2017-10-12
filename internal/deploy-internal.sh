#!/usr/bin/env bash

if ! which kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

# setup namespace first
kubectl apply -f internal-namespace.yaml

# now deploy the ingress controller
cd ingress
./deploy.sh
cd ..

# now deploy the expose controller
cd exposecontroller
./deploy.sh
cd ..

# now deploy the sample app
cd echoserver
./deploy.sh
cd ..