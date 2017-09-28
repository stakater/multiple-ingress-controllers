#!/bin/bash

if ! which -s kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

kubectl delete -f expose-controller-rbac.yaml -n=tools
kubectl delete -f expose-controller-config-map.yaml -n=tools
kubectl delete -f expose-controller-deployment.yaml -n=tools
kubectl delete -f tools-namespace.yaml