#!/bin/bash

if ! which -s kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

kubectl delete -f externaldns-rbac.yaml
kubectl delete -f externaldns-deployment.yaml