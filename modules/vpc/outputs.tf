output "vpc_name" {
  description = "Display VPC ID"
  value       = aws_vpc.sample_vpc.id
}

output "public_subnet_name" {
  description = "Display Public Subnet"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet_name" {
  description = "Display Private Subnet"
  value       = aws_subnet.private_subnet.id
}