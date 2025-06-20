output "my-role-arn" {
    value = module.lambda.role-arn
}

output "my-lambda-function-arn" {
    value = module.lambda.lambda-function-arn
}

output "my-lambda-name" {
    value = module.lambda.lambda-name
}

output "api_endpoint" {
  value = module.apigateway.my_api_endpoint
}

output "api_id" {
  value = module.apigateway.my_api_id
}

output "userpool_id" {
  value = module.cognito.userpool_id
}

output "userpool_arn" {
  value = module.cognito.userpool_arn
}

output "client_id" {
  value = module.cognito.client_id
}