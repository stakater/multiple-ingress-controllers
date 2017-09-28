# default-backend

The default backend is the default service that nginx falls backs to if if cannot route a request successfully. The default backend needs to satisfy the following two requirements :

* serves a 404 page at /
* serves 200 on a /healthz

See more here https://github.com/kubernetes/contrib/tree/master/404-server

# Instructions

**Step 1:** Create deployment

```
kubectl apply -f default-backend-deployment.yaml 
```

**Step 2:** Create service

```
kubectl apply -f default-backend-service.yaml 
```


# References

Followed [this](https://daemonza.github.io/2017/02/13/kubernetes-nginx-ingress-controller/)

https://github.com/kubernetes/ingress/blob/master/examples/rbac/nginx/default-backend.yml

