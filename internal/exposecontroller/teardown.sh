#!/bin/bash

if ! which kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

kubectl delete -f expose-controller-rbac.yaml
kubectl delete -f expose-controller-config-map.yaml -n=internal
kubectl delete -f expose-controller-deployment.yaml -n=internal