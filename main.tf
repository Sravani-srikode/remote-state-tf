provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2" {
    ami = var.ami_value
    instance_type = var.instance_type_value
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "sravani-s3-demo-abc"
}

resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}