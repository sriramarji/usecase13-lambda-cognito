module "lambda" {
    source = "./modules/lambda"

    function_name = var.my-function_name
    handler =   var.my-handler
    runtime = var.my-runtime
    environment_variables = var.my-environment_variables
    lambda_role_name = var.my-lambda_role_name
    lambda_zip_path = var.my-lambda_zip_path
}

module "apigateway" {
    source = "./modules/apigateway"

    #lambda_function_arn = module.lambda.lambda-function-arn
    lambda_function_name = module.lambda.lambda-name
    invoke_arn = module.lambda.invoke-arn-op
}

module "cognito" {
  source           = "./modules/cognito"
  userpool_name   = var.user_pool_name
  appclient_name  = var.app_client_name
  domain_prefix    = var.domain_prefix
  api_endpoint    = [module.apigateway.my_api_endpoint]
  default_user_username = "admin"
  default_user_email    = "bhaskarsaisri.arji@hcltech.com"
  default_user_password = "Admin@123"

}