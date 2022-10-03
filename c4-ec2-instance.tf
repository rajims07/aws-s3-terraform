

# Create EC2 Instance - ubuntu-20.4

 resource "aws_instance" "my-ec2-vm" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = var.instance_type
  key_name      = "terraform-key"
  user_data = <<-EOF
    #!/bin/bash
    sudo snap install docker
    EOF
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "ubuntu-docker"
  }
}
