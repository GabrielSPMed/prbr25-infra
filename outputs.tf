output "bronze_bucket" {
  value = module.bronze_bucket.bucket_name
}

output "silver_bucket" {
  value = module.silver_bucket.bucket_name
}

output "gold_bucket" {
  value = module.gold_bucket.bucket_name
}

output "glue_database_name" {
  value = aws_glue_catalog_database.prbr25.name
}