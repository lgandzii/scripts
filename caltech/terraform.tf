provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASTS5MMCAGXFT56FG"
  secret_key = "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"
}
resource "aws_instance" " terra1" {
 ami    = "ami-00b8917ae86a424c9"
 instance_type = "t2.micro"
 tags = {
  Name = "Terraform_test"
 }
}
