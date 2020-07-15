provider "aws" {
  access_key = "AKIAV3JEVBDCO7NGD6US"
  secret_key = "5gg1gMkAxTqBzir9qn+TgIMjObVTqh6ttucPPQfy"
  region     = "ap-southeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-560c0935"
  instance_type = "t2.micro"
}

