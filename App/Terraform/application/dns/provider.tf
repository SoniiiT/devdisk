terraform {
    required_providers {
        dns = {
            source = "hashicorp/dns"
            version = "3.4.1"
        }
    }
}

variable "tsig_key" {
    type = string
    sensitive = true
}

provider "dns" {
    update {
        server        = "0.0.0.0" # IP address of the DNS server
        key_name      = "tsig-key."
        key_algorithm = "hmac-sha256"
        key_secret    = var.tsig_key
    }
}
