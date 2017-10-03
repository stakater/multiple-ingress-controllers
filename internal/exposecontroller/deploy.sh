#!/bin/bash

if ! which -s kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

kubectl apply -f expose-controller-rbac.yaml
kubectl apply -f expose-controller-config-map.yaml -n=internal
kubectl apply -f expose-controller-deployment.yaml -n=internal