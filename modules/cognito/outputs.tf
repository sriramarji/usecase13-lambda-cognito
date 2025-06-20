output "userpool_id" {
  value = aws_cognito_user_pool.test.id
}

output "userpool_arn" {
  value = aws_cognito_user_pool.test.arn
}

output "client_id" {
  value = aws_cognito_user_pool_client.client.id
}