# Create a VPC
resource "aws_vpc" "kkVPC" {
  instance_tenancy = "default"
  cidr_block       = var.vpc_cidr
  tags             = var.vpc_tags
}

# resource "aws_internet_gateway" "kkIGW" {
#   vpc_id  = aws_vpc.kkVPC.id
#   tags    = var.igw_tags
# }

# resource "aws_eip" "kkNatGatewayEIP1" {
#   tags = var.eip_tags
# }

# resource "aws_nat_gateway" "kkNatGateway1" {
#   allocation_id = aws_eip.kkNatGatewayEIP1.id
#   subnet_id     = aws_subnet.kkPublicSubnet1.id
#   tags = var.natGateway1_tags
# }

# resource "aws_subnet" "kkPublicSubnet1" {
#   vpc_id            = aws_vpc.kkVPC.id
#   cidr_block        = var.public_subnet_cidrs[0]
#   availability_zone = var.availability_zones[0]
#   tags = var.publicSubnet1_tags
# }

# resource "aws_eip" "kkNatGatewayEIP2" {
#  tags = var.natGatewayEIP2_tags
# }

# resource "aws_nat_gateway" "kkNatGateway2" {
#   allocation_id = aws_eip.kkNatGatewayEIP2.id
#   subnet_id     = aws_subnet.kkPublicSubnet1.id
#   tags = var.natGateway2_tags
# }

# resource "aws_subnet" "kkPublicSubnet2" {
#   vpc_id            = aws_vpc.kkVPC.id
#   cidr_block        = var.public_subnet_cidrs[1]
#   availability_zone = var.availability_zones[1]
#   tags = var.publicSubnet2_tags
# }

resource "aws_subnet" "kkPrivateSubnet1" {
  vpc_id            = aws_vpc.kkVPC.id
  cidr_block        = var.private_subnet_cidrs[0]
  availability_zone = var.availability_zones[0]
  tags = var.privateSubnet1_tags
}

resource "aws_subnet" "kkPrivateSubnet2" {
  vpc_id            = aws_vpc.kkVPC.id
  cidr_block        = var.private_subnet_cidrs[1]
  availability_zone = var.availability_zones[1]
  tags = var.privateSubnet2_tags
}

# resource "aws_route_table" "kkPublicRT" {
#   vpc_id = aws_vpc.kkVPC.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.kkIGW.id
#   }
#  tags =  var.publicRT_tags
# }

# resource "aws_route_table" "kkPrivateRT1" {
#   vpc_id = aws_vpc.kkVPC.id
#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.kkNatGateway1.id
#   }
#   tags = var.privateRT_tags
# }

# resource "aws_route_table_association" "kkPublicRTassociation1" {
#   subnet_id      = aws_subnet.kkPublicSubnet1.id
#   route_table_id = aws_route_table.kkPublicRT.id
# }

# resource "aws_route_table_association" "kkPublicRTassociation2" {
#   subnet_id      = aws_subnet.kkPublicSubnet2.id
#   route_table_id = aws_route_table.kkPublicRT.id
# }