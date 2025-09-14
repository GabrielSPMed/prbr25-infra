output "bronze_bucket" {
  value = module.bronze_bucket.bucket_name
}

output "silver_bucket" {
  value = module.silver_bucket.bucket_name
}

output "gold_bucket" {
  value = module.gold_bucket.bucket_name
}
