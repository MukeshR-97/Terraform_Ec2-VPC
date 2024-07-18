variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name for VPC"
  default     = "terraform-vpc"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  default     = "10.0.1.0/24"
}

variable "public_subnet_name" {
  description = "Name for public subnet"
  default     = "terraform-public-subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  default     = "10.0.2.0/24"
}

variable "private_subnet_name" {
  description = "Name for private subnet"
  default     = "terraform-private-subnet"
}

variable "igw_name" {
  description = "Name for Internet Gateway"
  default     = "terraform-igw"
}

variable "route_table_name" {
  description = "Name for route table"
  default     = "terraform-public-route"
}