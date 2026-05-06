variable "zone_id" {
  default = "Z04501692SQQY9UXD55QE"
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

# variable "token" {}