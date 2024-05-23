# Proxmox Full-Clone
# ---
# Create a new VM from a clone

resource "proxmox_vm_qemu" "ubuntu-24-04" {
    
    # VM General Settings
    target_node = "pve-srv-01"
    vmid = "0"
    name = "Ubuntu-24-04"
    tags = "ubuntu"
    desc = "Description"

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
    cores = 1
    sockets = 1
    cpu = "kvm64"    
    
    # VM Memory Settings
    memory = 1024

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
    ipconfig0 = "ip=192.168.178.80/24,gw=192.168.178.1,ip6=dhcp"

    # (Optional) DNS Servers
    nameserver = "192.168.178.3"

    # (Optional) Default User
    ciuser = "soniiit"

    # (Optional) Add your SSH KEY)
    sshkeys = "ssh-rsa "
}