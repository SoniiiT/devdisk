resource "proxmox_vm_qemu" "example-server" {
    
    # VM General Settings
    target_node = "pve"
    vmid = "0" # If 0 the next available VM ID will be used
    name = "Example-Server"
    tags = "ubuntu"
    desc = "Ubuntu Server 24.04 LTS"

    # VM Advanced General Settings
    onboot = true
    boot = "order=virtio0;net0"
    bootdisk = "virtio"
    scsihw = "virtio-scsi-pci"

    # VM OS Settings
    full_clone = true
    clone = "ubuntu-server-24-04"
    bios = "seabios"

    # VM System Settings
    agent = 1
    
    # VM CPU Settings
    cores = 2
    sockets = 1
    cpu = "kvm64"
    
    # VM Memory Settings
    memory = 4096

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    # VM Disk Settings Cloud-Init
    disks {
        ide {
            ide0 {
                cloudinit {
                    storage = "VM-Storage"
                }
            }
        }
        virtio {
            virtio0 {
                disk {
                    size               = 32
                    storage            = "VM-Storage"
                }
            }
        }
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=0.0.0.0/00,gw=0.0.0.1,ip6=dhcp"

    # (Optional) DNS Servers
    nameserver = "0.0.0.0"

    # (Optional) Default User
    ciuser = "user"

    # (Optional) Add your Public SSH KEY
    sshkeys = "ssh-rsa "
}