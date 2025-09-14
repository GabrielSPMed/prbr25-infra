variable "project" {
  default     = "prbr25"
  description = "Project name"
}

variable "env" {
  default     = "dev"
  description = "Environment (dev, prod, etc.)"
}

variable "unique_suffix" {
  default     = "ploiw"  # same suffix you used in bootstrap
  description = "Unique suffix for bucket names"
}
