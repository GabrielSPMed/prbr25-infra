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

resource "aws_glue_catalog_database" "prbr25" {
  name        = "${var.project}_${var.env}"
  description = "Glue database for ${var.project} Iceberg tables"
}

# Glue tables for each S3 bucket
module "glue_bronze" {
  source        = "./modules/glue_table"
  database_name = aws_glue_catalog_database.prbr25.name
  table_name    = "bronze"
  s3_path       = module.bronze_bucket.bucket_name
}

module "glue_silver" {
  source        = "./modules/glue_table"
  database_name = aws_glue_catalog_database.prbr25.name
  table_name    = "silver"
  s3_path       = module.silver_bucket.bucket_name
}

module "glue_gold" {
  source        = "./modules/glue_table"
  database_name = aws_glue_catalog_database.prbr25.name
  table_name    = "gold"
  s3_path       = module.gold_bucket.bucket_name
}