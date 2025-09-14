resource "aws_glue_catalog_table" "this" {
  name          = var.table_name
  database_name = var.database_name
  table_type    = "EXTERNAL_TABLE"

  parameters = {
    EXTERNAL      = "TRUE"
    ICEBERG_TABLE = "true"
  }

  storage_descriptor {
    location      = var.s3_path
    input_format  = "org.apache.iceberg.mr.hive.HiveIcebergInputFormat"
    output_format = "org.apache.iceberg.mr.hive.HiveIcebergOutputFormat"
    ser_de_info {
      name                  = var.table_name
      serialization_library = "org.apache.iceberg.mr.hive.HiveIcebergSerDe"
    }
  }
}
