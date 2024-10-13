terraform {
    backend "s3" {
        bucket = ""
        region = "us-east-1"
        key = "sravani/terraform.tfstate"  # folder/filename
        dynamodb_table = "terraform_lock"
    }
}