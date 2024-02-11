provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASTS5MMCAGXFT56FG"
  secret_key = ""
}
resource "aws_instance" " terra1" {
 ami    = "ami-00b8917ae86a424c9"
 instance_type = "t2.micro"
 tags = {
  Name = "Terraform_test"
 }
}

#Assign elastic IP

resource "aws_eip" "elasticip" {
  domain   = "vpc"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.terra1.id
  allocation_id = aws_eip.elasticip.id
}

#Output 

output "eip"{
 value = aws_eip.elasticip.public_ip
}



