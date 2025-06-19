output "my_api_endpoint" {
  value = aws_apigatewayv2_api.http_api.api_endpoint
}

output "my_api_id" {
  value = aws_apigatewayv2_api.http_api.id
}