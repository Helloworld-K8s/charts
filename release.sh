#!/usr/bin/env bash
version=0.1.7

helm package --version $version helloworld-simple
helm package --version $version helloworld-db
helm package --version $version helloworld-ingress
helm package --version $version api-gateway

helm repo index . --url https://helloworld-k8s.github.io/charts/

git add .

git commit -am commit

git push
