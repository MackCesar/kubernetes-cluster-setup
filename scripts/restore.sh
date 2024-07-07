#!/bin/bash

# Restore etcd data
ETCDCTL_API=3 etcdctl snapshot restore snapshot.db --endpoints=https://127.0.0.1:2379 --cacert=/etc/kubernetes/pki/etcd/ca.crt --cert=/etc/kubernetes/pki/etcd/server.crt --key=/etc/kubernetes/pki/etcd/server.key

echo "Etcd restore complete."
