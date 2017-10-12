#!/bin/bash

if ! which kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

kubectl apply -f externaldns-rbac.yaml
kubectl apply -f externaldns-deployment.yaml