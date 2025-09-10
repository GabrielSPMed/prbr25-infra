terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.56"
    }
  }
  # Leave values empty; we pass them via -backend-config on tofu init
  backend "s3" {}
}

provider "aws" {
  region  = var.region
  profile = var.profile
}
