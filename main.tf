terraform {
  required_version = "~> 1.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "kkVPC" {
  source = "./modules/vpc"

  vpc_cidr = local.vpc_cidr
  vpc_tags = var.vpc_tags
  # igw_tags             = var.igw_tags
  # eip_tags             = var.eip_tags
  # natGateway1_tags     = var.natGateway1_tags
  # publicSubnet1_tags   = var.publicSubnet1_tags
  # natGatewayEIP2_tags  = var.natGatewayEIP2_tags
  # natGateway2_tags     = var.natGateway2_tags
  # publicSubnet2_tags   = var.publicSubnet2_tags
  privateSubnet1_tags = var.privateSubnet1_tags
  privateSubnet2_tags = var.privateSubnet2_tags
  # publicRT_tags        = var.publicRT_tags
  # privateRT_tags       = var.privateRT_tags
  availability_zones = local.availability_zones
  # public_subnet_cidrs  = local.public_subnet_cidrs
  private_subnet_cidrs = local.private_subnet_cidrs
}

module "ecrRepo" {
  source = "./modules/ecr"

  ecr_repo_name = local.ecr_repo_name
}

# module "ecsCluster" {
#   source = "./modules/ecs"

#   demo_app_cluster_name = local.demo_app_cluster_name
#   availability_zones    = local.availability_zones

#   demo_app_task_famliy         = local.demo_app_task_famliy
#   ecr_repo_url                 = module.ecrRepo.repository_url
#   container_port               = local.container_port
#   demo_app_task_name           = local.demo_app_task_name
#   ecs_task_execution_role_name = local.ecs_task_execution_role_name

#   # application_load_balancer_name = local.application_load_balancer_name
#   # target_group_name              = local.target_group_name
#   demo_app_service_name          = local.demo_app_service_name
# }
