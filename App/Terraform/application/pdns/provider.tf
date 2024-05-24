terraform {
    required_providers {
        powerdns = {
            source = "pan-net/powerdns"
            version = "1.5.0"
        }
    }
    cloud {
        organization = "soniiit-net"

        workspaces {
            name = "dns"
        }
    }
}

variable "pdns_server_url" {
    type = string
}

variable "pdns_api_key" {
    type = string
}

provider "powerdns" {

    server_url = var.pdns_server_url
    api_key    = var.pdns_api_key

    # (Optional) Skip TLS Verification
    insecure_https = true

}