#!/usr/bin/env bash

if ! which kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

kubectl delete -f k8s.yaml -n=internal
