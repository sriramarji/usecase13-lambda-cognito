output "my-role-arn" {
    value = module.lambda.role-arn
}

output "my-lambda-function-arn" {
    value = module.lambda.lambda-function-arn
}

output "my-lambda-name" {
    value = module.lambda.lambda-name
}