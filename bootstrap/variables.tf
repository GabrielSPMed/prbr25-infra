variable "region" {
  type    = string
  default = "sa-east-1"
}
variable "profile" {
  type    = string
  default = null
  # e.g. "default" or your AWS named profile
}
variable "project" {
  type    = string
  default = "prbr25"
}
variable "env" {
  type    = string
  default = "dev"
}

# optional suffix to guarantee global uniqueness of bucket names
variable "unique_suffix" {
  type    = string
  default = "ploiw"
}

locals {
  suffix           = var.unique_suffix != "" ? "-${var.unique_suffix}" : ""
  state_bucket     = "${var.project}-${var.env}${local.suffix}-tfstate"
  lock_table       = "${var.project}-${var.env}-tf-locks"
  common_tags = {
    Project     = var.project
    Environment = var.env
    ManagedBy   = "OpenTofu"
  }
}
