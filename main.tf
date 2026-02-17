provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "temp_server" {
  ami           = "ami-0317b0f0a0144b137"
  instance_type = "t2.micro"
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