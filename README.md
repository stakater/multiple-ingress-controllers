# multiple-ingress-controllers

Run multiple nginx ingress controllers with one exposed to internet and other exposed to subset of ips only.

## Context



## Problem Statement

The problem is that given different apps (biz or infra) some must be exposed to whole internet while others to some 
specific audience only. And if you have just one ingress controller then either it will be public or private.

## Solution

The solution is to have multiple ingress controllers; e.g. one "internal ingress controller" for tools & another 
"external ingress controller" for public facing apps. The ELB in front of "internal ingress controller" will be locked 
down to specific ips only; whereas the ELB in front of "external ingress controller" will have wide open access.

