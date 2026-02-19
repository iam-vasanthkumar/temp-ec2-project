provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "temp_server" {
  ami           = "ami-019715e0d74f695be"
  instance_type = "t3.micro"
  key_name      = "jenkins-pro"

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl start nginx
              EOF

  tags = {
    Name = "Temp-Jenkins-Server"
  }
} 