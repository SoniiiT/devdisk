resource "dns_a_record_set" "example_network" {
    zone = "example.internal."
    name = "example"
    addresses = [ "0.0.0.0" ]
    ttl = 3600
}