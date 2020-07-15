provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "ap-southeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-560c0935"
  instance_type = "t2.micro"
}

