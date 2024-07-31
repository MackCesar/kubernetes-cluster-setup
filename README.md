# Kubernetes Cluster Setup

This repository contains scripts and manifests for setting up a multi-node Kubernetes cluster using kubeadm.

## Features

- Multi-node Kubernetes cluster setup
- Network configuration with Calico
- HAProxy for high availability
- Automated scripts for setup
- Monitoring with Prometheus and Grafana

## Prerequisites

- Windows VM using Parallels on macOS
- Git installed on your Windows VM
- Docker, Minikube, and kubectl installed on your Windows VM

## Usage

1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/kubernetes-cluster-setup.git
   cd kubernetes-cluster-setup```


2. Set up the cluster: 
```./scripts/setup-cluster.sh```

3. Tear down the cluster:
```./scripts/teardown-cluster.sh```

4. Monitor the cluster with Prometheus and Grafana
`kubectl apply -f monitoring/prometheus/prometheus.yaml`
`kubectl apply -f monitoring/grafana/grafana-dashboards.yaml`

## License
MIT License
