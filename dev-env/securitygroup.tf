resource "aws_security_group" "allow-ssh" {
  vpc_id      = module.vpc.vpc_id
  name        = "allow-ssh"
  description = "security group that allows ssh and all egress traffic"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["115.188.123.17/32"]
  }

  tags = {
    Name = "allow-ssh"
  }
}


resource "aws_security_group" "allow-mysql" {
  vpc_id      = module.vpc.vpc_id
  name        = "allow-mysql"
  description = "security group that allows mysql and all egress traffic"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    self = true
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    self = true
  }

  tags = {
    Name = "allow-mysql"
  }
}


resource "aws_security_group" "allow-redis" {
  vpc_id      = module.vpc.vpc_id
  name        = "allow-redis"
  description = "security group that allows redis and all egress traffic"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    self = true
  }

  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    self = true
  }

  tags = {
    Name = "allow-redis"
  }
}
