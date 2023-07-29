output "instance_id" {
  value = aws_instance.http_server.id
}

output "public_ip" {
  value = aws_instance.http_server.public_ip
}

output "private_ip" {
  value = aws_instance.http_server.private_ip
}

output "instance_type" {
  value = aws_instance.http_server.instance_type
}

output "availability_zone" {
  value = aws_instance.http_server.availability_zone
}

output "security_group_id" {
  value = aws_security_group.http_server_sg.id
}

output "security_group_name" {
  value = aws_security_group.http_server_sg.name
}

output "security_group_ingress_rules" {
  value = aws_security_group.http_server_sg.ingress
}

output "vpc_id" {
  value = aws_security_group.http_server_sg.vpc_id
}

output "subnet_id" {
  value = aws_instance.http_server.subnet_id
}

output "ami_id" {
  value = aws_instance.http_server.ami
}

output "key_name" {
  value = aws_instance.http_server.key_name
}
