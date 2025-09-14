terraform {
  backend "s3" {
    bucket         = "prbr25-dev-ploiw-tfstate"   # replace with the actual bucket name created in bootstrap
    key            = "infra/root.tfstate"
    region         = "sa-east-1"                          # same region you used in bootstrap
    dynamodb_table = "prbr25-dev-tf-locks"                # from bootstrap output
    encrypt        = true
  }
}

provider "aws" {
  region = "sa-east-1"
  s3_use_path_style = true
}
