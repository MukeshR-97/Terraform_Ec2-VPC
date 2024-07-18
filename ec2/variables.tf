variable "subnet_id" {
  description = "Subnet ID for EC2 instance"
}

variable "key_name" {
  description = "SSH key pair name"
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "instance_ami" {
  description = "Value of the AMI ID"
  type        = string
}

variable "instance_type" {
  description = "Value of Instance Type"
  type        = string
}

variable "instance_name" {
  description = "Value of Instance Name"
  type        = string
}
