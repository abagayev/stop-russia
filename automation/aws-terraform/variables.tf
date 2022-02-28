variable "aws_region" {
  type        = string
  description = "Region for AWS Resources"
  default     = "us-east-1"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostnames in VPC"
  default     = true
}

variable "vpc_cidr_block" {
  type        = string
  description = "Base CIDR Block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_subnet1_cidr_block" {
  type        = string
  description = "CIDR Block for Subnet 1 in VPC"
  default     = "10.0.0.0/24"
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Map a public IP address for Subnet instances"
  default     = true
}

variable "instance_type" {
  type        = string
  description = "Type for EC2 Instnace"
  default     = "t2.micro"
}

variable "public_key" {
  description = "SSH key for ec2-user in case if login required"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCS6B2NXeVugF+Jz1z5moeB+QcYiwARor+IrWcX1CY9kJEECMebHjpzYBo44HpYHkcLjApdBFOnNOD0dvuVIGnD0nwXZqA8Q6zM7z4lpDZ1yHBkIEj2bVM/TyICsGSCkop2FEo3kTO4h4Lg21c2gDJgvtM4+04Ls7ur1lysQMwpHHpTMKrn8au6HU5u++/37Vw2AgAubm8n8/l+DxPzeoNTKM/+dk+M8MozghK7f5o+MHf3dtSwWjQbUqyHwelCg7lbYdezfRKWczrr3jOGJRsQe0Ky08AINwio8Y5U6fxYxak1Xnbm0xEzJ4N9AbQ1c/iFSX/2GcXSe2QJvOjmaLtf login"
}

variable "instance_count" {
  type        = number
  default     = 1
  description = "How many instance to run"
}