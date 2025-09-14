variable "database_name" {
  type        = string
  description = "Glue database name"
}

variable "table_name" {
  type        = string
  description = "Glue table name (bronze, silver, gold)"
}

variable "s3_path" {
  type        = string
  description = "S3 path for the table (bucket URL)"
}
