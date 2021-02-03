output "ec2_instance_id" {
  value       = aws_instance.ec2server.id
  description = "The AWS ID of the EC2 instance"
}   
