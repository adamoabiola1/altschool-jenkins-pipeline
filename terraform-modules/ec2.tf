resource "aws_instance" "myapp-server" {
  ami                         = "ami-0557a15b87f6559cf"
  instance_type               = var.instance_type
  key_name                    = "Mini-key"
  subnet_id                   = aws_subnet.kube-subnet-1.id
  vpc_security_group_ids      = [aws_security_group.kube-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("jenkins-server-script.sh")
  tags = {
    Name = "myapp"
  }
}

resource "aws_instance" "socks-server" {
  ami                         = "ami-0557a15b87f6559cf"
  instance_type               = var.instance_type
  key_name                    = "Mini-key"
  subnet_id                   = aws_subnet.kube-subnet-1.id
  vpc_security_group_ids      = [aws_security_group.kube-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  count                       = 2
  
  tags = {
    Name = "socks-shop"
  }
}