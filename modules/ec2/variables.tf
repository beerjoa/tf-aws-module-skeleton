variable "ec2_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "This is the EC2 instance type"
}

variable "ec2_instance_name" {
  type        = string
  description = "The name of instance"
}

variable "number_of_instances" {
  type        = number
  description = "The number of instance"
}

variable "ec2_ami_id" {
  type        = string
  description = "The AMI ID"
}

