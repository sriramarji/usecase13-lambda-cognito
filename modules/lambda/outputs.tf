output "lambda-function-arn"" {
    value = aws_iam_role.lambda_execution_role.arn
}

output "lambda-name" {
    value = aws_lambda_function.test.function_name
}

output "role-arn" {
    value = aws_iam_role.lambda_execution_role.arn
}