# multiple-ingress-controllers

Run multiple nginx ingress controllers with one exposed to internet and other exposed to subset of ips only on AWS.

## Context
How to run multiple nginx ingress controllers in same k8s cluster on AWS? How to expose some apps to whole world 
and some services to some specific ip's only?

## Problem Statement

The problem is that given different apps (biz or infra) some must be exposed to whole internet while others to some 
specific audience only. And if you have just one ingress controller then either it will be public or private.

## Solution

The solution is to have multiple ingress controllers; e.g. one "internal ingress controller" for internal/private apps & another 
"external ingress controller" for public facing apps. The ELB in front of "internal ingress controller" will be locked 
down to specific ips only; whereas the ELB in front of "external ingress controller" will have wide open access.

### Components

The solution is composed of following components:

1. nginx-ingress-controller: ingress controller
2. [exposecontroller](https://github.com/fabric8io/exposecontroller): from fabric8 which creates ingress from service on the fly
3. [external-dns](https://github.com/kubernetes-incubator/external-dns): creates dns entry in Route53
4. echoserver: a sample app; just for the sake of testing

To limit access you need to add following to the `nginx-ingress-controller-service.yaml`

```
  loadBalancerSourceRanges:
    - 83.226.238.69/32
```
