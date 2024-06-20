output "vpc_id" {
  value = aws_vpc.kkVPC.id
}

# output "public_subnets" {
#   description = "Will be used by Web Server Module to set subnet_ids"
#   value = [
#     aws_subnet.kkPublicSubnet1,
#     aws_subnet.kkPublicSubnet2
#   ]
# }

output "private_subnets" {
  description = "Will be used by RDS Module to set subnet_ids"
  value = [
    aws_subnet.kkPrivateSubnet1,
    aws_subnet.kkPrivateSubnet2
  ]
}