#!/bin/bash

kubectl create -f k8s/pg.yaml
kubectl create -f k8s/nginx.yaml
kubectl create -f k8s/web.yaml
