# this file initalizes AWS as a cloud provider.
provider "aws" {
  region = "ap-southeast-1"
#   set your AWS credentials as local environment variables and replace them here. 
#   access_key = var.AWS_ACCESS_KEY_ID  
#   secret_key = var.AWS_SECRET_ACCESS_KEY

}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}