#!/bin/bash

if ! which -s kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

kubectl apply -f externaldns-rbac.yaml
kubectl apply -f externaldns-deployment.yaml