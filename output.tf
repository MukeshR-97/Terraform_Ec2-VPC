output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.ec2.ec2_public_ip
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "ID of the created public subnet"
  value       = module.vpc.public_subnets[0]
}

output "private_subnet_id" {
  description = "ID of the created private subnet"
  value       = module.vpc.private_subnets[0]
}
