provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "http_server_sg" {
    name = "http_server_sg"
    vpc_id = "vpc-056b38d74e315a0da"
    
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
 }
 
}


resource "aws_instance" "http_server" {
ami = "ami-0f5ee92e2d63afc18"
key_name = "personal"
instance_type = "t2.micro"
vpc_security_group_ids =[aws_security_group.http_server_sg.id]
subnet_id = "subnet-025eb77e7b695feb3"
}