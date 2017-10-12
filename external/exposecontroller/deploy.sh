#!/bin/bash

if ! which kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

kubectl apply -f expose-controller-rbac.yaml
kubectl apply -f expose-controller-config-map.yaml -n=external
kubectl apply -f expose-controller-deployment.yaml -n=external