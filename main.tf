provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "terra-instance" {
  ami = "ami-00ca570c1b6d79f36"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_demo"
  }
}
resource "aws_s3_bucket" "terra-bucket" {
    bucket = "my-terraform-buck-devopsprem"
  
}
