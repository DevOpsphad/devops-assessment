terraform {
  backend "local" {}
}


# we use this in our organization to secure state file
/*
terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
*/