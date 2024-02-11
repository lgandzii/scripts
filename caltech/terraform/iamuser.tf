resource "aws_iam_user" "iamuser" {
  name = "akshatg"
}


output "iamuser" {
  value = aws_iam_user.iamuser.name
}

