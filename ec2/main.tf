resource "aws_instance" "example" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }

  vpc_security_group_ids = [aws_security_group.instance.id]

  tags = {
    Name = var.instance_name
  }
}

resource "aws_eip" "example" {
  instance = aws_instance.example.id
  vpc      = true

  tags = {
    Name = "terraform-eip"
  }
}

resource "aws_security_group" "instance" {
  name_prefix = "terraform-ec2-sg-"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-ec2-sg"
  }
}

resource "aws_security_group_rule" "http_ingress" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.instance.id
}

resource "aws_security_group_rule" "https_ingress" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.instance.id
}
