#!/bin/bash

if ! which -s kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

kubectl apply -f default-backend/default-backend-deployment.yaml -n=internal
kubectl apply -f default-backend/default-backend-service.yaml -n=internal
kubectl apply -f nginx-ingress-controller-config-map.yaml -n=internal
kubectl apply -f nginx-ingress-controller-rbac.yaml -n=internal
kubectl apply -f nginx-ingress-controller-service.yaml -n=internal
kubectl apply -f nginx-ingress-controller-deployment.yaml -n=internal
