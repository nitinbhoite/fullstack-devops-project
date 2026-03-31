output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "VPC CIDR"
  value       = aws_vpc.main.cidr_block
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "private_app_subnet_ids" {
  description = "Private app subnet IDs"
  value       = aws_subnet.private_app[*].id
}

output "private_db_subnet_ids" {
  description = "Private DB subnet IDs"
  value       = aws_subnet.private_db[*].id
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.igw.id
}

output "nat_gateway_id" {
  description = "NAT Gateway ID"
  value       = try(aws_nat_gateway.nat[0].id, null)
}

output "db_subnet_group_name" {
  description = "RDS DB subnet group name"
  value       = aws_db_subnet_group.db_subnet_group.name
}

output "admin_sg_id" {
  description = "Admin/Jenkins security group ID"
  value       = aws_security_group.admin_sg.id
}

output "app_sg_id" {
  description = "Application/EKS security group ID"
  value       = aws_security_group.app_sg.id
}

output "db_sg_id" {
  description = "Database security group ID"
  value       = aws_security_group.db_sg.id
}