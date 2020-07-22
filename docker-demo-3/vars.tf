variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "ap-southeast-2"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "ECS_AMIS" {
  type = map(string)
  default = {
    ap-southeast-2 = "ami-00e7bf63"
    us-east-1 = "ami-1924770e"
    us-west-2 = "ami-56ed4936"
    eu-west-1 = "ami-c8337dbb"
  }
}

# Full List: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html

variable "AMIS" {
  type = map(string)
  default = {
    ap-southeast-2 = "ami-abc3f0c8" #"ami-0e4bc04bd401729d6" #"ami-abc3f0c8"
    #"ami-abc3f0c8""ami-0012143f102b5d9d0" #"ami-0012143f102b5d9d0" #"ami-000c2343cf03d7fd7"  #"ami-0e4bc04bd401729d6"
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}

variable "JENKINS_VERSION" {
  default = "2.235.2" # 2.190.3 "2.204.1" 2.235.2 2.204.3
}
