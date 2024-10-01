provider "aws" {
  region = var.region
}

# Create EC2 instance
resource "aws_instance" "ec2_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = var.instance_name
  }
}

# Create S3 bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bucket_name
  acl    = var.s3_bucket_acl

  tags = {
    Name = var.s3_bucket_tag
  }
}
