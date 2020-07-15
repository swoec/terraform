variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "ap-southeast-2"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-southeast-2 = "ami-560c0935"
    us-west-2 = "ami-560c0935"
    eu-west-1 = "ami-560c0935"
  }
}

