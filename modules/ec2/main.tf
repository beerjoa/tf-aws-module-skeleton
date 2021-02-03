terraform {
  required_version = ">= 0.14.5"
}

resource "aws_instance" "ec2server" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  number_of_instances = var.number_of_instances
  
  tags = {
    Name = var.ec2_instance_name
  }
}
