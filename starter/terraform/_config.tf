terraform {
   backend "s3" {
     bucket = "amiterraform-1"
     key    = "terraform/terraform.tfstate"
     region = "us-east-1"
   }
 }

 provider "aws" {
   region = "us-east-1"

   default_tags {
     tags = local.tags
   }
 }
