module "bronze_bucket" {
  source        = "./modules/s3_bucket"
  project       = var.project
  env           = var.env
  unique_suffix = var.unique_suffix
  name          = "bronze"
}

module "silver_bucket" {
  source        = "./modules/s3_bucket"
  project       = var.project
  env           = var.env
  unique_suffix = var.unique_suffix
  name          = "silver"
}

module "gold_bucket" {
  source        = "./modules/s3_bucket"
  project       = var.project
  env           = var.env
  unique_suffix = var.unique_suffix
  name          = "gold"
}
