# terraform

* These files are part of Terraform </br>
  This is version upgrade and changed by Alex Wang to make the script to fully run,just adding .tfvars and mykey files </br>
  all scripts are running locally one by one </br>
  some scripts are changed, so maybe there are a few differences from the directory </br>

# Compatibility

* This is the >=terraform-0.12 branch. For compatibility with older versions, use the terraform-0.11 branch.

# Demo overview
Demo Directory | Description
------------ | -------------
first-steps | First steps
demo-1 | First steps: Launching an EC2 instance
demo-2 | Using provisioner
demo-2b | Using provisioner on a Windows instance
demo-3 | Executing script locally
demo-4 | Outputting
demo-5 | Data Source
demo-6 | Modules
demo-7 | AWS VPC
demo-8 | EC2 instance within VPC with securitygroup
demo-9 | EC2 instance with EBS volumes
demo-10 | Userdata and cloudinit
demo-11 | Route53 (DNS)
demo-12 | RDS
demo-13 | IAM
demo-14 | IAM Roles with S3 bucket
demo-15 | Autoscaling
demo-16 | Autoscaling with ELB (Elastic Load Balancer)
demo-17 | Elastic Beanstalk PHP 7 stack with RDS
demo-18 | Interpolations, VPC module
demo-18b | Project structure, best practices
packer-demo | Build AMIs with Packer
jenkins-packer-demo | Demo with jenkins and Packer
docker-demo-1 | Using ECR - The EC2 Container Registry
docker-demo-2 | Using ECS - The EC2 Container Service
docker-demo-3 | Using ECR/ECS with Jenkins in a complete workflow
module-demo | Using ECS + ALB in 4 modules to show how developing terraform modules work
