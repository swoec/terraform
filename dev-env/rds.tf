resource "aws_db_subnet_group" "mysql-subnet" {
  name        = "mysql-subnet"
  description = "RDS subnet group"
  subnet_ids  = [module.vpc.private_subnets[0], module.vpc.private_subnets[1],module.vpc.private_subnets[2]]
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name      = aws_db_subnet_group.mysql-subnet.name

  vpc_security_group_ids    = [aws_security_group.allow-mysql.id]
  backup_retention_period   = 30                                          # how long you’re going to keep your backups
  availability_zone         = "${var.AWS_REGION}a" # prefered AZ
  final_snapshot_identifier = "mysql-final-snapshot"                    # final snapshot when executing terraform destroy
  tags = {
    Name = "mysql-instance"
  }
}
