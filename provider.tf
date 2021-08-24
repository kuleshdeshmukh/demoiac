terraform {
  backend "oss" {
    bucket              = "jci-state-bucket"
    prefix              = "env:"
    key                 = "terraform.tfstate"
    acl                 = "private"
    region              = "ap-south-1"
    encrypt             = "false"
      }
}

provider "alicloud" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
  #profile = var.profile
}
