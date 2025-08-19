terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-2" # change to your region
}
resource "aws-instance" "myec2-test" {
  ami = "ami-0b016c703b95ecbe4"
  instance_type = "t3.micro"
}
