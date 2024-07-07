#!/bin/bash

# Start Minikube with Docker driver
minikube start --driver=docker

# Apply Kubernetes manifests
kubectl apply -f ../deployment/k8s-manifests/deployment.yaml
kubectl apply -f ../deployment/k8s-manifests/service.yaml
kubectl apply -f ../deployment/k8s-manifests/ingress.yaml

# Set up monitoring
kubectl create namespace monitoring
kubectl apply -f ../monitoring/prometheus/prometheus.yaml
kubectl apply -f ../monitoring/grafana/grafana-dashboards.yaml
kubectl apply -f ../monitoring/alertmanager/alertmanager.yaml

echo "Kubernetes cluster setup complete."
