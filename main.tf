module "bronze_bucket" {
  source        = "./modules/s3_bucket"
  name          = local.bronze_name
  project       = var.project
  env           = var.env
  force_destroy = false
  tags          = local.common_tags
}

module "silver_bucket" {
  source        = "./modules/s3_bucket"
  name          = local.silver_name
  project       = var.project
  env           = var.env
  force_destroy = false
  tags          = local.common_tags
}

module "gold_bucket" {
  source        = "./modules/s3_bucket"
  name          = local.gold_name
  project       = var.project
  env           = var.env
  force_destroy = false
  tags          = local.common_tags
}
