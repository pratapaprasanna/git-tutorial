module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "spot-tf-instance"

  create_spot_instance = true

  ami                    = "ami-0f8ca728008ff5af4"
  instance_type          = "t2.micro"
  key_name               = "gypsycrit"
  monitoring             = true
  vpc_security_group_ids = ["sg-07bd0992584e45dee"]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
