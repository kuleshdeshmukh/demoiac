data "alicloud_vpcs" "vpcs_ds" {
  status   = "Available"
  vpc_name = var.vpc_name
}

data "alicloud_vswitches" "subnets" {
  vswitch_name = var.subnet
}


data "alicloud_security_groups" "primary_sec_groups_ds" {
  name_regex = "sg-lin"
}


resource "alicloud_instance" "instance" {
  availability_zone = var.zone_id
  vswitch_id        = data.alicloud_vswitches.subnets.vswitches.0.id
  security_groups   = data.alicloud_security_groups.primary_sec_groups_ds.ids
  image_id          = var.image_id
  instance_type     = var.vmsize
  instance_name     = var.vmname
  host_name         = var.vmname
  key_name          = var.keyname

}