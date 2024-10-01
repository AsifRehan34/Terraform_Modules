provider "aws" {
  region = "us-east-1"
}

module "ec2_s3" {
  source = "../aws-ec2-s3"  # Path to the module

  # Parameters for the EC2 instance
  region             = "us-east-1"
  ami                    = "ami-005fc0f236362e99f"  # Amazon Linux 2 AMI (update for your region)
  instance_type          = "t2.micro"               # Free tier instance type
  key_name               = "Asif-Rehan-Server-Keypair" # Use your existing key pair name
  security_group_ids = ["sg-0cfd24dc280579170"]           # Replace with your existing security group

  instance_name      = "My-Terraform-EC2"

  # Parameters for the S3 bucket
  s3_bucket_name = "my-bucket-project22222"  # Ensure the bucket name is globally unique
  s3_bucket_tag  = "Terraform-S3-Bucket"
}

# Outputs
output "ec2_instance_id" {
  value = module.ec2_s3.ec2_instance_id
}

output "s3_bucket_name" {
  value = module.ec2_s3.s3_bucket_name
}
