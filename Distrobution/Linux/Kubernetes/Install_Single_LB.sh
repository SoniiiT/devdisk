#!/bin/bash

echo "What is the IP Address from the LoadBalancer?"
read IP_LB

echo "What is the IP Address from the Virtual IP?"
read IP_Virt

echo "What is the IP Address from the 1. Master Node?"
read IP_M1

echo "What is the IP Address from the 2. Master Node?"
read IP_M2

echo "Please enter the Ethernet Card Name: (ip a s)"
read Name_Eth

sudo apt-get update
sudo apt-get install nano keepalived haproxy

"#!/bin/sh

errorExit() {
  echo "*** $@" 1%3E&2
  exit 1
}

curl --silent --max-time 2 --insecure https://localhost:6443/ -o /dev/null || errorExit "Error GET https://localhost:6443/"
if ip addr | grep -q $IP_LB; then
  curl --silent --max-time 2 --insecure https://$IP_LB:6443/ -o /dev/null || errorExit "Error GET https://$IP_LB:6443/"
fi" >> /etc/keepalived/check_apiserver.sh

rm /etc/keepalived/keepalived.conf

"vrrp_script check_apiserver {
  script "/etc/keepalived/check_apiserver.sh"
  interval 3
  timeout 10
  fall 5
  rise 2
  weight -2
}

vrrp_instance VI_1 {
    state BACKUP
    interface $Name_Eth
    virtual_router_id 1
    priority 100
    advert_int 5
    authentication {
        auth_type PASS
        auth_pass mysecret
    }
    virtual_ipaddress {
        $IP_Virt <- Virtuelle IP
    }
    track_script {
        check_apiserver
    }
}" >> /etc/keepalived/keepalived.conf

systemctl restart keepalived && systemctl enable keepalived

"frontend kubernetes-frontend
  bind *:6443
  mode tcp
  option tcplog
  default_backend kubernetes-backend

backend kubernetes-backend
  option httpchk GET /healthz
  http-check expect status 200
  mode tcp
  option ssl-hello-chk
  balance roundrobin
    server kmaster1 $IP_M1:6443 check fall 3 rise 2
    server kmaster2 $IP_M2:6443 check fall 3 rise 2" >> /etc/haproxy/haproxy.cfg

systemctl restart haproxy && systemctl enable haproxy