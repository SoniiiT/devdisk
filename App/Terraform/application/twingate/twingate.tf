# Remote Network
resource "twingate_remote_network" "net_example" {
    name = "net_example"
    location = "ON_PREMISE" # AWS, AZURE, GOOGLE_CLOUD, ON_PREMISE, OTHER
}

# Optional
# # Security Policy
# data "twingate_security_policy" "Default_Policy" {
#     name = "Default Policy" # Name of the security policy
# }

# Optional
# # Groups
# resource "twingate_group" "example_group" {
#     name = "example-group" # Name of the group the resource will be added to
# }

# Resources
# Host Servers
resource "twingate_resource" "example_resource" {
    name = "example-resource"
    address = "192.168.178.10" # IP address of the host server or FQDN
    alias = "proxmox.home.soniiit.net" # Optional when using IP address
    remote_network_id = twingate_remote_network.net_prod_01.id

    # security_policy_id = data.twingate_security_policy.Default_Policy.id # Optional when using Security Policy

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED" # ALLOW_ALL, DENY_ALL, RESTRICTED
            ports = ["22"] # When RESTRICTED, specify ports
        }
        udp = {
            policy = "DENY_ALL" # ALLOW_ALL, DENY_ALL, RESTRICTED
            # ports = ["53"] # When RESTRICTED, specify ports
        }
    }

    # Optional when using Groups
    # dynamic "access_group" {
    #     for_each = [twingate_group.admin.id]
    #     content {
    #         group_id = access_group.value
    #         security_policy_id = data.twingate_security_policy.Default_Policy.id
    #         usage_based_autolock_duration_days = 30
    #     }
    # }

    is_active = true
}