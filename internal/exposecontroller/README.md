# expose controller

exposecontroller exposes services as public URLs on kubernetes or openshift clusters via various strategies (Route, Ingress, NodePort, LoadBalancer) depending on the cluster and injects public URLs into ConfigMaps

## Instructions

First RBAC

```
kubectl apply -f expose-controller-rbac.yaml 
```

Then configmap; ensure the domain value is correct

```
kubectl apply -f expose-controller-config-map.yaml 
```

Then deployment

```
kubectl apply -f expose-controller-deployment.yaml 
```

## Questions

Q1: Why these two properties are missing in the configmap:

```
apiserver: kube-api.lab.ddzandbox.com:6443
watch-current-namespace: true
```

Q2: How to make sure that expose controller is working as expected?

