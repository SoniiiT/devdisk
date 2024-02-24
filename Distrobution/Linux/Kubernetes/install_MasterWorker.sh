#!/bin/bash

# Ask for the IP of K8s-VI
echo "Enter the IP of the K8s-VI (Virtual IP):"
read ip_virtual

# Update and Upgrade the System and adding Firewall Rules
sudo apt-get update && sudo apt-get upgrade -y
sudo ufw allow 6443/tcp
sudo ufw allow 6443/udp
sudo systemctl restart ufw

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
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh
sudo sh ./get-docker.sh

# Install Kubernetes
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt update
sudo apt install kubeadm kubelet kubectl kubernetes-cni -y

# Fixing Kubernetes
sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd

# Adding K8s-VI in the /etc/hosts file
echo "
$ip_virtual k8s-vi" >> /etc/hosts
