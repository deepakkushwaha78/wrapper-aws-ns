module "network" {
  source   = "git::https://github.com/ot-client/newgen_terraform.git//modules/terraform-aws-network-skeleton?ref=main"
  #version              = "1.0.6"
  vpc_cidr             = var.vpc_cidr
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  # Resource-specific names passed explicitly so each resource gets its own Name tag
  vpc_name              = var.vpc_name
  internet_gateway_name = var.internet_gateway_name

  # Subnets
  subnet_names = var.subnet_names
  subnet_cidrs = var.subnet_cidrs
  subnet_azs   = var.subnet_azs

  # NAT Gateway
  create_nat_gateway = var.create_nat_gateway
  nat_gateway_count  = var.nat_gateway_count

  #naming convention
  tags             = var.tags

  # NACL
  create_nacl            = var.create_nacl
  nacl_names             = var.nacl_names
  nacl_rules             = var.nacl_rules
  route_table_subnet_map = var.route_table_subnet_map
  nacl_subnet_map        = var.nacl_subnet_map

  # Route Table
  route_table_names = var.route_table_names
  
  igw_rt       = var.igw_rt
  destination_cidr_block = var.destination_cidr_block

  # Virtual  Gateway
  vgw_name   = var.vgw_name
  create_vgw = var.create_vgw

  # Flow Logs
  flow_logs_enabled      = var.flow_logs_enabled
  flow_logs_traffic_type = var.flow_logs_traffic_type
  flow_logs_file_format  = var.flow_logs_file_format

  # Route53
  create_route53 = var.create_route53
  route53_zone   = var.route53_zone


  ec2_endpoint_type        = var.ec2_endpoint_type
  ec2_endpoint_subnet_type = var.ec2_endpoint_subnet_type
  ec2_private_dns_enabled  = var.ec2_private_dns_enabled

  enable_nlb_endpoint     = var.enable_nlb_endpoint
  service_name_nlb        = var.service_name_nlb
  nlb_endpoint_type       = var.nlb_endpoint_type
  nlb_private_dns_enabled = var.nlb_private_dns_enabled

  # ALB
  create_alb = var.create_alb
  internal   = var.internal
  enable_deletion_protection = var.enable_deletion_protection
  alb_certificate_arn = var.alb_certificate_arn

  alb_listeners = var.alb_listeners


  # NLB
  create_nlb  = var.create_nlb
  is_internal = var.is_internal

  # Key Pair
  create_key_pair       = var.create_key_pair
  create_private_key    = var.create_private_key
  key_pair_name         = var.key_pair_name
  private_key_algorithm = var.private_key_algorithm
  private_key_rsa_bits  = var.private_key_rsa_bits
  public_key_path       = var.public_key_path
  key_output_dir        = var.key_output_dir
}
