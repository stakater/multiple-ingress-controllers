#!/usr/bin/env bash

if ! which -s kubectl; then
  echo "kubectl command not installed"
  exit 1
fi

kubectl apply -f k8s.yaml -n=external