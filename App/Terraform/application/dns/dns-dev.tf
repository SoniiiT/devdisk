# Windows Hosts
resource "powerdns_record" "hyper-v-srv-01" {
    zone    = "dev.soniiit.net."
    name    = "hyper-v-srv-01.dev.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.60"]
}

resource "powerdns_record" "hyper-v-srv-02" {
    zone    = "dev.soniiit.net."
    name    = "hyper-v-srv-02.dev.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.61"]
}

# Kubernetes Hosts
resource "powerdns_record" "k8s-soniiit-lb01" {
    zone    = "dev.soniiit.net."
    name    = "k8s-soniiit-lb01.dev.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.40"]
}

resource "powerdns_record" "k8s-soniiit-lb02" {
    zone    = "dev.soniiit.net."
    name    = "k8s-soniiit-lb02.dev.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.41"]
}

resource "powerdns_record" "k8s-soniiit-cp01" {
    zone    = "dev.soniiit.net."
    name    = "k8s-soniiit-cp01.dev.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.42"]
}

resource "powerdns_record" "k8s-soniiit-cp02" {
    zone    = "dev.soniiit.net."
    name    = "k8s-soniiit-cp02.dev.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.43"]
}

resource "powerdns_record" "k8s-soniiit-w01" {
    zone    = "dev.soniiit.net."
    name    = "k8s-soniiit-w01.dev.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.44"]
}

resource "powerdns_record" "k8s-soniiit-w02" {
    zone    = "dev.soniiit.net."
    name    = "k8s-soniiit-w02.dev.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.45"]
}

resource "powerdns_record" "k8s-soniiit-nfs01" {
    zone    = "dev.soniiit.net."
    name    = "k8s-soniiit-nfs01.dev.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.46"]
}

resource "powerdns_record" "k8s-soniiit-nfs02" {
    zone    = "dev.soniiit.net."
    name    = "k8s-soniiit-nfs02.dev.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.47"]
}

resource "powerdns_record" "k8s-soniiit-vip" {
    zone    = "dev.soniiit.net."
    name    = "k8s-soniiit-nfs02.dev.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.50"]
}