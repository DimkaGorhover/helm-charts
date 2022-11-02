# Volcano HELM Chart

Unofficial Helm Chart for [Volcano](https://github.com/volcano-sh/volcano) - batch system built on Kubernetes.

## Dependencies

- [bitnami-common](https://artifacthub.io/packages/helm/bitnami/common)

## Quick Start

```shell
#!/usr/bin/env sh

kubectl create ns volcano-system

helm dependency build

helm template volcano \
    --namespace volcano-system \
    --values charts/volcano/values.yaml \
    charts/volcano/ | kubectl apply -f -
```
