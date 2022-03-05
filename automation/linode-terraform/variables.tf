variable "token" {}
variable "authorized_keys" {}
variable "root_pass" {
  default = "fuckU0putin"
}

variable "region" {
  default = "ap-northeast"
}

variable "group" {
  default = "stop-russia"
}

variable "label" {
  default = "stop-russia-0"
}

variable "image" {
  default = "linode/ubuntu20.04"
}

variable "type" {
  default = "g6-nanode-1"
}
