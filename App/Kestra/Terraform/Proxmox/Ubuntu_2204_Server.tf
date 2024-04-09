# Proxmox Full-Clone
# ---
# Create a new VM from a clone

resource "proxmox_vm_qemu" "$VM_NAME" {
    
    # VM General Settings
    target_node = "pve-srv-01"
    #vmid = "100"
    name = "$VM_NAME"
    #desc = "Description"

    # VM Advanced General Settings
    onboot = true 

    # VM OS Settings
    clone = "ubuntu-server-22-04"

    # VM System Settings
    agent = 1
    
    # VM CPU Settings
    cores = 2
    sockets = 1
    cpu = "host"    
    
    # VM Memory Settings
    memory = 2048

    # VM Network Settings
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }

    # VM Cloud-Init Settings
    os_type = "cloud-init"

    # (Optional) IP Address and Gateway
    ipconfig0 = "ip=$IP_ADDRESS/24,gw=192.168.178.1"
    
    # (Optional) Default User
    ciuser = "soniiit"
    
    # (Optional) Add your SSH KEY
    sshkeys = <<EOF
    #YOUR-PUBLIC-SSH-KEY
    EOF
}