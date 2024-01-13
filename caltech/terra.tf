provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASTS5MMCAPNGSFQXF"
  secret_key = ""
}

resource "aws_instance" "terra1" {
 ami    = "ami-0005e0cfe09cc9050"
 instance_type = var.instancetype
 count = 1
 tags = local.common_tags
}

