module "vote_service_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "user-service-sg"
  description = "Security group for user-service with custom ports"
  vpc_id      = "vpc-14e7337f"

  ingress_cidr_blocks      = ["10.10.0.0/16"]
  ingress_rules            = ["https-443-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 8080
      to_port     = 8090
      protocol    = "tcp"
      description = "User-service ports"
      cidr_blocks = "10.10.0.0/16"
    },
    {
      rule        = "postgresql-tcp"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}
