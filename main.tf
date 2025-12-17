provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "terra-instance" {
  ami = "ami-0d00237da09c0e5b8"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_demo"
  }
}
resource "aws_s3_bucket" "terra-bucket" {
    bucket = "my-terraform-buck"
  
}
