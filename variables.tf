variable "name" {
  description = "nombre al recurso"
  type        = string
  default     = "juan"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "vpc_id" {
    type = string
    default = "vpc-0fde2e0a149541970"
}

variable "subnet_id" {
    type = string
    default = "subnet-04f72fd23f513d4e0"
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