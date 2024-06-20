variable "vpc_tags" {
  description = "Tags for VPC"
  type        = map(any)
}

# variable "igw_tags" {
#   description = "Tags for IGW"
#   type        = map(any)
# }

# variable "eip_tags" {
#   description = "Tags for EIP"
#   type        = map(any)
# }

# variable "natGateway1_tags" {
#   description = "Tags for NAT Gateway 1"
#   type        = map(any)
# }

# variable "publicSubnet1_tags" {
#   description = "Tags for Public Subnet 1"
#   type        = map(any)
# }

# variable "natGatewayEIP2_tags" {
#   description = "Tags for NAT Gateway EIP 2"
#   type        = map(any)
# }

# variable "natGateway2_tags" {
#   description = "Tags for NAT Gateway 2"
#   type        = map(any)
# }

# variable "publicSubnet2_tags" {
#   description = "Tags for Public Subnet 2"
#   type        = map(any)
# }

variable "privateSubnet1_tags" {
  description = "Tags for Private Subnet 1"
  type        = map(any)
}

variable "privateSubnet2_tags" {
  description = "Tags for Private Subnet 2"
  type        = map(any)
}

# variable "publicRT_tags" {
#   description = "Tags for Public Route Table"
#   type        = map(any)
# }

# variable "privateRT_tags" {
#   description = "Tags for Public Route Table"
#   type        = map(any)
# }