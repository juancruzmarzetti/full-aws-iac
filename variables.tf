variable "name" {
  description = "nombre al recurso"
  type        = string
  default     = "juan"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "keyname" {
    type = string
    default = "juankeys"
}

variable "db_username" {
    type = string
    default = "admin"
}
variable "db_password" {
    type = string
    default = "argentina123"
}
variable "database_port" {
    type = number
    default = 3306
}