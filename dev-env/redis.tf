resource "aws_elasticache_subnet_group" "redis-subnet" {
  name        = "redis-subnet"
  description = "Redis subnet group"
  subnet_ids  = [module.vpc.private_subnets[0], module.vpc.private_subnets[1],module.vpc.private_subnets[2]]
}

resource "aws_elasticache_cluster" "example" {
  cluster_id           = "cluster-example"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.redis-subnet.name
  security_group_ids = [aws_security_group.allow-redis.id]

  tags = {
      name = "redis"
  }
}
