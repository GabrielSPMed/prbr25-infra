variable "project" {
  description = "Project name"
  type        = string
}

variable "env" {
  description = "Environment name (e.g. dev, prod)"
  type        = string
}

variable "unique_suffix" {
  description = "Random suffix to ensure unique bucket names"
  type        = string
}

variable "name" {
  description = "Logical name of the bucket (e.g. bronze, silver, gold)"
  type        = string
}
