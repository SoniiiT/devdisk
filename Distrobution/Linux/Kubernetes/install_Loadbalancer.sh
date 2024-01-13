#!/bin/bash

# Ask for the number of LBs
echo "How many Loadbalancers are there?"
read num_lbs

# Loop over the number of LBs
for ((i=1; i<=num_lbs; i++)); do
  # Ask for the IP of the current LB
  echo "Enter the IP of LB $i:"
  read ip_lb
  # Store the IP in a variable with a dynamic name
  declare "IP_LB_$i=$ip_lb"
  # Initialize flag variable
  append_flag=0
done

for ((i=2; i<=num_lbs; i++)); do
  lb_list+=" $ip_lb$i"
done
a
# Ask for the number of masters
echo "How many Masters are there?"
read num_masters

# Loop over the number of masters
for ((i=1; i<=num_masters; i++)); do
    # Ask for the IP of the current master
    echo "Enter the IP of master $i:"
    read ip_master
    # Store the IP in a variable with a dynamic name
    declare "IP_MASTER_$i=$ip_master"
    # Append a server line for the current Master to the server lines string
    server_lines+="    server kmaster$i $ip_master:6443 check fall 3 rise 2\n"
done

# Ask for the Virtual IP
echo "Enter the Virtual IP:"
read ip_virtual

# Ask for the network interface
echo "Enter the network interface Name (ip a s (ex.: eht1)):"
read name_interface

# Installation of Keepalived and HAProxy
sudo apt-get update
sudo apt-get install -y keepalived haproxy

# Creating an check_apiserver script
echo "#!/bin/sh

errorExit() {
  echo "*** $@" 1%3E&2
  exit 1
}

curl --silent --max-time 2 --insecure https://localhost:6443/ -o /dev/null || errorExit "Error GET https://localhost:6443/"
if ip addr | grep -q $ip_virtual; then
  curl --silent --max-time 2 --insecure https://$ip_virtual:6443/ -o /dev/null || errorExit "Error GET https://$ip_virtual:6443/"
fi" >> /etc/keepalived/check_apiserver.sh

# Configuring Keepalived
# Check if there is only one load balancer
if [ -z "$ip_lb2" ]; then
  echo "vrrp_script check_apiserver {
  script "/etc/keepalived/check_apiserver.sh"
  interval 3
  timeout 10
  fall 5
  rise 2
  weight -2
}

vrrp_instance VI_1 {
    state BACKUP
    interface $name_interface
    virtual_router_id 1
    priority 100
    advert_int 5
    authentication {
        auth_type PASS
        auth_pass mysecret
    }
    virtual_ipaddress {
        $ip_virtual
    }
    track_script {
        check_apiserver
    }
}" >> /etc/keepalived/keepalived.conf
else
  echo -e "vrrp_script check_apiserver {
  script "/etc/keepalived/check_apiserver.sh"
  interval 3
  timeout 10
  fall 5
  rise 2
  weight -2
}

vrrp_instance VI_1 {
    state BACKUP
    interface $name_interface
    virtual_router_id 1
    priority 100
    advert_int 5
    authentication {
        auth_type PASS
        auth_pass mysecret
    }
    virtual_ipaddress {
        $ip_virtual
    }
    track_script {
        check_apiserver
    }
    unicast_src_ip $ip_lb1
    unicast_peer {
        "$lb_list\n"
}" >> /etc/keepalived/keepalived.conf
fi


# Restarting and enabling Keepalived
systemctl restart keepalived && systemctl enable keepalived

# Configuring HAProxy
cp /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.bak
echo -e "frontend kubernetes-frontend
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
  $server_lines" >> /etc/haproxy/haproxy.cfg

# Restarting and enabling HAProxy
systemctl restart haproxy && systemctl enable haproxy