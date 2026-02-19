provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "temp_server" {
  ami           = "ami-019715e0d74f695be"
  instance_type = "t3.micro"
  key_name      = "jenkins-pro"

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install java-17-amazon-corretto -y
              EOF
            

  tags = {
    Name = "Temp-Jenkins-Server"
  }
  
} 

output "ec2_public_ip" {
  value = aws_instance.temp_server.public_ip
}
