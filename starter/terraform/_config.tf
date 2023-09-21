terraform {
   backend "s3" {
     bucket = "ami-terr-1"
     key    = "terraform/terraform.tfstate"
     region = "us-east-1"
   }
 }

 provider "aws" {
   region = "us-east-2"

   default_tags {
     tags = local.tags
   }
 }
