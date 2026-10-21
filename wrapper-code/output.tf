
output "vpc_id" {
  value       = module.network.vpc_id
  description = "ID of the VPC"
}

output "vpc_cidr_block" {
  value       = module.network.vpc_cidr_block
  description = "CIDR block of the VPC"
}

output "igw_id" {
  value       = module.network.igw_id
  description = "Internet Gateway ID"
}

output "nat_gateway_ids" {
  value       = module.network.nat_gateway_ids
  description = "List of NAT Gateway IDs"
}

output "subnet_ids" {
  value       = module.network.subnet_ids
  description = "Map of subnet names to subnet IDs"
}

output "route_table_ids" {
  description = "All route table IDs in VPC"
  value       = module.network.route_table_names
}


output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.network.public_subnet_ids
}

output "application_subnet_ids" {
  description = "List of application subnet IDs"
  value       = module.network.application_subnet_ids
}

output "database_subnet_ids" {
  description = "List of database subnet IDs"
  value       = module.network.database_subnet_ids
}


