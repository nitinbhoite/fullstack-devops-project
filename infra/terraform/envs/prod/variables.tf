variable "aws_region" {
  default = "us-east-1"
}

variable "project_name" {
  default = "fullstack-devops"
}

variable "environment" {
  default = "prod"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
}

variable "azs" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_app_subnet_cidrs" {
  default = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "private_db_subnet_cidrs" {
  default = ["10.0.21.0/24","10.0.22.0/24"]
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway"
  default     = true
}

variable "single_nat_gateway" {
  description = "Use only one NAT Gateway"
  default     = true
}