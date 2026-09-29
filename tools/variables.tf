variable "zone_id" {
  default = "Z0770137ACL36Z64Q59N"
}

variable "ami" {
  default = "ami-0220d79f3f480ecf5"
}

variable "tools" {
  default = {
    vault = {
      instance_type = "t3.small"
    }
  }
}

 variable "token" {}