variable "userpool_name" {
  type = string
}

variable "appclient_name" {
  type = string
}

variable "domain_prefix" {
  type = string
}

variable "api_endpoint" {
type = list(string)
}

variable "default_user_username" {
  type = string
}

variable "default_user_email" {
  type = string
}

variable "default_user_password" {
  type = string
}