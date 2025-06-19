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

    lambda_function_arn = module.lambda.lambda-function-arn
}