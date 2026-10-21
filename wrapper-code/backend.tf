terraform {
  backend "s3" {
    bucket = "buildpiper-terraform-test"
    key    = "env/dev/network-skeleton/terraform.tfstate"
    dynamodb_table = "terraform-test"
    region = "us-east-1"
  }
}
