###     Metadata

variable "app_code" {
  type        = string
  description = "AppCode for the application, used for tagging and identification purposes"
}

variable "security_rules" {
  type = map(any)
}

variable "default_routes" {
  type = map(any)
}

variable "metadata_db_host_fqdn" {
  type        = string
  description = "Fully qualified domain name of the metadata SQL Server database"
}

variable "metadata_db_port" {
  type        = number
  description = "SQL Server port where the Metadata database server is running"
  default     = 1433
}

variable "metadata_db_username" {
  type        = string
  description = "Username to connect to the Metadata SQL Server database"
}

variable "metadata_db_password" {
  type        = string
  description = "Password to connect to the Metadata SQL Server database"
}