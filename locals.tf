locals {
  vpc_cidr           = "10.0.0.0/16"
  availability_zones = ["us-east-1a", "us-east-1b"]
  # public_subnet_cidrs  = ["10.0.0.0/24", "10.0.1.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]

  ecr_repo_name = "demo-app-ecr-repo"

  # demo_app_cluster_name        = "demo-app-cluster"
  # demo_app_task_famliy         = "demo-app-task"
  # container_port               = 3000
  # demo_app_task_name           = "demo-app-task"
  # ecs_task_execution_role_name = "demo-app-task-execution-role"

  # # application_load_balancer_name = "kk-demo-app-alb"
  # # target_group_name              = "kk-demo-alb-tg"

  # demo_app_service_name = "kk-demo-app-service"

}

