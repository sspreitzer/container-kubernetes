#!/bin/bash

set -x
set -e

yum install -y kubeadm-${VERSION} kubelet-${VERSION} kubectl-${VERSION}
rm -rf /var/cache/yum

cd /tmp
curl -L "https://dl.k8s.io/v${VERSION}/kubernetes-server-linux-amd64.tar.gz" > kubernetes.tar.gz
tar xvzf kubernetes.tar.gz
install -v -o root -g root -m 0755 kubernetes/server/bin/kube-apiserver /usr/bin/kube-apiserver
install -v -o root -g root -m 0755 kubernetes/server/bin/kube-controller-manager /usr/bin/kube-controller-manager
install -v -o root -g root -m 0755 kubernetes/server/bin/kube-scheduler /usr/bin/kube-scheduler
install -v -o root -g root -m 0755 kubernetes/server/bin/kube-proxy /usr/bin/kube-proxy
rm -rf kubernetes*
