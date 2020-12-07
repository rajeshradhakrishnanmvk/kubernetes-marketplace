#!/bin/bash

kubectl create namespace dapr-system

helm repo add dapr https://dapr.github.io/helm-charts/

helm repo update

helm install dapr dapr/dapr --namespace dapr-system