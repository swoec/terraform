data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "manage-instance" {
      ami = data.aws_ami.ubuntu.id
      instance_type = "t2.micro"
      subnet_id = module.vpc.public_subnets[0]
      key_name = aws_key_pair.mykeypair.key_name
      vpc_security_group_ids =  [aws_security_group.allow-ssh.id]

      user_data =data.template_cloudinit_config.cloudinit_manage.rendered

      tags = {
           name = "manage-node"
      }

}

resource "aws_ebs_volume" "manage-data" {
    availability_zone = "${var.AWS_REGION}a"
    size = 20
    type = "gp2"
    tags = {
       name = "manage-data"
    }
}

resource "aws_volume_attachment" "manage-data-attachment" {
    device_name = var.INSTANCE_DEVICE_NAME
    volume_id = aws_ebs_volume.manage-data.id
    instance_id = aws_instance.manage-instance.id
}
