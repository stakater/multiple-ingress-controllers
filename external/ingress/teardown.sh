#!/bin/bash

if ! which kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

kubectl delete -f default-backend/default-backend-deployment.yaml -n=external
kubectl delete -f default-backend/default-backend-service.yaml -n=external
kubectl delete -f nginx-ingress-controller-config-map.yaml -n=external
kubectl delete -f nginx-ingress-controller-rbac.yaml -n=external
kubectl delete -f nginx-ingress-controller-service.yaml -n=external
kubectl delete -f nginx-ingress-controller-deployment.yaml -n=external