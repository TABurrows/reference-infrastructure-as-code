variable "disk_size" {
    type = number
    default = 40
    description = "The size of the Disk for the VM"
}

variable "image_name" {
    type = string
    default = "debian-cloud/debian-11"
    # "ubuntu-os-cloud/ubuntu-minimal-2004-lts"
    description = "The Image to be used to build the VM"
}

variable "network_name" {
    type = string
    default = "default"
    description = "The Name of the Network in the Project where the VM will be created"
}

variable "machine_type" {
    type = string
    default = "e2-small"
    description = "The Type of Machine that will be used to run the VM Image"
}

variable "instance_name" {
    type = string
    default = "server-instance"
}