variable "name"          { type = string }
variable "project"       { type = string }
variable "env"           { type = string }
variable "force_destroy" {
  type    = bool
  default = false
}
variable "tags" {
  type    = map(string)
  default = {}
}
