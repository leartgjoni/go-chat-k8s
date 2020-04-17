provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  vpc = true
  instance = aws_instance.example.id
}