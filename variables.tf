variable "access_key" {
  description = "Access Key Details for Ali Cloud"

}

variable "secret_key" {
  description = "Access Secret Key Details foe Ali Cloud"

}

variable "region" {
  description = "Region details in which VM to be created"
  default     = "ap-south-1"
}


variable "zone_id" {
  description = "Availability zone details for Region"
  default     = "ap-south-1a"
}

variable "vpc_name" {
  description = "hostname to be set for a vm"
  default     = "JCI-Mumbai"
}

variable "subnet" {
  description = "vSwitch to which VM is connected"
  default     = "vSwitch-Mumbai-ZoneA"
}


variable "image_id" {
  description = "ID of OS Template/Image"
  default     = "ubuntu_16_0402_32_20G_alibase_20180409.vhd"
}

variable "vmname" {
  description = "Name to be set for VM on Ali Console"
  default     = "kdtest1"
}

variable "vmsize" {
  description = "VM size details"
  default     = "ecs.xn4.small" #"ecs.t5-lc1m1.small" 
}

variable "keyname" {
  description = "keypair details for VM connection"
  default     = "alikeypair"
}
