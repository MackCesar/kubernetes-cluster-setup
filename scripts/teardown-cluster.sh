#!/bin/bash

# Delete Kubernetes manifests
kubectl delete -f ../deployment/k8s-manifests/deployment.yaml
kubectl delete -f ../deployment/k8s-manifests/service.yaml
kubectl delete -f ../deployment/k8s-manifests/ingress.yaml

# Tear down monitoring
kubectl delete namespace monitoring

# Stop Minikube
minikube stop

echo "Kubernetes cluster teardown complete."
