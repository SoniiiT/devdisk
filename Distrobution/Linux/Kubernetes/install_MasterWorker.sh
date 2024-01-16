#!/bin/bash

# Deactivate swap
swapoff -a; sed -i '/swap/d' /etc/fstab

# Install Kernel Modules
echo "overlay
br_netfilter" >> /etc/modules-load.d/containerd.conf

modprobe overlay
modprobe br_netfilter

echo "net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1" >> /etc/sysctl.d/kubernetes.conf

sysctl --system

# Install Docker
sudo apt install docker.io -y

# Install Kubernetes
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt update
sudo apt install kubeadm kubelet kubectl kubernetes-cni -y