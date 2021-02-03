data "aws_ami" "temp_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] 
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "temp-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-northeast-2a", "ap-northeast-2b", "ap-northeast-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
}

module "temp_ec2server" {
  source              = "../modules/ec2"
  ec2_instance_type   = "t2.micro"
  ec2_instance_name   = "temp-server-seoul"
  number_of_instances = 2
  ec2_ami_id          = data.aws_ami.temp_ami.id
}

output "instance_id" {
  value = module.temp_ec2server.ec2_instance_id
}