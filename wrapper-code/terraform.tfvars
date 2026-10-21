##############################
# VPC
##############################
region               = "us-east-1"
vpc_name             = "1111_VPC_test_S1_1"
vpc_cidr             = "10.104.0.0/22"
instance_tenancy     = "default"
enable_dns_support   = true
enable_dns_hostnames = true

##############################
# Internet Gateway
##############################
internet_gateway_name = "1111_IGW_test_S1_1"

##############################
# Virtual Gateway
##############################
create_vgw = true
vgw_name   = "1111_VGW_test_S1_1"
##############################
# Subnets (12 Public)
##############################
subnet_names = [
  "1111_SUB1_test_S1_1a",
  "1111_SUB1_test_S1_1b",
  "1111_SUB2_test_S1_1a",
  "1111_SUB2_test_S1_1b",
  "1111_SUB3_test_S1_1a",
  "1111_SUB3_test_S1_1b",
  "1111_SUB4_test_S1_1a",
  "1111_SUB4_test_S1_1b",
  "1111_SUB5_test_S1_1a",
  "1111_SUB5_test_S1_1b",
  "1111_SUB6_test_S1_1a",
  "1111_SUB6_test_S1_1b"
]

subnet_cidrs = [
  "10.104.2.0/27",
  "10.104.2.32/27",
  "10.104.2.64/27",
  "10.104.2.96/27",
  "10.104.2.128/27",
  "10.104.2.160/27",
  "10.104.0.0/24",
  "10.104.1.0/24",
  "10.104.2.192/27",
  "10.104.2.224/27",
  "10.104.3.0/27",
  "10.104.3.32/27"
]

subnet_azs = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1a",
  "us-east-1b",
  "us-east-1a",
  "us-east-1b",
  "us-east-1a",
  "us-east-1b",
  "us-east-1a",
  "us-east-1b",
  "us-east-1a",
  "us-east-1b"
]

##############################
# Route Tables (6)
##############################
route_table_names = [
  "1111_RTB1-test_S1",
  "1111_RTB2-test_S1",
  "1111_RTB3-test_S1",
  "1111_RTB4-test_S1",
  "1111_RTB5-test_S1",
  "1111_RTB6-test_S1"
]

route_table_subnet_map = {
  "1111_RTB1-test_S1" = [0, 1]
  "1111_RTB2-test_S1" = [2, 3]
  "1111_RTB3-test_S1" = [4, 5]
  "1111_RTB4-test_S1" = [6, 7]
  "1111_RTB5-test_S1" = [8, 9]
  "1111_RTB6-test_S1" = [10, 11]
}

igw_rt = "1111_RTB1-test_S1"
destination_cidr_block = "0.0.0.0/0"

##############################
# NACL Configuration (Allow All)
##############################
create_nacl = true

nacl_names = [
  "1111_NACL1_test_S1_1",
  "1111_NACL2_test_S1_1",
  "1111_NACL3_test_S1_1",
  "1111_NACL4_test_S1_1",
  "1111_NACL5_test_S1_1",
  "1111_NACL6_test_S1_1"
]

nacl_subnet_map = {
  "1111_NACL1_test_S1_1" = [0, 1]
  "1111_NACL2_test_S1_1" = [2, 3]
  "1111_NACL3_test_S1_1" = [4, 5]
  "1111_NACL4_test_S1_1" = [6, 7]
  "1111_NACL5_test_S1_1" = [8, 9]
  "1111_NACL6_test_S1_1" = [10, 11]
}

nacl_allow_all = true

##############################
# NAT Gateway (NOT REQUIRED)
##############################
create_nat_gateway = false
nat_gateway_count  = 0

##############################
# Flow Logs
##############################
flow_logs_enabled = false

##############################
# Tags & Metadata
##############################
tags = {
  Environment   = "test"
  Project       = "test"
  CC            = "1111_test"
  Customer-Code = "1111"
  CC-Project    = "1111_test"
}
