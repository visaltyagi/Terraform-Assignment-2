provider "aws" {
     region="us-east-2"
     access_key="AKIAQRH4ND34WNGRNWOP"
     secret_key="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"
}
resource "aws_instance" "assignment2" {
  ami               = "ami-0b4750268a88e78e0"
  instance_type     = "t2.micro"
  tags = {
    Name = "assignment2"
  }
}
resource "aws_eip" "eip" {
  domain = "vpc"
}
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.assignment2.id
  allocation_id = aws_eip.eip.id
}
