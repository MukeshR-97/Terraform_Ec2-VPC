output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnets" {
  description = "IDs of the created public subnets"
  value       = [aws_subnet.public_subnet.id]
}

output "private_subnets" {
  description = "IDs of the created private subnets"
  value       = [aws_subnet.private_subnet.id]
}
