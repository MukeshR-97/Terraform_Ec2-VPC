variable "aws_access_key" {
  description = "AWS access key"
}

variable "aws_secret_key" {
  description = "AWS secret key"
}

variable "key_name" {
  description = "Name for SSH key pair"
  default     = "poc1.pem"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}
