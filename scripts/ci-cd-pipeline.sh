#!/bin/bash

# Example CI/CD pipeline script
echo "Starting CI/CD pipeline..."

# Run tests
echo "Running tests..."
# Add your test commands here

# Deploy to Kubernetes
echo "Deploying to Kubernetes..."
kubectl apply -f ../deployment/k8s-manifests/deployment.yaml
kubectl apply -f ../deployment/k8s-manifests/service.yaml
kubectl apply -f ../deployment/k8s-manifests/ingress.yaml

echo "CI/CD pipeline complete."
