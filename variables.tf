variable "my-function_name" {
    description = ""
    type = string
    default = "demo-lambda"
}

variable "my-handler" {
    description = ""
    type = string
    default = "lambda_function.lambda_handler"
}

variable "my-runtime" {
    description = ""
    type = string
    default = "python3.9"
}

variable "my-environment_variables" {
    description = ""
    type    = map(string)
    default = {}
}

variable "my-lambda_role_name" {
    description = ""
    type = string
    default = "lambda-role"
}

variable "my-lambda_zip_path" {
    description = ""
    type = string
    default = "./lambda/my-lambdafunction.zip"
}

variable "user_pool_name" {
  default = "demo_user_pool"
}

variable "app_client_name" {
  default = "demo_app_client"
}

variable "domain_prefix" {
  default = "demo-example"
}