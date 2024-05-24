# Home Network
resource "powerdns_record" "drucker-iris" {
    zone    = "home.soniiit.net."
    name    = "drucker-iris.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.202"]
}

resource "powerdns_record" "drucker-wz" {
    zone    = "home.soniiit.net."
    name    = "drucker-wz.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.201"]
}

# Hosts
resource "powerdns_record" "pve-srv-01" {
    zone    = "home.soniiit.net."
    name    = "pve-srv-01.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.10"]
}

resource "powerdns_record" "proxmox" {
    zone    = "home.soniiit.net."
    name    = "proxmox.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.10"]
}

# Docker Hosts
resource "powerdns_record" "docker-srv-mgm" {
    zone    = "home.soniiit.net."
    name    = "docker-srv-mgm.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.20"]
}

resource "powerdns_record" "docker-srv-01" {
    zone    = "home.soniiit.net."
    name    = "docker-srv-01.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.21"]
}

resource "powerdns_record" "wild-docker-srv-01" {
    zone    = "home.soniiit.net."
    name    = "*.docker-srv-01.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.21"]
}

resource "powerdns_record" "docker-srv-02" {
    zone    = "home.soniiit.net."
    name    = "docker-srv-02.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.22"]
}

resource "powerdns_record" "wild-docker-srv-02" {
    zone    = "home.soniiit.net."
    name    = "*.docker-srv-02.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.22"]
}

# Application Hosts
resource "powerdns_record" "app-srv-01" {
    zone    = "home.soniiit.net."
    name    = "app-srv-01.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.30"]
}

resource "powerdns_record" "gameserver" {
    zone    = "home.soniiit.net."
    name    = "gameserver.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.30"]
}

resource "powerdns_record" "app-srv-03" {
    zone    = "home.soniiit.net."
    name    = "app-srv-03.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.4"]
}

resource "powerdns_record" "lancache" {
    zone    = "home.soniiit.net."
    name    = "lancache.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.4"]
}

resource "powerdns_record" "app-srv-04" {
    zone    = "home.soniiit.net."
    name    = "app-srv-04.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.31"]
}

# Docker Containers docker-srv-mgm
resource "powerdns_record" "dockge" {
    zone    = "home.soniiit.net."
    name    = "dockge.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.20"]
}

resource "powerdns_record" "uptime" {
    zone    = "home.soniiit.net."
    name    = "uptime.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.20"]
}

resource "powerdns_record" "portainer" {
    zone    = "home.soniiit.net."
    name    = "portainer.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.20"]
}

resource "powerdns_record" "traefik-mgm" {
    zone    = "home.soniiit.net."
    name    = "traefik-mgm.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.20"]
}

# Docker Containers docker-srv-01
resource "powerdns_record" "authentik" {
    zone    = "home.soniiit.net."
    name    = "authentik.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.21"]
}

resource "powerdns_record" "homeassistant" {
    zone    = "home.soniiit.net."
    name    = "homeassistant.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.21"]
}

resource "powerdns_record" "homepage" {
    zone    = "home.soniiit.net."
    name    = "homepage.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.21"]
}

resource "powerdns_record" "kestra" {
    zone    = "home.soniiit.net."
    name    = "kestra.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.21"]
}

resource "powerdns_record" "traefik-01" {
    zone    = "home.soniiit.net."
    name    = "traefik-01.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.21"]
}

# Docker Containers docker-srv-02
resource "powerdns_record" "traefik-02" {
    zone    = "home.soniiit.net."
    name    = "traefik-02.home.soniiit.net."
    type    = "A"
    ttl     = 3600
    records = ["192.168.178.22"]
}
