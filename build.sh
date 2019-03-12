#!/bin/bash

set -x
set -e

cd /tmp
curl -L 'https://dl.k8s.io/v1.13.4/kubernetes-server-linux-amd64.tar.gz' > kubernetes.tar.gz
tar xvzf kubernetes.tar.gz
install -v -o root -g root -m 0755 kubernetes/server/bin/kube-apiserver /usr/bin/kube-apiserver
install -v -o root -g root -m 0755 kubernetes/server/bin/kube-controller-manager /usr/bin/kube-controller-manager
install -v -o root -g root -m 0755 kubernetes/server/bin/kube-scheduler /usr/bin/kube-scheduler
install -v -o root -g root -m 0755 kubernetes/server/bin/kubelet /usr/bin/kubelet
install -v -o root -g root -m 0755 kubernetes/server/bin/kubectl /usr/bin/kubectl
install -v -o root -g root -m 0755 kubernetes/server/bin/kubeadm /usr/bin/kubeadm
rm -rf kubernetes*
